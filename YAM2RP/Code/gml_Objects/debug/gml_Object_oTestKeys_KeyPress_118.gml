if (string_count("rm_a", room_get_name(room)) > 0)
{
    if (oSolid.visible == false)
    {
        with (oSolid)
            visible = true
    }
    else
    {
        with (oSolid)
            visible = false
    }
}
