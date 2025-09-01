hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self);
clicking = hovering && mouse_check_button_pressed(mb_left);

if(hovering)
{
    image_xscale = xSize * 1.1;
    image_yscale = ySize * 1.1;
}
else
{
    image_xscale = xSize;
    image_yscale = ySize;
}