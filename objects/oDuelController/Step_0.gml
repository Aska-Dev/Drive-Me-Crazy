if(oRaceController.player.resources.speed >= 10)
{
    winner = TURN.PLAYER;
}

if(turn == TURN.PLAYER && array_length(oRaceController.player.hand.cards) == 0)
{
    changeTurn();
}