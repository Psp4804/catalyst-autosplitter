state("MirrorsEdgeCatalyst")
{
    byte loading : "MirrorsEdgeCatalyst.exe", 0x24082b8, 0x4c1;
    //int crosshairIsShown : "MirrorsEdgeCatalyst.exe", 0x23E5800;
	float xCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x210;
	float yCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x214;
	float zCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x218;
	//byte endBanner : "MirrorsEdgeCatalyst.exe", ;
}
startup
{
	vars.splitIteration = 0;
	settings.Add("all_missions", true, "Enabled Splits");
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
/*
split
{
	vars.splitIteration++;
	//if()
	//{
		if(Convert.ToBoolean(current.endBanner) && !Convert.ToBoolean(old.endBanner))
		{
			return true;
		}
	//}
	return false;
}
*/

//Autostart temporarily disabled until I take the time to fix it.
/*
start
{
	float drop = 5.971168f;
	if(current.yCoord.Equals(drop) && String.Format("{0:0,0.0000000}", old.yCoord) == "06.0817700") //idrk
	{
		return true;
	}
	return false;
}
*/
isLoading
{
    if(Convert.ToBoolean(current.loading))
    {
        return true;
    }
    return false;
}
