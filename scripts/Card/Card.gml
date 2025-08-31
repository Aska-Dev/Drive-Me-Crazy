function Card() constructor 
{
    /// PROPERTIES
    cId = setId();
    
    name = "default";
    desc = "Nothing to see here";
    
    actions = [new CardAction()];
    
    cost = new CardCost();
    
    sprite = sprCardNeutral;
    canvasRef = undefined;
    
    /// METHODS
    
    /// @param {Struct.Racer} actor
    /// @return {Bool}
    isPlayable = function (actor)
    {
        if(actor.resources.speed < cost.speed)
        {
            return false;
        }
        
        if(actor.resources.control < cost.control)
        {
            return false;
        }
        
        if(actor.resources.focus < cost.focus)
        {
            return false;
        }
        
        if(cost.needsOtherCards && array_length(actor.hand.cards) <= 1)
        {
            return false;
        }
        
        return true;
    }
    
    /// @param {Struct.Racer} actor
    payCost = function (actor)
    {
        actor.resources.speed -= cost.speed;
        actor.resources.control -= cost.control;
        actor.resources.focus -= cost.focus;
    }
}