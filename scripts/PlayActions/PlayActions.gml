function CardAction_PlayCardForFree(_card) : CardAction() constructor 
{
    card = _card;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        oDuelPlayerController.playCard(card, false);
        
        actor.actionComplete = true;
    }
}

function CardAction_AdditionalEnemyTurn(_amount): CardAction() constructor 
{
    amount = _amount;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        oDuelEnemyController.turns += amount;
        
        actor.actionComplete = true;
    }
}

function CardAction_IfThenPlay(_condition, _action): CardAction() constructor 
{
    condition = _condition;
    action = _action;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(condition())
        {
            action.run(actor);
        }
        else
        {
            actor.actionComplete = true;
        }
    }
}