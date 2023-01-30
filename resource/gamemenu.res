// Made with XBLAH's Modding tool.
// Download it at https://github.com/jean-knapp/windows-source-modding-tool/releases

"gamemenu"
{
	"0"
	{
		"label"	"Resume"
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
		"label"	"Load GigaGame"
		"command"	"OpenLoadGameDialog"
		"ingameorder"	"3"
	}
	"4"
	{
		"label"	"Save GigaGame"
		"command"	"OpenSaveGameDialog"
		"ingameorder"	"4"
		"onlyingame"	"1"
	}
	"5"
	{
		"label"	"Options"
		"command"	"OpenOptionsDialog"
		"ingameorder"	"5"
	}
	"6"
	{
		"label"	"Quit"
		"command"	"Quit"
		"ingameorder"	"6"
	}
}
