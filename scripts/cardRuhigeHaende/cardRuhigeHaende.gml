function Card_RuhigeHand() : Card() constructor 
{
    name = "Ruhige Hände";
    desc = "Du erhältst 2 [sprCardIconControl]"
    
    cost = new CardCost()
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.CONTROL;
    
    actions = 
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 2),
        new CardAction_Discard(self)
    ]  
    
    renew = function ()
    {
        return new Card_RuhigeHand();
    }
}