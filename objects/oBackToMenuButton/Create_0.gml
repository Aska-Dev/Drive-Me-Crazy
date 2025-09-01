// Inherit the parent event
event_inherited();

buttonText = "Zum Menü"

action = function ()
{
    audio_play_sound(sndSfxClick, 100, false);
    room_goto(Homemenu);
}