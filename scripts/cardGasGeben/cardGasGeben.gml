function Card_GasGeben() : Card() constructor 
{
    name = "Gas geben";
    desc = "Du erhältst 1 [sprCardIconSpeed]"
    
    cost = new CardCost(0, 1);
    sprite = sprCardControl;
    
    actions =
    [
        new CardAction_ModifySpeed(TARGET.PLAYER, 1),
        new CardAction_Discard(self)
    ]
}