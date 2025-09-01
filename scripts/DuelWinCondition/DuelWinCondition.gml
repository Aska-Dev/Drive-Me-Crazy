function DuelWinCondition(_speed = 0, _control = 0, _focus = 0) constructor 
{
    requiredSpeed = _speed;
    requiredControl = _control;
    requiredFocus = _focus;
    
    /// @param {Struct.Racer} racer
    /// @return {Bool}
    fulfills = function (racer)
    {
        // Enough speed?
        if(racer.resources.speed < requiredSpeed)
        {
            return false;
        }
        
        // Enough control?
        if(racer.resources.control < requiredControl)
        {
            return false;
        }
        
        // Enough focus?
        if(racer.resources.focus < requiredFocus)
        {
            return false;
        }
        
        return true;
    }
}