/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _BYTEBUFFER_H
#define _BYTEBUFFER_H

#include "Common.h"
#include "Debugging/Errors.h"
#include "Log.h"
#include "Utilities/ByteConverter.h"

template<uint8 BITS>
struct WriteAsUnaligned
{
    explicit WriteAsUnaligned(uint32 value) : m_value(value) { ASSERT(BITS <= 32); }
    uint32 m_value;
};

template<uint8 BITS>
struct ReadAsUnaligned
{
    explicit ReadAsUnaligned(uint32& value) : m_value(&value) { ASSERT(BITS <= 32); }
    uint32* m_value;
};

struct WriteBuffer
{
    WriteBuffer(uint8 const* buf, uint32 size) : m_buf(buf), m_size(size) { }
    WriteBuffer(char const* buf, uint32 size) : m_buf((uint8 const*)buf), m_size(size) { }
    uint8 const* m_buf;
    uint32 m_size;
};

class ByteBufferException
{
    public:
        ByteBufferException(size_t pos, size_t size, size_t valueSize)
            : Pos(pos), Size(size), ValueSize(valueSize)
        {
        }

    protected:
        size_t Pos;
        size_t Size;
        size_t ValueSize;
};

class ByteBufferPositionException : public ByteBufferException
{
    public:
        ByteBufferPositionException(bool add, size_t pos, size_t size, size_t valueSize)
        : ByteBufferException(pos, size, valueSize), _add(add)
        {
            PrintError();
        }

    protected:
        void PrintError() const
        {
            ACE_Stack_Trace trace;

            TC_LOG_ERROR("network.opcode", "Attempted to %s value with size: " SIZEFMTD " in ByteBuffer (pos: " SIZEFMTD " size: " SIZEFMTD ")\n[Stack trace: %s]",
                (_add ? "put" : "get"), ValueSize, Pos, Size, trace.c_str());
        }

    private:
        bool _add;
};

class ByteBufferSourceException : public ByteBufferException
{
    public:
        ByteBufferSourceException(size_t pos, size_t size, size_t valueSize)
        : ByteBufferException(pos, size, valueSize)
        {
            PrintError();
        }

    protected:
        void PrintError() const
        {
            ACE_Stack_Trace trace;

            TC_LOG_ERROR("network.opcode", "Attempted to put a %s in ByteBuffer (pos: " SIZEFMTD " size: " SIZEFMTD ")\n[Stack trace: %s]",
                (ValueSize > 0 ? "NULL-pointer" : "zero-sized value"), Pos, Size, trace.c_str());
        }
};

class ByteBuffer
{
    public:
        const static size_t DEFAULT_SIZE = 64;

        // constructor
        ByteBuffer() : _rpos(0), _wpos(0), _bitpos(8), _curbitval(0)
        {
            _storage.reserve(DEFAULT_SIZE);
        }

        ByteBuffer(size_t reserve) : _rpos(0), _wpos(0), _bitpos(8), _curbitval(0)
        {
            _storage.reserve(reserve);
        }

        // copy constructor
        ByteBuffer(const ByteBuffer &buf) : _rpos(buf._rpos), _wpos(buf._wpos),
            _bitpos(buf._bitpos), _curbitval(buf._curbitval), _storage(buf._storage)
        {
        }

        void ResetBits()
        {
            _bitpos = 8;
        }

        void clear()
        {
            _storage.clear();
            _rpos = _wpos = 0;
        }

        template <typename T> void append(T value)
        {
            FlushBits();
            EndianConvert(value);
            append((uint8 *)&value, sizeof(value));
        }

        void FlushBits()
        {
            if (_bitpos == 8)
                return;

            append((uint8 *)&_curbitval, sizeof(uint8));
            _curbitval = 0;
            _bitpos = 8;
        }

        bool WriteBit(uint32 bit)
        {
            --_bitpos;
            if (bit)
                _curbitval |= (1 << (_bitpos));

            if (_bitpos == 0)
            {
                _bitpos = 8;
                append((uint8 *)&_curbitval, sizeof(_curbitval));
                _curbitval = 0;
            }

            return (bit != 0);
        }

        bool ReadBit()
        {
            ++_bitpos;
            if (_bitpos > 7)
            {
                _bitpos = 0;
                _curbitval = read<uint8>();
            }

            return ((_curbitval >> (7-_bitpos)) & 1) != 0;
        }

