event_inherited();

buttonText = "Spiel beenden"

action = function ()
{
    audio_play_sound(sndSfxClick, 100, false);
    game_end();
}