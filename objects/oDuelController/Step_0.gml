if(oRaceController.player.resources.speed >= 10)
{
    winner = TURN.PLAYER;
}

if(enemy.resources.speed >= 10)
{
    winner = TURN.ENEMY;
}

if(turn == TURN.PLAYER && array_length(oRaceController.player.hand.cards) == 0)
{
    changeTurn();
}