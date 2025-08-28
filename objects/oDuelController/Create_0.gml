/// INIT METHODS

/// @param {Struct.Racer} actor
/// @param {Struct.Card} card
playCard = function (actor, card)
{
    if(!card.isPlayable(actor))
    {
        return false;
    }
    
    // Pay the resource cost of the card
    card.payCost(actor);
    
    mode = DUEL_MODES.HANDLING_ACTION;
    instance_create_layer(-10, -10, "Controller", oActionController, {card : card})
}

/// @param {Struct.Card} card 
selectCard = function (card)
{
    /// PLAYER IS SELECTING A CARD TO PLAY 
    if(mode == DUEL_MODES.PLAYING)
    {
        oDuelController.playCard(oRaceController.player, card);
    }
    
    if(mode == DUEL_MODES.SELECTING && instance_exists(oActionController))
    {
        oActionController.selectedCard = card;
        mode = DUEL_MODES.HANDLING_ACTION;
    }
}

/// @param {Real} amount
drawCards = function (amount)
{
    var handMaxSize = oRaceController.player.hand.maxSize
    var handSize = array_length(oRaceController.player.hand.cards);
    
    amount = min(amount, handMaxSize - handSize);
       
    for(var i = 0; i < amount; i++)
    {
        var drawCard = oRaceController.player.deck.drawOne();
        oRaceController.player.hand.add(drawCard);
        
        oDuelPlayerUiController.addToPlayerHand();  
    }
}

changeTurn = function ()
{
    if(turn == TURN.ENEMY)
    {
        turn = TURN.PLAYER
        startPlayerTurn();
    }
    else
    {
        turn = TURN.ENEMY;
        instance_create_layer(-10, -10, "Controller", oDuelEnemyController);
    }
}

startPlayerTurn = function ()
{
    drawCards(oRaceController.player.turnStartDrawAmount)
}

startDuel = function()
{
    oRaceController.player.deck.shuffle();
    drawCards(oRaceController.player.turnStartDrawAmount);
}

// INIT DUELL

turn = TURN.PLAYER;

mode = DUEL_MODES.PLAYING;

enemy = new Racer();
enemy.resources.speed = 5;

startDuel();

/// INIT UI
layer_set_visible(UI_LAYER_DUEL, true);

