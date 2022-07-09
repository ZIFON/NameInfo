#include <sourcemod>
#include <csgo_colors>

public Plugin myinfo =
{
    name =  "NameInfo" ,
    author =  "ZIFON" ,
    description =  "https://steamcommunity.com/profiles/76561198838988591/" ,
    version =  "1.0" ,
    url =  "https://steamcommunity.com/profiles/76561198838988591/"
};

static const char BORDER[] = "{OLIVE}--------------------------------------------------";

public void OnPluginStart()
{
    RegConsoleCmd("sm_info", Cmd_Info);

    LoadTranslations("nameinfo.phrases");
}

public Action Cmd_Info(int client, int args)
{
    if(client && IsClientInGame(client) && !IsFakeClient(client))
    {
        CGOPrintToChat(client, BORDER);
        CGOPrintToChat(client, "{DEFAULT}Вся информация о создателе:");
        CGOPrintToChat(client, "%t", "TranslateText");
        CGOPrintToChat(client, BORDER);
    }
    return Plugin_Handled;
}
