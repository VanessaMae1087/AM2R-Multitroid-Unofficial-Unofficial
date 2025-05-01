if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    global.saxmode = (!global.saxmode)
    with (oServer)
        event_user(4)
}
else
    global.saxmode = 0
if global.saxmode
{
    global.itemToggleSync = 0
    global.healthSync = 0
    global.ammoSync = 0
}
