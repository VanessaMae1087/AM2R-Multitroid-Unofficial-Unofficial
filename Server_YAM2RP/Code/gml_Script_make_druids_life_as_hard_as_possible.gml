for (var i = 0; i < ds_list_size(oServer.idList); i++)
{
    var arrList = ds_list_find_value(oServer.idList, i);
    if (string_count("druid", string_lower(arrList[0, 2]) && irandom(2)))
    {
        oControl.mod_160 = 7; // place speed at the power bomb in bg2
        oControl.mod_302 = 8; // place screw at post-gravity exterior item
        oControl.mod_300 = 4; // place hi-jump at screw-locked post EMP totem
        oControl.mod_208 = 12; // place wave beam at the shinespark item in the a3 giant ramp room

        switch (irandom(5)) // 50% chance to place varia at a location easy to accidentally grab
        {
            case 0: // bg2 shinespark item
                oControl.mod_161 = 5;
                break;
            case 1: // bg2 e-tank in the bomb block
                oControl.mod_258 = 5;
                break;
            case 2: // a4 post-tester super behind the pwoer bomb block
                oControl.mod_256 = 5;
                break;
        }

        exit;
    }
}
