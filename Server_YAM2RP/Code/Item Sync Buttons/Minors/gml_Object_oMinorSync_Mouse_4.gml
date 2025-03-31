// if we don't have the sync page open, ignore mouse clicks
if (!global.syncpage)
    exit
// if mouse is in the top left button region
if ((mouse_x - x) >= 0 && (mouse_x - x) <= 40 && (mouse_y - y) >= 0 && (mouse_y - y) <= 40)
{
    global.startingminors[type]++
    if (global.startingminors[type] > 10)
        global.startingminors[type] = 10
}
// top right
if ((mouse_x - x) >= 104 && (mouse_x - x) <= 144 && (mouse_y - y) >= 0 && (mouse_y - y) <= 40)
{
    global.startingminors[type]--
    if (global.startingminors[type] < 0)
        global.startingminors[type] = 0
}
// bottom left
if ((mouse_x - x) >= 0 && (mouse_x - x) <= 40 && (mouse_y - y) >= 40 && (mouse_y - y) <= 80)
{
    global.startingminors[(type + 1)]++
    if (global.startingminors[(type + 1)] > 10)
        global.startingminors[(type + 1)] = 10
}
// bottom right
if ((mouse_x - x) >= 104 && (mouse_x - x) <= 144 && (mouse_y - y) >= 40 && (mouse_y - y) <= 80)
{
    global.startingminors[(type + 1)]--
    if (global.startingminors[(type + 1)] < 0)
        global.startingminors[(type + 1)] = 0
}
