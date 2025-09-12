function Card_Fahrtraining() : Card() constructor 
{
    name = "Fahrtraining";
    desc = "Resource\nDu erhältst 1 [sprCardIconControl]"
    
    tier = CARD_TIERS.TIER_0;
    type = CARD_TYPE.NEUTRAL;
    
    cost = new CardCost(0, 0, 0, 1)
    
    actions = 
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 1),
        new CardAction_Discard(self)
    ]  
    
    renew = function ()
    {
        return new Card_Fahrtraining();
    }
}