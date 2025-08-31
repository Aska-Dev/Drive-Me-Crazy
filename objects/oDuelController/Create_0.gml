/// INIT METHODS

/// @param {Struct.Racer} actor
/// @param {Struct.Card} card
playCard = function (actor, card, payCost = true)
{
    if(payCost)
    {
        if(!card.isPlayable(actor))
        {
            return false;
        }
        
        // Pay the resource cost of the card
        card.payCost(actor);
    }
    
    mode = DUEL_MODES.HANDLING_ACTION;
    
    if(instance_exists(oActionController))
    {
        oActionController.playCard(card);
    }
    else
    {
        instance_create_layer(-10, -10, "Controller", oActionController, {card : card});
    }
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
    
    if(mode == DUEL_MODES.SELECTING_WHILE_DRAWING && instance_exists(oDuelDiscardHandCardController))
    {
        oDuelDiscardHandCardController.selectedCard = card;
        mode = DUEL_MODES.HANDLING_ACTION;
    }
}

/// @param {Real} amount
drawCards = function (amount)
{
    var deck = oRaceController.player.deck.cards;
    var discarded = oRaceController.player.deck.discardedCards
    var hand = oRaceController.player.hand.cards;
    
    var handMaxSize = oRaceController.player.hand.maxSize
    var handSize = array_length(oRaceController.player.hand.cards);
    
    amount = min(amount, handMaxSize - handSize);
    
    if(amount <= 0)
    {
        mode = DUEL_MODES.SELECTING_WHILE_DRAWING;
        return;
    }
    
    for(var i = 0; i < amount; i++)
    {
        var drawCard = oRaceController.player.deck.drawOne();
        oRaceController.player.hand.add(drawCard);
        
        oDuelPlayerUiController.addToPlayerHand();  
    }
}

changeTurn = function ()
{
    if(turn == TURN.ENEMY && enemyTurns >= enemyTurnsBeforePlayer + enemyTurnMod)
    {
        turn = TURN.PLAYER;
        
        enemyTurnMod = 0;
        enemyTurns = 0;
        
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

resetPlayerResources = function ()
{
    oRaceController.player.resources.speed = 0;
    oRaceController.player.resources.control = 0;
    oRaceController.player.resources.focus = 0;
    
    oRaceController.player.deck.discardedCards = array_concat(oRaceController.player.deck.discardedCards, oRaceController.player.hand.cards);
    oRaceController.player.hand.cards = [];
}

startDuel = function()
{
    oRaceController.player.deck.reset();
    oRaceController.player.deck.shuffle();
    drawCards(oRaceController.player.duelStartDrawAmount);
}

// INIT DUELL

winner = undefined;

turn = TURN.PLAYER;
mode = DUEL_MODES.PLAYING;

msgSeq = undefined;

enemy = new EnemyRacer();

enemyTurnsBeforePlayer = 1;
enemyTurnMod = 0;
enemyTurns = 0;

/// INIT UI
layer_set_visible(UI_LAYER_DUEL, true);

button = instance_create_layer(0, 0, UI_LAYER_DUEL, oEndTurnButton);

if(global.debug)
{
    duelView = dbg_view("Duel Overview", true);
    enemySection = dbg_section("Enemy");
    enemyRef = ref_create(enemy.deck.cards[0], "Enemy");
    dbg_watch(enemyRef);
}