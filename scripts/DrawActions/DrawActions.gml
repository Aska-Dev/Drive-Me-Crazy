function CardAction_DrawCards(_amount) : CardAction() constructor 
{
    amount = _amount;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        oDuelController.drawCards(amount);
        
        oActionController.actionComplete = true;
    }
}