/// MODIFY SPEED
function CardAction_ModifySpeed(_target, _value) : CardAction() constructor 
{
    target = _target;
    value = _value;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        if(target == TARGET.PLAYER)
        {
            oRaceController.player.resources.speed = max(0, oRaceController.player.resources.speed + value);
        }
        else
        {
            oDuelController.enemy.resources.speed = max(0, oDuelController.enemy.resources.speed + value);
        }
        
        oActionController.actionComplete = true;
    };
}

/// MODIFY CONTROL
function CardAction_ModifyControl(_target, _value) : CardAction() constructor 
{
    target = _target;
    value = _value;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        if(target == TARGET.PLAYER)
        {
            oRaceController.player.resources.control = max(0, oRaceController.player.resources.control + value);
        }
        else
        {
            oDuelController.enemy.resources.control = max(0, oDuelController.enemy.resources.control + value);
        }
        
        oActionController.actionComplete = true;
    };
}

// TRANSFORM ALL CONTROL TO SPEED
function CardAction_TransformAllControlToSpeed(_target) : CardAction() constructor 
{
    target = _target;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        if(target == TARGET.PLAYER)
        {
            oRaceController.player.resources.speed += oRaceController.player.resources.control;
            oRaceController.player.resources.control = 0;
        }
        else
        {
            oDuelController.enemy.resources.speed += oDuelController.enemy.resources.control;
            oDuelController.enemy.resources.control = 0;
        }
        
        oActionController.actionComplete = true;
    }
}

/// MODIFY FOCUS
function CardAction_ModifyFocus(_target, _value) : CardAction() constructor 
{
    target = _target;
    value = _value;
    
    run = function ()
    {
        oActionController.actionRunning = true;
        
        if(target == TARGET.PLAYER)
        {
            oRaceController.player.resources.focus = max(0, oRaceController.player.resources.focus + value);
        }
        else
        {
            oDuelController.enemy.resources.focus = max(0, oDuelController.enemy.resources.focus + value);
        }
        
        oActionController.actionComplete = true;
    };
}