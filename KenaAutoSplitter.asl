state("Kena-Win64-Shipping", "1.13")
{
    int Rots : 0x53F0220, 0x128, 0x3F8, 0x224;
}

startup
{
    #region Settings

    // settings tree
    settings.Add("splits", false, "All Splits");
        settings.Add("any", false, "Any", "splits");

        settings.Add("allRots", false, "All Rots", "splits");
            settings.Add("rots", false, "Splits on each rot", "allRots");

    #endregion Settings
}

init 
{
}

update 
{
}

start 
{
}

reset 
{
}

isLoading
{
}

split
{
    if (settings["allRots"] && settings["rots"])
    {
        return current.Rots > old.Rots;
    }
}