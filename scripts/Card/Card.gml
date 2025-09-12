function Card() constructor 
{
    /// PROPERTIES
    cId = setId();
    
    name = "default";
    desc = "Nothing to see here";
    
    actions = [new CardAction()];
    
    cost = new CardCost();
    
    tier = CARD_TIERS.TIER_0;
    type = CARD_TYPE.NEUTRAL;
    
    actorRef = undefined;
    canvasRef = undefined;
    
    /// METHODS
    
    renew = function ()
    {
        return new Card();
    }
    
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
        
        if(racer.reaction < cost.reaction)
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
        
        racer.reaction -= cost.reaction;
    }
    
    getSprite = function ()
    {
        switch(type)
        {
            case CARD_TYPE.NEUTRAL:
                return sprCardNeutral;
            
            case CARD_TYPE.SPEED:
                return sprCardSpeed;
            
            case CARD_TYPE.CONTROL:
                return sprCardControl;
            
            case CARD_TYPE.FOCUS:
                return sprCardFocus;
        }
    }
}