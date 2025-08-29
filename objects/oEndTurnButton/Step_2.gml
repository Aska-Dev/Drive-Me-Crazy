if(oDuelController.turn == TURN.PLAYER && active = false)
{
    active = true;
}

if(clicking && active)
{
    oDuelController.changeTurn();
    active = false;
}