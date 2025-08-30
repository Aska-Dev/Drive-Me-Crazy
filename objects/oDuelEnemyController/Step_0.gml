if(oDuelController.winner != undefined)
{
    instance_destroy(self);
}

if(card != undefined)
{
    with(card.canvasRef)
    {
        if(y >= room_height * 0.35)
        {
            speed = 0;
        }
    }
}

if(playingCard && !instance_exists(oActionController))
{
    oDuelController.enemy.deck.discard(card);
    instance_destroy(card.canvasRef);
    endTurn();
}