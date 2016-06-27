state("MirrorsEdgeCatalyst", "v1.0")
{
    byte loading : "MirrorsEdgeCatalyst.exe", 0x24082b8, 0x4c1;
    //int crosshairIsShown : "MirrorsEdgeCatalyst.exe", 0x23E5800;
	float xCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x210;
	float yCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x214;
	float zCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x218;
	byte endBanner : "MirrorsEdgeCatalyst.exe", 0x2405718, 0x3f8, 0x160, 0x0, 0x90, 0xf8;
}
init
{
	if(modules.First().ModuleMemorySize.ToString() == vars.version1)
		version = "v1.0";
}
startup
{
	vars.version1 = "126324736";
	vars.splitIteration = 0;
	vars.lastSplit = timer.CurrentTime.RealTime;
	settings.Add("all_missions", true, "Enabled Splits");
	//an array i have to make so i can use these fun names
	string[] comparison = {"blumage", "howtouserunnervision", "dodgecenter", "thedashthatyouloseandhavetocompletelyrestartifyouaccidentiallypressthewrongbuttonbecausethisgamehasadumbtutorialsystem", "icarusissalty", "antennaglitch", "plasticisthebestcharacterinthisgame", "pressqtowin", "taipei101", "icarusiskindacooliguess", "novemberisthenewblack", "turfwar", "htcvive", "antennaglitch2", "everyoneknowsthisleveliswayyyytoofaroutsideofthemapregion", "cityofember", "seeprisonerx", "worstmissioninthegame", "pipole"};
	vars.compare = comparison;
	settings.SetToolTip("all_missions", "Splits at the end flag for every mission");
	settings.Add("blumage", true, "Release", "all_missions");
	settings.Add("howtouserunnervision", false, "Follow the Red", "all_missions");
	settings.Add("dodgecenter", true, "Old Friends", "all_missions");
	settings.Add("thedashthatyouloseandhavetocompletelyrestartifyouaccidentiallypressthewrongbuttonbecausethisgamehasadumbtutorialsystem", true, "Be Like Water", "all_missions");
	settings.Add("icarusissalty", true, "Back in the Game", "all_missions");
	settings.Add("antennaglitch", false, "Mischief Maker", "all_missions");
	settings.Add("plasticisthebestcharacterinthisgame", true, "Savant Extraordinaire", "all_missions");
	settings.Add("pressqtowin", false, "Gridnode Run", "all_missions");
	settings.Add("taipei101", true, "Benefactor", "all_missions");
	settings.Add("icarusiskindacooliguess", true, "Fly Trap", "all_missions");
	settings.Add("novemberisthenewblack", true, "Sanctuary", "all_missions");
	settings.Add("turfwar", true, "Encroachment", "all_missions");
	settings.Add("htcvive", true, "Vive La Resistance", "all_missions");
	settings.Add("antennaglitch2", true, "Payback", "all_missions");
	settings.Add("everyoneknowsthisleveliswayyyytoofaroutsideofthemapregion", true, "Prisoner X", "all_missions");
	settings.Add("cityofember", true, "Thy Kingdom Come", "all_missions");
	settings.Add("seeprisonerx", true, "Family Matters", "all_missions");
	settings.Add("worstmissioninthegame", true, "Tickets, No Thanks!", "all_missions");
	settings.Add("pipole", true, "The Shard", "all_missions");
}

split
{
	if(Convert.ToBoolean(current.endBanner).Equals(true) && Convert.ToBoolean(old.endBanner).Equals(false))
	{
		if((timer.CurrentTime.RealTime - vars.lastSplit).TotalSeconds > 15)
		{
			if(settings[vars.compare[vars.splitIteration]])
			{
				vars.splitIteration = vars.splitIteration + 1;
				vars.lastSplit = timer.CurrentTime.RealTime;
				return true;
			}
			vars.splitIteration = vars.splitIteration + 1;
			vars.lastSplit = timer.CurrentTime.RealTime;
		}
	}
	return false;
}

start
{
	vars.splitIteration = 0;
	vars.lastSplit = timer.CurrentTime.RealTime;
	/*float drop = 5.971168f;
	if(current.yCoord.Equals(drop) && String.Format("{0:0,0.0000000}", old.yCoord) == "06.0817700") //idrk
	{
		return true;
	}*/
	return false;
}

isLoading
{
    if(Convert.ToBoolean(current.loading))
    {
        return true;
    }
    return false;
}
