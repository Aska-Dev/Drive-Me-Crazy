/// DISCARD
function CardAction_Discard(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        oRaceController.player.deck.discard(card);
        oRaceController.player.hand.remove(card);
        
        instance_destroy(card.canvasRef)
        
        oActionController.actionComplete = true;
    }
}

/// BANISH
function CardAction_Banish(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        oRaceController.player.deck.banish(card);
        oRaceController.player.hand.remove(card);
        
        instance_destroy(card.canvasRef)
        
        oActionController.actionComplete = true;
    }
}