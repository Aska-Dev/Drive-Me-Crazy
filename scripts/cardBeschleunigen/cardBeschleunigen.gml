function Card_Beschleunigen() : Card() constructor 
{
    name = "Beschleunigen";
    desc = "Du erhältst 1 [sprCardIconSpeed]"
    
    cost = new CardCost()
    
    actions = 
    [
        new CardAction_ModifySpeed(TARGET.PLAYER, 1),
        new CardAction_Discard(self)
    ]
}