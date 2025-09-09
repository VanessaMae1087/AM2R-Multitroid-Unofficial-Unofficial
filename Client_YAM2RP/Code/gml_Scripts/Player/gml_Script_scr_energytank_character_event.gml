if (active)
{
    if (global.maxhealth < 100)
    {
        event_inherited();
    }
    else
    {
        itemtype = 1;
        popup_text(get_text("Notifications", "EnergyTank"));
        event_inherited();
    }
    
    global.maxhealth += (100 * oControl.mod_etankhealthmult);
    global.etanks += 1;
    
    if (global.exp_gradualetanks)
    {
        global.playerhealth += 100;
        oCharacter.fillhp = 1;
    }
    else
    {
        global.playerhealth = global.maxhealth;
    }
}
