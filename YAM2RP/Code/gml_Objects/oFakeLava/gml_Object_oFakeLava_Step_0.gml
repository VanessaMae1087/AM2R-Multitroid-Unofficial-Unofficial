// oLavaSurface step
if wave
{
    wtime += wspeed
    yoffset -= (cos(wtime) * wheight)
}

// oWaterFXV2 step
if reflections
{
    y_top = y - view_yview[0]
    y_top = clamp(y_top, 0, view_hview[0])
    y_bottom = view_hview[0]
    THETA += SPEED
    if ((view_yview[0] + view_hview[0]) >= y)
    {
        if (!surface_exists(mysurf))
            mysurf = surface_create((320 + oControl.widescreen * oControl.widescreen_space), 240)
        if surface_exists(oControl.widescreen_surface)
            surface_copy(mysurf, 0, 0, oControl.widescreen_surface)
        else if surface_exists(application_surface)
            surface_copy(mysurf, 0, 0, application_surface)
    }
}
else surface_free(mysurf)
