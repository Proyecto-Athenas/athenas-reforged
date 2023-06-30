#include "ScriptMgr.h"
#include "Chat.h"

class transfer_commandscript : public CommandScript
{
    public:
        transfer_commandscript() : CommandScript("transfer_commandscript") { }

        std::vector<ChatCommand> GetCommands() const override
        {
            static std::vector<ChatCommand> HelloWorldCommandTable =
            {
                { "transfer",       SEC_GAMEMASTER,     true,  &HandleCharacterTransferCommand,        "" },
            };
            return HelloWorldCommandTable;
        }

        static bool HandleCharacterTransferCommand(ChatHandler* handler, const char* args)
        {
            char* guidPj;
            char* accNew;
            handler->extractOptFirstArg((char*)args, &guidPj, &accNew);
            if (!guidPj)
                return false;
            
            if (!accNew)
                return false;
            
            uint32 guid = atoi(guidPj);
            uint32 acc = atoi(accNew);

            QueryResult Resultpj = CharacterDatabase.PQuery("SELECT `guid` FROM `characters` WHERE `guid` = %u ", guid);
            if (!Resultpj)
            {
                handler->PSendSysMessage("PJ does not exist");
                return false;
            }

            QueryResult Resultacc = LoginDatabase.PQuery("SELECT `id` FROM `account` WHERE `id` = %u ", acc);
            if (!Resultacc)
            {
                handler->PSendSysMessage("Account does not exist");
                return false;
            }

            QueryResult Movepj = CharacterDatabase.PQuery("UPDATE `characters` SET `account` = %u WHERE `guid` = %u ",acc, guid);

            handler->PSendSysMessage("The PJ with guid : %u was moved to the account with id : %u",  guid, acc);
            return true;
        }
};

void AddSC_transfer_commandscript()
{
    new transfer_commandscript();
}