        template <typename T> void WriteBits(T value, size_t bits)
        {
            for (int32 i = bits-1; i >= 0; --i)
                WriteBit((value >> i) & 1);
        }

        uint32 ReadBits(size_t bits)
        {
            uint32 value = 0;
            for (int32 i = bits-1; i >= 0; --i)
                if (ReadBit())
                    value |= (1 << (i));

            return value;
        }

        // Reads a byte (if needed) in-place
        void ReadByteSeq(uint8& b)
        {
            if (b != 0)
                b ^= read<uint8>();
        }

        void WriteByteSeq(uint8 b)
        {
            if (b != 0)
                append<uint8>(b ^ 1);
        }

        void WriteGuidMask(uint64 guid, uint8* maskOrder, uint8 maskCount, uint8 maskPos = 0)
        {
            uint8* guidByte = ((uint8*)&guid);

            for (uint8 i = 0; i < maskCount; i++)
                WriteBit(guidByte[maskOrder[i + maskPos]]);
        }

        void WriteGuidBytes(uint64 guid, uint8* byteOrder, uint8 byteCount, uint8 bytePos)
        {
            uint8* guidByte = ((uint8*)&guid);

            for (uint8 i = 0; i < byteCount; i++)
                if (guidByte[byteOrder[i + bytePos]])
                    (*this) << uint8(guidByte[byteOrder[i + bytePos]] ^ 1);
        }

        template <typename T> void put(size_t pos, T value)
        {
            EndianConvert(value);
            put(pos, (uint8 *)&value, sizeof(value));
        }

        /**
          * @name   PutBits
          * @brief  Places specified amount of bits of value at specified position in packet.
          *         To ensure all bits are correctly written, only call this method after
          *         bit flush has been performed

          * @param  pos Position to place the value at, in bits. The entire value must fit in the packet
          *             It is advised to obtain the position using bitwpos() function.

          * @param  value Data to write.
          * @param  bitCount Number of bits to store the value on.
        */
        template <typename T> void PutBits(size_t pos, T value, uint32 bitCount)
        {
            if (!bitCount)
                throw ByteBufferSourceException((pos + bitCount) / 8, size(), 0);

            if (pos + bitCount > size() * 8)
                throw ByteBufferPositionException(false, (pos + bitCount) / 8, size(), (bitCount - 1) / 8 + 1);

            for (uint32 i = 0; i < bitCount; ++i)
            {
                size_t wp = (pos + i) / 8;
                size_t bit = (pos + i) % 8;
                if ((value >> (bitCount - i - 1)) & 1)
                    _storage[wp] |= 1 << (7 - bit);
                else
                    _storage[wp] &= ~(1 << (7 - bit));
            }
        }

        template<uint8 BITS>
        ByteBuffer &operator<<(WriteAsUnaligned<BITS> value)
        {
            return WriteUnaligned<BITS>(value.m_value);
        }

        template<uint8 BITS>
        ByteBuffer& WriteUnaligned(uint32 value)
        {
            ASSERT(BITS <= 32);

            uint32 bits = BITS;

            while (bits > 0)
            {
                if (_bitpos == 8)
                {
                    *this << uint8(0);
                    _bitpos = 0;
                }

                uint8 writtenThisCycle = 8 - _bitpos;
                if (writtenThisCycle > bits)
                    writtenThisCycle = uint8(bits);

                bits -= writtenThisCycle;
                _bitpos += writtenThisCycle;

                _storage[_wpos - 1] |= ((value >> bits) & ((1 << writtenThisCycle) - 1)) << (8 - _bitpos);

                // End of the extinction cycle
                // Reapers are back to work
                // Earth is dead.
            }

            return *this;
        }

        ByteBuffer &operator<<(WriteBuffer const& value)
        {
            append(value.m_buf, value.m_size);
            return *this;
        }

        ByteBuffer &operator<<(uint8 value)
        {
            append<uint8>(value);
            return *this;
        }

        ByteBuffer &operator<<(uint16 value)
        {
            append<uint16>(value);
            return *this;
        }

        ByteBuffer &operator<<(uint32 value)
        {
            append<uint32>(value);
            return *this;
        }

        ByteBuffer &operator<<(uint64 value)
        {
            append<uint64>(value);
            return *this;
        }

        // signed as in 2e complement
        ByteBuffer &operator<<(int8 value)
        {
            append<int8>(value);
            return *this;
        }

        ByteBuffer &operator<<(int16 value)
        {
            append<int16>(value);
            return *this;
        }

