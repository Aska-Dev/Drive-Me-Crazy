event_inherited();

buttonText = "Weiterfahren";
active = false;

action = function ()
{
    audio_play_sound(sndSfxClick, 100, false);
    oRaceController.nextEvent();
}