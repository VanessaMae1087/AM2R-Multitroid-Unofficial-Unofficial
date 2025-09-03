if (global.Page || global.syncpage)
    exit;

msg = get_integer_async("Type in the max number of clients you want to connect. Range is 1 - 255. The server will automatically restart.", oServer.maxClients);