        ByteBuffer &operator<<(int32 value)
        {
            append<int32>(value);
            return *this;
        }

        ByteBuffer &operator<<(int64 value)
        {
            append<int64>(value);
            return *this;
        }

        // floating points
        ByteBuffer &operator<<(float value)
        {
            append<float>(value);
            return *this;
        }

        ByteBuffer &operator<<(double value)
        {
            append<double>(value);
            return *this;
        }

        ByteBuffer &operator<<(const std::string &value)
        {
            if (size_t len = value.length())
                append((uint8 const*)value.c_str(), len);
            append((uint8)0);
            return *this;
        }

        ByteBuffer &operator<<(const char *str)
        {
            if (size_t len = (str ? strlen(str) : 0))
                append((uint8 const*)str, len);
            append((uint8)0);
            return *this;
        }

        ByteBuffer &operator>>(bool &value)
        {
            value = read<char>() > 0 ? true : false;
            return *this;
        }

        ByteBuffer &operator>>(uint8 &value)
        {
            value = read<uint8>();
            return *this;
        }

        ByteBuffer &operator>>(uint16 &value)
        {
            value = read<uint16>();
            return *this;
        }

        ByteBuffer &operator>>(uint32 &value)
        {
            value = read<uint32>();
            return *this;
        }

        ByteBuffer &operator>>(uint64 &value)
        {
            value = read<uint64>();
            return *this;
        }

        //signed as in 2e complement
        ByteBuffer &operator>>(int8 &value)
        {
            value = read<int8>();
            return *this;
        }

        ByteBuffer &operator>>(int16 &value)
        {
            value = read<int16>();
            return *this;
        }

        ByteBuffer &operator>>(int32 &value)
        {
            value = read<int32>();
            return *this;
        }

        ByteBuffer &operator>>(int64 &value)
        {
            value = read<int64>();
            return *this;
        }

        ByteBuffer &operator>>(float &value)
        {
            value = read<float>();
            return *this;
        }

        ByteBuffer &operator>>(double &value)
        {
            value = read<double>();
            return *this;
        }

        ByteBuffer &operator>>(std::string& value)
        {
            value.clear();
            while (rpos() < size())                         // prevent crash at wrong string format in packet
            {
                char c = read<char>();
                if (c == 0)
                    break;
                value += c;
            }
            return *this;
        }

        uint8& operator[](size_t const pos)
        {
            if (pos >= size())
                throw ByteBufferPositionException(false, pos, 1, size());

            return _storage[pos];
        }

        uint8 const& operator[](size_t const pos) const
        {
            if (pos >= size())
                throw ByteBufferPositionException(false, pos, 1, size());
            return _storage[pos];
        }

        size_t rpos() const { return _rpos; }

        size_t rpos(size_t rpos_)
        {
            _rpos = rpos_;
            return _rpos;
        }

        void rfinish()
        {
            _rpos = wpos();
        }

        size_t wpos() const { return _wpos; }

        size_t wpos(size_t wpos_)
        {
            _wpos = wpos_;
            return _wpos;
        }

        /// Returns position of last written bit
        size_t bitwpos() const { return _wpos * 8 + 8 - _bitpos; }

        size_t bitwpos(size_t newPos)
        {
            _wpos = newPos / 8;
            _bitpos = 8 - (newPos % 8);
            return _wpos * 8 + 8 - _bitpos;
        }

        template<typename T>
        void read_skip() { read_skip(sizeof(T)); }

        void read_skip(size_t skip)
        {
            if (_rpos + skip > size())
                throw ByteBufferPositionException(false, _rpos, skip, size());
            _rpos += skip;
        }

        template <typename T> T read()
        {
            T r = read<T>(_rpos);
            _rpos += sizeof(T);
            return r;
        }

        template <typename T> T read(size_t pos) const
        {
            if (pos + sizeof(T) > size())
                throw ByteBufferPositionException(false, pos, sizeof(T), size());
            T val = *((T const*)&_storage[pos]);
            EndianConvert(val);
            return val;
        }

        void read(uint8 *dest, size_t len)
        {
            if (_rpos  + len > size())
               throw ByteBufferPositionException(false, _rpos, len, size());
            memcpy(dest, &_storage[_rpos], len);
            _rpos += len;
        }

        ByteBuffer& read(std::string& dest, size_t len)
        {
            if (_rpos + len > size())
                throw ByteBufferPositionException(false, _rpos, len, size());

            dest.clear();

            ResetBits();

            if (len)
            {
                dest.reserve(len + 1);
                dest.append((char*)&_storage[_rpos], len);
                _rpos += len;
            }

            return *this;
        }

