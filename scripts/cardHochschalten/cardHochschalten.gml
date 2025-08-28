function Card_Hochschalten() : Card() constructor 
{
    name = "Hochschalten";
    desc = "Du erhältst 2 [sprCardIconSpeed]"
    
    cost = new CardCost(0, 2);
    sprite = sprCardControl;
    
    actions =
    [
        new CardAction_ModifySpeed(TARGET.PLAYER, 2),
        new CardAction_Discard(self)
    ]
}