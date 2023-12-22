// Made with XBLAH's Modding tool.
// Download it at https://github.com/jean-knapp/windows-source-modding-tool/releases

"gamemenu"
{
	"0"
	{
		"label"	"Resume GigaGame"
		"command"	"ResumeGame"
		"ingameorder"	"0"
		"onlyingame"	"1"
	}
	"1"
	{
		"label"	"Activate Henderson Mode"
		"command"	"engine kill"
		"ingameorder"	"1"
		"onlyingame"	"1"
	}
	"2"
	{
		"label"	"New GigaGame"
		"command"	"OpenNewGameDialog"
		"ingameorder"	"2"
	}
	"3"
	{
		"label"	"Create Giga-Multiplayer Game"
		"command"	"OpenCreateMultiplayerGameDialog"
		"ingameorder"	"3"
	}
	"4"
	{
		"label"	"Load GigaGame"
		"command"	"OpenLoadGameDialog"
		"ingameorder"	"4"
	}
	"5"
	{
		"label"	"Save GigaGame"
		"command"	"OpenSaveGameDialog"
		"ingameorder"	"5"
		"onlyingame"	"1"
		"nomulti"	"1"
	}
	"6"
	{
		"label"	"Join GigaGame"
		"command"	"OpenServerBrowser"
		"ingameorder"	"6"
	}
	"7"
	{
		"label"	"Giga Disconnect"
		"command"	"Disconnect"
		"ingameorder"	"7"
		"onlyingame"	"1"
		"nosingle"	"1"
	}
	"8"
	{
		"label"	"Giga Options"
		"command"	"OpenOptionsDialog"
		"ingameorder"	"8"
	}
	"9"
	{
		"label"	"Giga Quit"
		"command"	"Quit"
		"ingameorder"	"9"
	}
}
