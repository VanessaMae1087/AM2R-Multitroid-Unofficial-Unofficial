var i, f;
global.morphball = 1
global.jumpball = 0
global.powergrip = 1
global.spacejump = 0
global.screwattack = 0
global.hijump = 0
global.spiderball = 0
global.speedbooster = 0
global.bomb = 0
global.ibeam = 0
global.wbeam = 0
global.pbeam = 0
global.sbeam = 0
global.cbeam = 0
global.missiles = 30
global.missiles = oControl.mod_Mstartingcount
global.smissiles = 0
global.pbombs = 0
global.maxmissiles = 30
global.maxmissiles = oControl.mod_Mstartingcount
global.maxsmissiles = 0
global.maxpbombs = 0
global.currentweapon = 0
global.currentsuit = 0
global.playerhealth = 99
global.maxhealth = 99
global.etanks = 0
global.mtanks = 0
global.stanks = 0
global.ptanks = 0
global.lavastate = 0
global.timeofday = 0
i = 100
repeat (100)
{
    i -= 1
    global.metdead[i] = 0
}
i = 400
repeat (400)
{
    i -= 1
    global.event[i] = 0
}
global.save_room = 0
global.monstersleft = 55
global.monstersarea = 1
global.progress = 0
global.gametime = 0
global.deaths = 0
global.kills = 0
global.mapmarker = 0
global.mapmarkerx = 0
global.mapmarkery = 0
global.itemstaken = 0
i = 350
repeat (350)
{
    i -= 1
    global.item[i] = 0
}
global.item[1] = 1
reset_logs_list()
reset_hints()
if (global.sax && global.saxmode)
{
    for (i = 0; i < array_height_2d(global.dmap); i++)
    {
        for (f = 0; f < array_length_2d(global.dmap, i); f++)
            global.dmap[i, f] = 1
    }
    global.item[0] = 1
    global.item[1] = 1
    global.item[2] = 1
    global.item[3] = 1
    global.item[4] = 1
    global.item[5] = 1
    global.item[6] = 1
    global.item[7] = 1
    global.item[8] = 1
    global.item[9] = 0
    global.item[10] = 1
    global.item[11] = 1
    global.item[12] = 1
    global.item[13] = 1
    global.item[14] = 1
    global.item[50] = 1
    global.item[103] = 1
    global.item[108] = 1
    global.item[157] = 1
    global.item[52] = 1
    global.item[53] = 1
    global.item[54] = 1
    global.item[55] = 1
    global.item[51] = 1
    global.item[110] = 1
    global.item[58] = 1
    global.morphball = 1
    global.jumpball = 1
    global.powergrip = 1
    global.spacejump = 1
    global.screwattack = 1
    global.hijump = 1
    global.spiderball = 1
    global.speedbooster = 1
    global.bomb = 1
    global.ibeam = 1
    global.wbeam = 1
    global.pbeam = 1
    global.sbeam = 1
    global.cbeam = 1
    global.currentsuit = 1
    global.etanks = 4
    global.mtanks = 4
    global.stanks = 2
    global.ptanks = 1
    if global.experimental
    {
        for (i = 0; i < array_length_1d(global.item); i++)
        {
            if (i == 50 || i == 103 || i == 108 || i == 157 || i == 158 || i == 200 || i == 201 || i == 251 || i == 254 || i == 306)
                global.item[i] = 1
        }
        for (i = 0; i < array_length_1d(global.item); i++)
        {
            if (i == 51 || i == 110 || i == 162 || i == 206 || i == 207 || i == 209 || i == 215 || i == 256 || i == 300 || i == 305)
                global.item[i] = 1
        }
        for (i = 0; i < array_length_1d(global.item); i++)
        {
            if (i == 58 || i == 59 || i == 112 || i == 160 || i == 212 || i == 213 || i == 253 || i == 258 || i == 301 || i == 302)
                global.item[i] = 1
        }
        for (i = 0; i < array_length_1d(global.item); i++)
        {
            if (i == 52 || i == 53 || i == 54 || i == 55 || i == 56 || i == 57 || i == 60 || i == 100 || i == 101 || i == 102 || i == 104 || i == 105 || i == 106 || i == 107 || i == 109 || i == 111 || i == 150 || i == 151 || i == 152 || i == 153 || i == 154 || i == 155 || i == 156 || i == 159 || i == 161 || i == 163 || i == 202 || i == 203 || i == 204 || i == 205 || i == 208 || i == 210 || i == 211 || i == 214 || i == 250 || i == 252 || i == 255 || i == 257 || i == 259 || i == 303 || i == 304 || i == 307 || i == 308 || i == 309)
                global.item[i] = 1
        }
        global.etanks = 10
        global.mtanks = 44
        global.stanks = 10
        global.ptanks = 10
    }
    global.maxhealth = 99 + global.etanks * 100 * oControl.mod_etankhealthmult
    global.playerhealth = global.maxhealth
    if (global.difficulty < 2)
    {
        global.maxmissiles = oControl.mod_Mstartingcount + global.mtanks * 5
        global.maxsmissiles = global.stanks * 2
        global.maxpbombs = global.ptanks * 2
    }
    else
    {
        global.maxmissiles = oControl.mod_Mstartingcount + global.mtanks * 2
        global.maxsmissiles = global.stanks
        global.maxpbombs = global.ptanks
    }
    global.missiles = global.maxmissiles
    global.smissiles = global.maxsmissiles
    global.pbombs = global.maxpbombs
}
global.dmapPrev = array_clone(global.dmap)
visible = true
if (!global.sax)
{
    global.item[0] = (global.itemsyncs[11] == 1 || (global.sax && global.itemsyncs[11] == 2))
    global.item[2] = (global.itemsyncs[9] == 1 || (global.sax && global.itemsyncs[9] == 2))
    global.item[3] = (global.itemsyncs[10] == 1 || (global.sax && global.itemsyncs[10] == 2))
    global.item[4] = (global.itemsyncs[14] == 1 || (global.sax && global.itemsyncs[14] == 2))
    global.item[5] = (global.itemsyncs[1] == 1 || (global.sax && global.itemsyncs[1] == 2))
    global.item[6] = (global.itemsyncs[15] == 1 || (global.sax && global.itemsyncs[15] == 2))
    global.item[7] = (global.itemsyncs[16] == 1 || (global.sax && global.itemsyncs[16] == 2))
    global.item[8] = (global.itemsyncs[13] == 1 || (global.sax && global.itemsyncs[13] == 2))
    global.item[9] = (global.itemsyncs[2] == 1 || (global.sax && global.itemsyncs[2] == 2))
    global.item[10] = (global.itemsyncs[3] == 1 || (global.sax && global.itemsyncs[3] == 2))
    global.item[11] = (global.itemsyncs[7] == 1 || (global.sax && global.itemsyncs[7] == 2))
    global.item[12] = (global.itemsyncs[4] == 1 || (global.sax && global.itemsyncs[4] == 2))
    global.item[13] = (global.itemsyncs[5] == 1 || (global.sax && global.itemsyncs[5] == 2))
    global.item[14] = (global.itemsyncs[6] == 1 || (global.sax && global.itemsyncs[6] == 2))
    global.bomb = (global.itemsyncs[11] == 1 || (global.sax && global.itemsyncs[11] == 2))
    global.spiderball = (global.itemsyncs[9] == 1 || (global.sax && global.itemsyncs[9] == 2))
    global.jumpball = (global.itemsyncs[10] == 1 || (global.sax && global.itemsyncs[10] == 2))
    global.hijump = (global.itemsyncs[14] == 1 || (global.sax && global.itemsyncs[14] == 2))
    // varia would be here but we do suit math
    global.spacejump = (global.itemsyncs[15] == 1 || (global.sax && global.itemsyncs[15] == 2))
    global.speedbooster = (global.itemsyncs[16] == 1 || (global.sax && global.itemsyncs[16] == 2))
    global.screwattack = (global.itemsyncs[13] == 1 || (global.sax && global.itemsyncs[13] == 2))
    // gravity would be here but we do suit math
    global.cbeam = (global.itemsyncs[3] == 1 || (global.sax && global.itemsyncs[3] == 2))
    global.ibeam = (global.itemsyncs[7] == 1 || (global.sax && global.itemsyncs[7] == 2))
    global.wbeam = (global.itemsyncs[4] == 1 || (global.sax && global.itemsyncs[4] == 2))
    global.sbeam = (global.itemsyncs[5] == 1 || (global.sax && global.itemsyncs[5] == 2))
    global.pbeam = (global.itemsyncs[6] == 1 || (global.sax && global.itemsyncs[6] == 2))
    
    if (global.item[9] == 1)
        global.currentsuit = 2
    else if (global.item[5] == 1)
        global.currentsuit = 1
    else
        global.currentsuit = 0