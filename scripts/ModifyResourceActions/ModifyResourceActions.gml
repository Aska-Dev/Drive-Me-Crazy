/// MODIFY SPEED
function CardAction_ModifySpeed(_target, _value) : CardAction() constructor 
{
    target = _target;
    value = _value;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(target == RACERS.PLAYER)
        {
            oRaceController.player.resources.speed = max(0, oRaceController.player.resources.speed + value);
        }
        else
        {
            oDuelController.enemy.resources.speed = max(0, oDuelController.enemy.resources.speed + value);
        }
        
        actor.actionComplete = true;
    };
}

/// STEAL SPEED
function CardAction_StealSpeed(_target, _maxValue) : CardAction() constructor 
{
    target = _target;
    maxValue = _maxValue;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(target == RACERS.PLAYER)
        {
            stolenSpeed = min(maxValue, oRaceController.player.resources.speed);
            oRaceController.player.resources.speed -= stolenSpeed;
            oDuelController.enemy.resources.speed += stolenSpeed;
        }
        else
        {
            stolenSpeed = min(3,  oDuelController.enemy.resources.speed);
            oRaceController.player.resources.speed += stolenSpeed;
            oDuelController.enemy.resources.speed -= stolenSpeed;
        }
        
        actor.actionComplete = true;
    }
}

/// MODIFY CONTROL
function CardAction_ModifyControl(_target, _value) : CardAction() constructor 
{
    target = _target;
    value = _value;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(target == RACERS.PLAYER)
        {
            oRaceController.player.resources.control = max(0, oRaceController.player.resources.control + value);
        }
        else
        {
            oDuelController.enemy.resources.control = max(0, oDuelController.enemy.resources.control + value);
        }
        
        actor.actionComplete = true;
    };
}

// TRANSFORM ALL CONTROL TO SPEED
function CardAction_TransformAllControlToSpeed(_target) : CardAction() constructor 
{
    target = _target;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(target == RACERS.PLAYER)
        {
            oRaceController.player.resources.speed += oRaceController.player.resources.control;
            oRaceController.player.resources.control = 0;
        }
        else
        {
            oDuelController.enemy.resources.speed += oDuelController.enemy.resources.control;
            oDuelController.enemy.resources.control = 0;
        }
        
        actor.actionComplete = true;
    }
}

/// MODIFY FOCUS
function CardAction_ModifyFocus(_target, _value) : CardAction() constructor 
{
    target = _target;
    value = _value;
    
    run = function (actor)
    {
        actor.actionRunning = true;
        
        if(target == RACERS.PLAYER)
        {
            oRaceController.player.resources.focus = max(0, oRaceController.player.resources.focus + value);
        }
        else
        {
            oDuelController.enemy.resources.focus = max(0, oDuelController.enemy.resources.focus + value);
        }
        
        actor.actionComplete = true;
    };
}