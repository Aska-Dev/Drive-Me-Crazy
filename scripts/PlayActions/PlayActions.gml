function CardAction_PlayCardForFree(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        oDuelController.playCard(oRaceController.player, card, false);
        
        oActionController.actionComplete = true;
    }
}

function CardAction_AdditionalEnemyTurn(_amount): CardAction() constructor 
{
    amount = _amount;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        oDuelController.enemyTurnMod += amount;
        
        oActionController.actionComplete = true;
    }
}

function CardAction_IfThenPlay(_condition, _action): CardAction() constructor 
{
    condition = _condition;
    action = _action;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        if(condition())
        {
            action.run();
        }
        else
        {
            oActionController.actionComplete = true;
        }
    }
}