state("Kena-Win64-Shipping", "1.05")
{
    byte IsLoading : 0x528E6B0, 0x0;
    byte CanPlayerMove: 0x53BA840, 0x30, 0x660, 0xD0;
    bool IsPaused: 0x53FE950, 0x168, 0x368, 0x88, 0x70;
    byte IsMainMenuOpened: 0x3A83450, 0x250;
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
    return old.IsMainMenuOpened == 2 && current.IsMainMenuOpened != 2;
}

reset 
{
    return old.IsMainMenuOpened != 2 && current.IsMainMenuOpened == 2;
}

isLoading
{
    return current.IsLoading > 0 || current.CanPlayerMove != 1;
}

split
{
}