state("Kena-Win64-Shipping", "1.14")
{
    int Rots : 0x53F1520, 0x128, 0x3F8, 0x224;
    int RotsLevel : 0x53F1520, 0x128, 0x3F8, 0x480;
    byte IsMainMenu : 0x4DD3CC8
}

startup
{
    #region Settings

    // settings tree
    settings.Add("splits", false, "All Splits");
        settings.Add("any", false, "Any", "splits");

        settings.Add("allRots", false, "All Rots", "splits");
            settings.Add("rots", false, "Splits on each Rot", "allRots");

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
    return old.IsMainMenu == 2 && current.IsMainMenu != 2;
}

reset 
{
    return old.IsMainMenu != 2 && current.IsMainMenu == 2;
}

isLoading
{
    //return current.GameStatus > 0;
}

split
{
    if (settings["allRots"] && settings["rots"])
    {
        return current.Rots > old.Rots;
    }
}