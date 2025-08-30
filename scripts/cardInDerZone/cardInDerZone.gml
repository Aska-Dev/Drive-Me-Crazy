function Card_InDerZone() : Card() constructor 
{
    name = "In der Zone";
    desc = "Du erhältst +2 [sprCardIconControl] und ziehst eine Karte"
    
    cost = new CardCost(0, 0, 1);
    sprite = sprCardFocus;
    
    actions =
    [
        new CardAction_ModifyControl(TARGET.PLAYER, 2),
        new CardAction_DrawCards(1),
        new CardAction_Discard(self)
    ]
}