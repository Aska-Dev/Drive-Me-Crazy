function Card_InDerZone() : Card() constructor 
{
    name = "In der Zone";
    desc = "Du erhältst +2 [sprCardIconControl] und ziehst eine Karte"
    
    cost = new CardCost(0, 0, 1);
    
    tier = CARD_TIERS.TIER_2;
    type = CARD_TYPE.FOCUS;
    
    actions =
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 2),
        new CardAction_DrawCards(1),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_InDerZone();
    }
}