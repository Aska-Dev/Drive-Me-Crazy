function Card_GangWechseln() : Card() constructor 
{
    name = "Gang wechseln";
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