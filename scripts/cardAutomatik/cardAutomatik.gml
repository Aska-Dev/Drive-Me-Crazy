function Card_Automatik() : Card() constructor 
{
    name = "Automatik";
    desc = "Lege eine Karte ab und ziehe eine neue Karte nach"
    
    cost = new CardCost();
    sprite = sprCardNeutral;
    
    actions =
    [
        new CardAction_SelectCardAnd(new CardAction_Discard(undefined)),
        new CardAction_DrawCards(1),
        new CardAction_Discard(self)
    ]
}