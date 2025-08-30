function CardAction_SelectCardAnd(_cardAction) : CardAction() constructor 
{
    action = _cardAction;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        if(array_length(oRaceController.player.hand.cards) <= 0)
        {
            oActionController.actionComplete = true;
            return;
        }
        
        oActionController.controllerAction = CONTROLLER_ACTIONS.SELECTING;
        oActionController.followUpAction = action;
    }
}