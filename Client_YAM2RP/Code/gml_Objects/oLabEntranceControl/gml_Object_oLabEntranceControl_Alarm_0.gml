alarm[0] = 5
if (global.event[evnt] == 1)
{
    ele = instance_create(ele_x, ele_y, oGFElevator)
    ele.image_alpha = 0
    ele.bottom = ele_bottom
    ele.active = 0
    ele.alarm[1] = 60
    ele.target_room = ele_target_room
    ele.target_x = ele_target_x
    ele.target_y = ele_target_y
    ele.elev_dir = ele_elev_dir
    instance_destroy()
}
