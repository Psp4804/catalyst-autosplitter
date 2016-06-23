state("MirrorsEdgeCatalyst")
{
    byte loading : "MirrorsEdgeCatalyst.exe", 0x24082b8, 0x4c1;
}
 
isLoading
{
    if(Convert.ToBoolean(current.loading))
    {
        return true;
    }
    return false;
}
