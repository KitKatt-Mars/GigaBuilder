function SetPlayerHealthTo69()
{
	Msg("Attempting to change player health...")
	EntFire("!player", "SetHealth", "69")
}

function HealPlayer()
{
	Msg("Healing Player...")
	EntFire("!player", "SetHealth", "100")
}

function HendersonPlayer()
{
	Msg("Henderson\n")
	EntFire("!player", "Kill")
}