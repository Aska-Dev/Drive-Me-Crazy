if(actor != undefined && actor.finished)
{
    // Destroy the canvas and discard the card
    oDuelController.enemy.deck.discard(card);
    instance_destroy(card.canvasRef);
    
    // Destroy the card actor and set the duel phase 
    instance_destroy(actor);
    actor = undefined;
    oDuelController.currentPhase = DUEL_PHASES.ENEMY_PLAYING_CARD;
    
    turns--;
    if(turns <= 0)
    {
        endTurn();
    }
    else
    {
        spawnCard();
    }
}

if(card.canvasRef != undefined && card.canvasRef.y >= ENEMY_CARD_DESTINATION_Y)
{
    card.canvasRef.speed = 0;
}