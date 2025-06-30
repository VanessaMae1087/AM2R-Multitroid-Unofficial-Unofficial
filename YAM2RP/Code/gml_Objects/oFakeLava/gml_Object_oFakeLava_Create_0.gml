/*
 * object designed to look like lava while not actually being interactable.
 * must be manually placed outside the room if you need to account for widescreen.
 * as of writing it also extends rightward to the end of the room because we don't
 * need to care for multitroid, but i may fix that so it can see more general use
 */

// custom vars
baseheight = y
reflections = 0 // whether to do the reflactions made by oWaterFXV2 because they seem to not exist in the normal game for some reason

// oLavaSurface create
image_alpha = 0.7
frame = 0
bg = 134
alarm[0] = 1
wtime = 0
yoffset = 0
widescreen_space = oControl.widescreen_space
// overwrite this in instance create code for waves
wave = 0
wheight = 0
wspeed = 0

// oWaterFXV2 create
FREQ = 8
AMP = 2
SPEED = 0.05
THETA = 0
y_bottom = y - view_yview[0]
if (y_bottom < 0)
    y_bottom = 0
if (y_bottom > view_hview[0])
    y_bottom = view_hview[0]
mysurf = surface_create((320 + oControl.widescreen * oControl.widescreen_space), 240)
