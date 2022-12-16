// Made with XBLAH's Modding tool.
// Download it at https://github.com/jean-knapp/windows-source-modding-tool/releases

"gamemenu"
{
	"0"
	{
		"label"	"#GameUI_GameMenu_ResumeGame"
		"command"	"ResumeGame"
		"ingameorder"	"0"
		"onlyingame"	"1"
	}
	"1"
	{
		"label"	"#GameUI_GameMenu_NewGame"
		"command"	"OpenNewGameDialog"
		"ingameorder"	"1"
	}
	"2"
	{
		"label"	"#GameUI_GameMenu_LoadGame"
		"command"	"OpenLoadGameDialog"
		"ingameorder"	"2"
	}
	"3"
	{
		"label"	"#GameUI_GameMenu_SaveGame"
		"command"	"OpenSaveGameDialog"
		"ingameorder"	"3"
		"onlyingame"	"1"
	}
	"4"
	{
		"label"	"#GameUI_GameMenu_ActivateVR"
		"command"	"engine vr_activate"
		"ingameorder"	"4"
	}
	"5"
	{
		"label"	"#GameUI_GameMenu_DeactivateVR"
		"command"	"engine vr_deactivate"
		"ingameorder"	"5"
	}
	"6"
	{
		"label"	"#GameUI_Controller"
		"command"	"OpenControllerDialog"
		"ingameorder"	"6"
	}
	"7"
	{
		"label"	"#GameUI_GameMenu_Options"
		"command"	"OpenOptionsDialog"
		"ingameorder"	"7"
	}
	"8"
	{
		"label"	"#GameUI_GameMenu_Quit"
		"command"	"Quit"
		"ingameorder"	"8"
	}
	"9"
	{
		"label"	"Activate Henderson Mode"
		"command"	"engine kill"
		"ingameorder"	"9"
		"onlyingame"	"1"
	}
}
