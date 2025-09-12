function Card_Rueckspiegel() : Card() constructor 
{
    name = "Rückspiegel";
    desc = "Du ziehst eine Karte"
    
    cost = new CardCost(0, 0, 1, 0);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.FOCUS;
    
    actions =
    [
        new CardAction_DrawCards(1),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Rueckspiegel();
    }
}