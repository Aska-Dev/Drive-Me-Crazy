function CardAction_SelectCardAnd(_cardAction) : CardAction() constructor 
{
    action = _cardAction;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(array_length(oRaceController.player.hand.cards) <= 0)
        {
            actor.actionComplete = true;
            return;
        }
        
        array_insert(actor.actions, actor.currentActionPos + 1, action)
        actor.waitingForSelection = true;
    }
}