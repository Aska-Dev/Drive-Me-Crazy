function Card_Automatik() : Card() constructor 
{
    name = "Automatik";
    desc = "Lege eine Karte ab und ziehe eine neue Karte nach"
    
    cost = new CardCost(0, 0, 0, true);
    
    tier = CARD_TIERS.TIER_2;
    type = CARD_TYPE.NEUTRAL;
    
    actions =
    [
        new CardAction_SelectCardAnd(new CardAction_Discard(undefined)),
        new CardAction_DrawCards(1),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Automatik();
    }
}