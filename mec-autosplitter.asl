state("MirrorsEdgeCatalyst")
{
    bool isLoading : "MirrorsEdgeCatalyst.exe", 0x1424082b8, 0x4C1;
}

isLoading
{
	if(current.isLoading)
		return true;
	return false;
}