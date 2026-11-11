
if (connected)
{
    if (disconnectTimer > 0)
        popup_text("Disconnected");
    else
        popup_text("Lost connection to server");

    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 254);
    buffer_write(buffer, buffer_u8, global.clientID);
    buffer_write(buffer, buffer_u8, global.sax);
    multi_send_buffer();
}

if (!noName)
{
    network_destroy(socket);
    ds_grid_destroy(global.onlineList);
    ds_grid_destroy(global.onlineSend);
    ds_grid_destroy(global.onlineReceived);
    ds_list_destroy(global.onlineItem);
    ds_list_destroy(global.onlineMetdead);
    ds_list_destroy(global.onlineEvent);
    ds_list_destroy(roomList);
    ds_list_destroy(roomListData);
    ds_list_destroy(global.idList);
    ds_list_destroy(posData);
    ds_list_destroy(global.hatchlingList);
    ds_list_destroy(global.speedList);
    ds_list_destroy(global.screwList);
    ds_list_destroy(global.hitboxList);
    ds_list_destroy(global.otherPlayerItems);
}

global.canConnect = 0;
global.TryConnect = 0;
oControl.alarm[10] = 90;

if (banned)
    popup_text("Banned from server");

if (kicked)
{
    switch (kickReason)
    {
        case 0:
            popup_text("Kicked by Host");
            break;
        
        case 1:
            popup_text("Kicked - Version Mismatch");
            break;
        
        case 2:
            popup_text("Kicked - Buffer Overflow");
            break;
        
        case 3:
            popup_text("Kicked - Server Full");
            break;

        default:
            popup_text("Kicked from Server");
            break;
    }
}

if (global.sax && global.saxmode)
{
    global.sax = 0;
    load_character_vars();
}

global.spectator = 0;
global.spectatorIndex = -1;
global.saxmode = 0;
global.sax = 0;
global.moderator = 0;
