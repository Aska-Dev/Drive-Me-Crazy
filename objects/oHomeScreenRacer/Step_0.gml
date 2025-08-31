if(x >= room_width)
{
    oGameController.playMusic();
    instance_create_layer(-10, -10, "Controller", oRaceController);
}