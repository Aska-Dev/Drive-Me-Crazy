function Card_GasGeben() : Card() constructor 
{
    name = "Gas geben";
    desc = "Du erhältst 1 [sprCardIconSpeed]"
    
    cost = new CardCost(0, 1);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.CONTROL;
    
    actions =
    [
        new CardAction_ModifySpeed(RACERS.PLAYER, 1),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_GasGeben();
    }
}