        void readPackGUID(uint64& guid)
        {
            if (rpos() + 1 > size())
                throw ByteBufferPositionException(false, _rpos, 1, size());

            guid = 0;

            uint8 guidmark = 0;
            (*this) >> guidmark;

            for (int i = 0; i < 8; ++i)
            {
                if (guidmark & (uint8(1) << i))
                {
                    if (rpos() + 1 > size())
                        throw ByteBufferPositionException(false, _rpos, 1, size());

                    uint8 bit;
                    (*this) >> bit;
                    guid |= (uint64(bit) << (i * 8));
                }
            }
        }

        std::string ReadString(uint32 length)
        {
            if (!length)
                return std::string();
            char* buffer = new char[length + 1];
            memset(buffer, 0, length + 1);
            read((uint8*)buffer, length);
            std::string retval = buffer;
            delete[] buffer;
            return retval;
        }

        //! Method for writing strings that have their length sent separately in packet
        //! without null-terminating the string
        void WriteString(std::string const& str)
        {
            if (size_t len = str.length())
                append(str.c_str(), len);
        }

        uint32 ReadPackedTime()
        {
            uint32 packedDate = read<uint32>();
            tm lt;
            memset(&lt, 0, sizeof(lt));

            lt.tm_min = packedDate & 0x3F;
            lt.tm_hour = (packedDate >> 6) & 0x1F;
            //lt.tm_wday = (packedDate >> 11) & 7;
            lt.tm_mday = ((packedDate >> 14) & 0x3F) + 1;
            lt.tm_mon = (packedDate >> 20) & 0xF;
            lt.tm_year = ((packedDate >> 24) & 0x1F) + 100;

            return uint32(mktime(&lt));
        }

        ByteBuffer& ReadPackedTime(uint32& time)
        {
            time = ReadPackedTime();
            return *this;
        }

        uint8 * contents() { return &_storage[0]; }

        const uint8 *contents() const { return &_storage[0]; }

        size_t size() const { return _storage.size(); }
        bool empty() const { return _storage.empty(); }

        void resize(size_t newsize)
        {
            _storage.resize(newsize, 0);
            _rpos = 0;
            _wpos = size();
        }

        void reserve(size_t ressize)
        {
            if (ressize > size())
                _storage.reserve(ressize);
        }

        void append(const char *src, size_t cnt)
        {
            return append((const uint8 *)src, cnt);
        }

        template<class T> void append(const T *src, size_t cnt)
        {
            return append((const uint8 *)src, cnt * sizeof(T));
        }

        void append(const uint8 *src, size_t cnt)
        {
            if (!cnt)
                return;

            if (!src)
                throw ByteBufferSourceException(_wpos, size(), cnt);

            if (size() > 10000000)
                throw ByteBufferSourceException(_wpos, size(), cnt);

            if (_storage.size() < _wpos + cnt)
                _storage.resize(_wpos + cnt);
            
            memcpy(&_storage[_wpos], src, cnt);
            _wpos += cnt;
        }

        void append(const ByteBuffer& buffer)
        {
            if (buffer.wpos())
                append(buffer.contents(), buffer.wpos());
        }

        // can be used in SMSG_MONSTER_MOVE opcode
        void appendPackXYZ(float x, float y, float z)
        {
            uint32 packed = 0;
            packed |= ((int)(x / 0.25f) & 0x7FF);
            packed |= ((int)(y / 0.25f) & 0x7FF) << 11;
            packed |= ((int)(z / 0.25f) & 0x3FF) << 22;
            *this << packed;
        }

        void appendPackGUID(uint64 guid)
        {
            uint8 packGUID[8+1];
            packGUID[0] = 0;
            size_t size = 1;
            for (uint8 i = 0;guid != 0;++i)
            {
                if (guid & 0xFF)
                {
                    packGUID[0] |= uint8(1 << i);
                    packGUID[size] =  uint8(guid & 0xFF);
                    ++size;
                }

                guid >>= 8;
            }
            append(packGUID, size);
        }

        void AppendPackedTime(time_t time)
        {
            tm* lt = localtime(&time);
            append<uint32>((lt->tm_year - 100) << 24 | lt->tm_mon  << 20 | (lt->tm_mday - 1) << 14 | lt->tm_wday << 11 | lt->tm_hour << 6 | lt->tm_min);
        }

