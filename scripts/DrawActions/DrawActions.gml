function CardAction_DrawCards(_amount) : CardAction() constructor 
{
    amount = _amount;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        oDuelPlayerController.drawCards(amount);
        
        actor.actionComplete = true;
    }
}