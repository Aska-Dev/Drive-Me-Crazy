function Card_Schulterblick() : Card() constructor 
{
    name = "Schulterblick";
    desc = "Du ziehst zwei Karten"
    
    cost = new CardCost(0, 0, 2);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.FOCUS;
    
    actions =
    [
        new CardAction_DrawCards(2),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Schulterblick();
    }
}