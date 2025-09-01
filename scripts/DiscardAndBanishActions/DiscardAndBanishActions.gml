/// DISCARD
function CardAction_Discard(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        oRaceController.player.deck.discard(card);
        oRaceController.player.hand.remove(card);
        
        instance_destroy(card.canvasRef)
        
        actor.actionComplete = true;
    }
}

/// DISCARD LATER
function  CardAction_DiscardLater(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        array_push(oActionController.discardLaterCards, card);
        actor.actionComplete = true;
    }
}

/// BANISH
function CardAction_Banish(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        oRaceController.player.deck.banish(card);
        oRaceController.player.hand.remove(card);
        
        instance_destroy(card.canvasRef)
        
        actor.actionComplete = true;
    }
}