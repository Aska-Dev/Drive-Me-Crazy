function Card_Bremsen() : Card() constructor 
{
    name = "Bremsen";
    desc = "Du erhältst 3 [sprCardIconControl]"
    
    cost = new CardCost(1);
    sprite = sprCardControl;
    
    actions =
    [
        new CardAction_ModifyControl(TARGET.PLAYER, 3),
        new CardAction_Discard(self)
    ]
}