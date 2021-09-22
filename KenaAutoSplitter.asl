state("Kena-Win64-Shipping")
{
    byte IsLoading : 0x528E6B0, 0x0;
    byte CanPlayerMove: 0x4E61098, 0x30, 0x4D0, 0xE0;
    bool IsMenuOpened: 0x52688F8, 0x1D0;
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