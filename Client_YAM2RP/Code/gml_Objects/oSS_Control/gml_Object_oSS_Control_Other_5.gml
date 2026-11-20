writelog("INFO: Freeing surface s_map (ID " + string(s_map) + ") [oSS_Control Room End]");
surface_free(s_map);
with (oControl)
{
    event_user(2);
}
