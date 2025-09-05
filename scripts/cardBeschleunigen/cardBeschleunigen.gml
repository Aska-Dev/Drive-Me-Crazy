function Card_Beschleunigen() : Card() constructor 
{
    name = "Beschleunigen";
    desc = "Du erhältst 1 [sprCardIconSpeed]";
    
    tier = CARD_TIERS.TIER_0;
    type = CARD_TYPE.NEUTRAL;
    
    cost = new CardCost()
    
    actions = 
    [
        new CardAction_ModifySpeed(RACERS.PLAYER, 1),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Beschleunigen();
    }
}