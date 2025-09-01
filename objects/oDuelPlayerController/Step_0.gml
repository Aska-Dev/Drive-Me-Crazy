// If the player has no hand cards, automatically end their turn
if(oDuelController.activeRacer == RACERS.PLAYER && array_length(oRaceController.player.hand.cards) == 0 && oDuelController.currentPhase == DUEL_PHASES.SELECTING_CARD_TO_PLAY)
{
    oDuelController.nextTurn();
}

if(oDuelController.activeRacer == RACERS.PLAYER && oDuelController.currentPhase = DUEL_PHASES.PLAYING_CARD_ACTIONS)
{
    var allActorsFinished = true;
    for(var i = 0; i < array_length(acticeActors); i++)
    {
        if(!acticeActors[i].finished)
        {
            allActorsFinished = false;
        }
    }
    
    if(allActorsFinished)
    {
        instance_destroy(oCardActor);
        acticeActors = [];
        
        oDuelController.currentPhase = DUEL_PHASES.SELECTING_CARD_TO_PLAY;
    }
}