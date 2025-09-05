function Card_Hochschalten() : Card() constructor 
{
    name = "Hochschalten";
    desc = "Du erhältst 2 [sprCardIconSpeed]"
    
    cost = new CardCost(0, 2);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.CONTROL;
    
    actions =
    [
        new CardAction_ModifySpeed(RACERS.PLAYER, 2),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Hochschalten();
    }
}