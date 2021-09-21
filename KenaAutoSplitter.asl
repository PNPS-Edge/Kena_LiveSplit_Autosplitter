state("Kena-Win64-Shipping")
{
    byte IsLoading : 0x528E6B0, 0x0;
    byte IsPaused : 0x52A0478, 0x0368, 0x17D8, 0x388;
    byte IsInGame: 0x51D0FE8, 0x710, 0x120;
}

startup
{
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
    //return current.IsPaused == 0 && old.IsPaused != 0;
}

isLoading
{
    return current.IsLoading > 0 || current.IsInGame != 1;
}

split
{
}