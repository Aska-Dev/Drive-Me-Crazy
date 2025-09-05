function Card_GangWechseln() : Card() constructor 
{
    name = "Gang wechseln";
    desc = "Lege eine Karte ab und ziehe eine neue Karte nach"
    
    cost = new CardCost(0, 1, 0, true);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.CONTROL;
    
    actions =
    [
        new CardAction_SelectCardAnd(new CardAction_Discard(undefined)),
        new CardAction_DrawCards(1),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_GangWechseln();
    }
}