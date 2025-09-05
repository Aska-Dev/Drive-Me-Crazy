function Card_Ausmanoevrieren() : Card() constructor 
{
    name = "Ausmanövrieren";
    desc = "Gegner verliert 2 [sprCardIconControl]"
    
    cost = new CardCost(0, 1, 0);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.CONTROL;
    
    actions =
    [
        new CardAction_ModifyControl(RACERS.ENEMY, -2),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Ausmanoevrieren();
    }
}