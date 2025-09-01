if(x >= room_width)
{
    oGameController.playMusic();
    instance_create_layer(-10, -10, "Controller", oRaceController);
}

if(settingOff)
{
    image_angle = 270 + sin(current_time * 0.025) * 5; 
}