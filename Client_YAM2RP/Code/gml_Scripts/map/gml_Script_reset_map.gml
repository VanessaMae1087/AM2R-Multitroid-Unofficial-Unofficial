writelog("INFO: Reset map start [reset_map]");
i = 0;

repeat (80)
{
    j = 0;
    
    repeat (80)
    {
        //writelog("Resetting " + string(i) + "," + string(j));
        global.map[i, j] = "0";
        global.dmap[i, j] = 0;
        global.dmapPrev[i, j] = 0;
        j += 1;
    }
    
    i += 1;
}

writelog("INFO: Reset map end [reset_map]");
