active = oDuelController.turn == TURN.PLAYER

if(clicking && active)
{
    oDuelController.changeTurn();
    active = false;
}