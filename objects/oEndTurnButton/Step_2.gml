active = oDuelController.turn == TURN.PLAYER

if(clicking && active)
{
    audio_play_sound(sndSfxClick, 100, false);
    oDuelController.changeTurn();
    active = false;
}