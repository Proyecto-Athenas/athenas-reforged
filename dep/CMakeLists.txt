# Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

if( CMAKE_COMPILER_IS_GNUCXX )
  add_definitions(--no-warnings)
elseif( MSVC )
  add_definitions(/W0)
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Linux")
  if((AUTHSERVER OR WORLDSERVER) AND NOT NOJEM)
    add_subdirectory(jemalloc)  
  endif()
endif()

if(NOT MSVC)
  add_definitions(-Wno-deprecated-register)
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Windows")
  add_subdirectory(acelite)
  if(USE_MYSQL_SOURCES AND (AUTHSERVER OR WORLDSERVER))
      add_subdirectory(mysqllite)
  endif()
  if(TOOLS)
    add_subdirectory(bzip2)
  endif()
  if(AUTHSERVER OR WORLDSERVER OR TOOLS)
    add_subdirectory(zlib)
  endif()
endif()

if(WORLDSERVER OR TOOLS)
  add_subdirectory(g3dlite)
  add_subdirectory(SFMT)
  add_subdirectory(recastnavigation)
endif()

if(WORLDSERVER)
  add_subdirectory(gsoap)
endif()

if(TOOLS)
  add_subdirectory(StormLib)
endif()
