
if(!active && oDuelController.turn == TURN.PLAYER)
{
    active = true;
}

if(clicking && active)
{
    oDuelController.changeTurn();
    active = false;
}