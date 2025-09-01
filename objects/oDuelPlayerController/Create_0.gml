// #############################################
// PROPERTIES

acticeActors = [];

actorWaitingForSelection = undefined;

// #############################################
// INIT METHODS

/// @param {Real} amount
drawCards = function (amount)
{
    var handMaxSize = oRaceController.player.hand.maxSize;
    var handSize = array_length(oRaceController.player.hand.cards);
    
    amount = min(amount, handMaxSize - handSize);
    
    for(var i = 0; i < amount; i++)
    {
        var card = oRaceController.player.deck.drawOne();
        oRaceController.player.hand.add(card);
        
        oDuelUiController.addToPlayerHand();
    }
} 

preparePlayerForDuel = function ()
{ 
    oRaceController.player.deck.shuffle();
    drawCards(oRaceController.player.duelStartDrawAmount);
}

startTurn = function ()
{
    oEndTurnButton.active = true;
    drawCards(oRaceController.player.turnStartDrawAmount);
    
     oDuelController.currentPhase =DUEL_PHASES.SELECTING_CARD_TO_PLAY;
}

/// @param {Struct.Card} card
setSelectedCard = function (card)
{
    // Play the selected card, if the duel phase is selecting for play
    if(oDuelController.currentPhase == DUEL_PHASES.SELECTING_CARD_TO_PLAY)
    {
        playCard(card);
    }
    
    if(oDuelController.currentPhase == DUEL_PHASES.SELECTING_CARD_FOR_ACTION)
    {
        actorWaitingForSelection.selectedCard = card;
    }
}

/// @param {Struct.Card} card
playCard = function (card, checkCosts = true)
{
    if(checkCosts)
    {
        isPlayable = card.isPlayable(oRaceController.player);
        if(!isPlayable)
        {
            return false;
        }
        
        card.payCost(oRaceController.player);
    }
    
    var actor = instance_create_layer(-10, -10, "Controller", oCardActor, {card: card});
    array_push(acticeActors, actor);
}

// #############################################
// RUN AT CREATION

preparePlayerForDuel();