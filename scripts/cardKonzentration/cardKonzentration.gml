function Card_Konzentration() : Card() constructor 
{
    name = "Konzentration";
    desc = "Du erhältst 1 [sprCardIconFocus]"
    
    cost = new CardCost()
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.NEUTRAL;
    
    actions = 
    [
        new CardAction_ModifyFocus(RACERS.PLAYER, 1),
        new CardAction_Discard(self)
    ]  
    
    renew = function ()
    {
        return new Card_Konzentration();
    }
}