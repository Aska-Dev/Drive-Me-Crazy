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
            oRaceController.player.resources.speed += value;
        }
        else
        {
            oDuelController.enemy.resources.speed += value;
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
            oRaceController.player.resources.control += value;
        }
        else
        {
            oDuelController.enemy.resources.control += value;
        }
        
        oActionController.actionComplete = true;
    };
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
            oRaceController.player.resources.focus += value;
        }
        else
        {
            oDuelController.enemy.resources.focus += value;
        }
        
        oActionController.actionComplete = true;
    };
}