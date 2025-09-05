function Card_Bremsen() : Card() constructor 
{
    name = "Bremsen";
    desc = "Du erhältst 3 [sprCardIconControl]"
    
    cost = new CardCost(1);
    
    tier = CARD_TIERS.TIER_2;
    type = CARD_TYPE.CONTROL;
    
    actions =
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 3),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Bremsen();
    }
}