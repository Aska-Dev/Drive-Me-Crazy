function Card() constructor 
{
    /// PROPERTIES
    cId = setId();
    
    name = "default";
    desc = "Nothing to see here";
    
    actions = [new CardAction()];
    
    cost = new CardCost();
    
    sprite = sprCardNeutral;
    
    actorRef = undefined;
    canvasRef = undefined;
    
    /// METHODS
    
    /// @param {Struct.Racer} racer
    /// @return {Bool}
    isPlayable = function (racer)
    {
        if(racer.resources.speed < cost.speed)
        {
            return false;
        }
        
        if(racer.resources.control < cost.control)
        {
            return false;
        }
        
        if(racer.resources.focus < cost.focus)
        {
            return false;
        }
        
        if(cost.needsOtherCards && array_length(racer.hand.cards) <= 1)
        {
            return false;
        }
        
        return true;
    }
    
    /// @param {Struct.Racer} racer
    payCost = function (racer)
    {
        racer.resources.speed -= cost.speed;
        racer.resources.control -= cost.control;
        racer.resources.focus -= cost.focus;
    }
}