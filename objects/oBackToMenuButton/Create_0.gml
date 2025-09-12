// Inherit the parent event
event_inherited();

buttonText = "Zum Menü"

action = function ()
{
    if(oGameController.isPaused)
    {
        oGameController.switchPause();
    }
    
    audio_play_sound(sndSfxClick, 100, false);
    game_restart();
}