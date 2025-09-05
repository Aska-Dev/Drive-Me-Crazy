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

function CardAction_IfThenPlay(_condition, _actions): CardAction() constructor 
{
    condition = _condition;
    actions = _actions;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(condition())
        {
            for(var i = 0; i < array_length(actions); i++)
            {
                actions[i].run(actor);
            }
        }
        else
        {
            actor.actionComplete = true;
        }
    }
}