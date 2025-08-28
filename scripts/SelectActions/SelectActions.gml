function CardAction_SelectCardAnd(_cardAction) : CardAction() constructor 
{
    action = _cardAction;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        oActionController.controllerAction = CONTROLLER_ACTIONS.SELECTING;
        oActionController.followUpAction = action;
    }
}