        void put(size_t pos, const uint8 *src, size_t cnt)
        {
            if (pos + cnt > size())
                throw ByteBufferPositionException(true, pos, cnt, size());

            if (!src)
                throw ByteBufferSourceException(_wpos, size(), cnt);

            memcpy(&_storage[pos], src, cnt);
        }

        void print_storage() const
        {
            if (!sLog->ShouldLog("network.opcode", LOG_LEVEL_TRACE)) // optimize disabled debug output
                return;

            std::ostringstream o;
            o << "STORAGE_SIZE: " << size();
            for (uint32 i = 0; i < size(); ++i)
                o << read<uint8>(i) << " - ";
            o << " ";

            TC_LOG_TRACE("network.opcode", "%s", o.str().c_str());
        }

        void textlike() const
        {
            if (!sLog->ShouldLog("network.opcode", LOG_LEVEL_TRACE)) // optimize disabled debug output
                return;

            std::ostringstream o;
            o << "STORAGE_SIZE: " << size();
            for (uint32 i = 0; i < size(); ++i)
            {
                char buf[1];
                snprintf(buf, 1, "%c", read<uint8>(i));
                o << buf;
            }
            o << " ";
            TC_LOG_TRACE("network.opcode", "%s", o.str().c_str());
        }

        void hexlike() const
        {
            if (!sLog->ShouldLog("network.opcode", LOG_LEVEL_TRACE)) // optimize disabled debug output
                return;

            uint32 j = 1, k = 1;

            std::ostringstream o;
            o << "STORAGE_SIZE: " << size();

            for (uint32 i = 0; i < size(); ++i)
            {
                char buf[3];
                snprintf(buf, 1, "%2X ", read<uint8>(i));
                if ((i == (j * 8)) && ((i != (k * 16))))
                {
                    o << "| ";
                    ++j;
                }
                else if (i == (k * 16))
                {
                    o << "\n";
                    ++k;
                    ++j;
                }

                o << buf;
            }
            o << " ";
            TC_LOG_TRACE("network.opcode", "%s", o.str().c_str());
        }

    protected:
        size_t _rpos, _wpos, _bitpos;
        uint8 _curbitval;
        std::vector<uint8> _storage;
};

template <typename T>
inline ByteBuffer &operator<<(ByteBuffer &b, std::vector<T> v)
{
    b << (uint32)v.size();
    for (typename std::vector<T>::iterator i = v.begin(); i != v.end(); ++i)
    {
        b << *i;
    }
    return b;
}

template <typename T>
inline ByteBuffer &operator>>(ByteBuffer &b, std::vector<T> &v)
{
    uint32 vsize;
    b >> vsize;
    v.clear();
    while (vsize--)
    {
        T t;
        b >> t;
        v.push_back(t);
    }
    return b;
}

template <typename T>
inline ByteBuffer &operator<<(ByteBuffer &b, std::list<T> v)
{
    b << (uint32)v.size();
    for (typename std::list<T>::iterator i = v.begin(); i != v.end(); ++i)
    {
        b << *i;
    }
    return b;
}

template <typename T>
inline ByteBuffer &operator>>(ByteBuffer &b, std::list<T> &v)
{
    uint32 vsize;
    b >> vsize;
    v.clear();
    while (vsize--)
    {
        T t;
        b >> t;
        v.push_back(t);
    }
    return b;
}

template <typename K, typename V>
inline ByteBuffer &operator<<(ByteBuffer &b, std::map<K, V> &m)
{
    b << (uint32)m.size();
    for (typename std::map<K, V>::iterator i = m.begin(); i != m.end(); ++i)
    {
        b << i->first << i->second;
    }
    return b;
}

template <typename K, typename V>
inline ByteBuffer &operator>>(ByteBuffer &b, std::map<K, V> &m)
{
    uint32 msize;
    b >> msize;
    m.clear();
    while (msize--)
    {
        K k;
        V v;
        b >> k >> v;
        m.insert(make_pair(k, v));
    }
    return b;
}

template<> inline std::string ByteBuffer::read<std::string>()
{
    std::string tmp;
    *this >> tmp;
    return tmp;
}

template<>
inline void ByteBuffer::read_skip<char*>()
{
    std::string temp;
    *this >> temp;
}

template<>
inline void ByteBuffer::read_skip<char const*>()
{
    read_skip<char*>();
}

template<>
inline void ByteBuffer::read_skip<std::string>()
{
    read_skip<char*>();
}

#endif

