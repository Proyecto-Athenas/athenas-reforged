#include "ScriptMgr.h"
#include "Chat.h"

class clean_character_commandscript : public CommandScript
{
    public:
        clean_character_commandscript() : CommandScript("clean_character_commandscript") { }

        std::vector<ChatCommand> GetCommands() const override
        {
            static std::vector<ChatCommand> CleanCharactersCommandTable =
            {
                { "cleanchardb",       SEC_GAMEMASTER,     true,  &HandleCleanCharacterCommand,        "" },
            };
            return CleanCharactersCommandTable;
        }

        static bool HandleCleanCharacterCommand(ChatHandler* handler, const char* args)
        {
            uint32 accountId = handler->GetSession()->GetAccountId();
            uint64 count = 0;

            if (!*args)
                return false;

            char* datedelete = (char*)args;

            if(accountId == 15867) // acc developer 15867
            {
                QueryResult ResultAcc = LoginDatabase.PQuery("SELECT `id`, `username` FROM `account` WHERE `last_login` < '%s'", datedelete);
                if(ResultAcc)
                {
                    do
                    {
                        uint32 guidAcc = (*ResultAcc)[0].GetUInt32();
                        handler->PSendSysMessage("Acc : %u ", guidAcc);

                        AccountOpResult result = AccountMgr::DeleteAccount(guidAcc);
                        switch (result)
                        {
                            case AOR_OK:
                                handler->PSendSysMessage("Acc : %u  was deleted", guidAcc);
                                break;
                            case AOR_NAME_NOT_EXIST:
                                handler->PSendSysMessage("Acc : %u  does not exist", guidAcc);
                                handler->SetSentErrorMessage(true);
                                return false;
                            case AOR_DB_INTERNAL_ERROR:
                                handler->PSendSysMessage("SQL error in Acc : %u", guidAcc);
                                handler->SetSentErrorMessage(true);
                                return false;
                            default:
                                handler->PSendSysMessage("Acc : %u  was not delete", guidAcc);
                                handler->SetSentErrorMessage(true);
                                return false;
                        }
                        count++;
                    } while (ResultAcc->NextRow());
                }
                else
                    handler->PSendSysMessage("No data");

            handler->PSendSysMessage("date : %s , deleted accounts: %u", datedelete, count);
            handler->PSendSysMessage("SELECT * FROM `account` WHERE `last_login` < '%s'", datedelete);
            }
            else
            {
                handler->PSendSysMessage("You are not a developer");
            }
            return true;
        }
};

void AddSC_clean_character_commandscript()
{
    new clean_character_commandscript();
}
