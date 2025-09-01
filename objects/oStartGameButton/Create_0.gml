event_inherited();

buttonText = "Rennen starten!"

action = function ()
{
    audio_play_sound(sndSfxClick, 100, false);
    oHomeScreenRacer.setOff();
}

alarm[0] = game_get_speed(gamespeed_fps) * 3;