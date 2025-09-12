event_inherited();

xSize = 2.5;
image_xscale = xSize;

var cameraWidth = camera_get_view_width(view_camera[0]);

x = cameraWidth * 0.987 - sprite_width * 0.46;
y = room_height * 0.59

buttonText = "Zug beenden"
active = true;

action = function ()
{
    audio_play_sound(sndSfxClick, 100, false);
    oDuelController.nextTurn();
    active = false;
}