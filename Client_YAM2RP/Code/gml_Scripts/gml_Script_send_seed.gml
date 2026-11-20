var str = "Seed sent";
var currSeed = oClient.seed;

if (global.multiCustomSeed != 0)
{
    str = "Manual seed sent";
    currSeed = global.multiCustomSeed;
}

var seedBuffer = multi_setup_buffer();
buffer_write(seedBuffer, buffer_u8, 3);
buffer_write(seedBuffer, buffer_f64, currSeed);
buffer_write(seedBuffer, buffer_u8, global.clientID);
multi_send_buffer();
popup_text(str);
