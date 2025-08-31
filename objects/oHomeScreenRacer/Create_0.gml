setOff = function ()
{ 
    audio_stop_all();
    audio_play_sound(sndSfxStart1, 150, false);
    alarm[0] = game_get_speed(gamespeed_fps) * 1.4;
}