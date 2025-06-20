if (global.Page || global.syncpage)
    exit
msg = get_integer_async("Type in the max number of clients you want to connect. The server will automatically restart.", 16)
