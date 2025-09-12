event_inherited();

buttonText = "Weiterfahren!"

active = true;

action = function ()
{
    audio_play_sound(sndSfxClick, 100, false);
    oGameController.switchPause();
}

alarm[0] = game_get_speed(gamespeed_fps) * 3;