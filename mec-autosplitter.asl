state("MirrorsEdgeCatalyst")
{
    byte loading : "MirrorsEdgeCatalyst.exe", 0x24082b8, 0x4c1;
	float yCoord : "MirrorsEdgeCatalyst.exe", 0x023D6028, 0x18, 0x20, 0x18, 0x838, 0x214;
}

start
{
	float drop = 5.971168f;
	if(current.yCoord.Equals(drop) && String.Format("{0:0,0.0000000}", old.yCoord) == "06.0817700") //idrk
	{
		return true;
	}
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
