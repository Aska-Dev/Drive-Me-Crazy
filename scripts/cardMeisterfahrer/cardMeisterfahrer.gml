function Card_Meisterfahrer() : Card() constructor 
{
    name = "Meisterfahrer";
    desc = "EINMAL\nDu erhältst 3 [sprCardIconControl]"
    
    cost = new CardCost();
    
    tier = CARD_TIERS.TIER_2;
    type = CARD_TYPE.CONTROL;
    
    actions =
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 3),
        new CardAction_Banish(self)
    ]
    
    renew = function ()
    {
        return new Card_Meisterfahrer();
    }
}