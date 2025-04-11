var i, j;
for (i = 0; i < array_height_2d(global.dmapSamus); i++)
{
    for (j = 0; j < array_length_2d(global.dmapSamus, i); j++)
    {
        if (global.dmapSamus[i, j] == 11)
            global.dmapSAX[i, j] = 11
    }
}
for (i = 0; i < array_height_2d(global.dmapSAX); i++)
{
    for (j = 0; j < array_length_2d(global.dmapSAX, i); j++)
    {
        if (global.dmapSAX[i, j] == 11 && global.dmapSamus[i, j] > 0)
            global.dmapSamus[i, j] = 11
    }
}
