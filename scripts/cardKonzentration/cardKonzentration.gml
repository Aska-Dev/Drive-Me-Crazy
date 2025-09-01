function Card_Konzentration() : Card() constructor 
{
    name = "Konzentration";
    desc = "Du erhältst 1 [sprCardIconFocus]"
    
    cost = new CardCost()
    
    actions = 
    [
        new CardAction_ModifyFocus(RACERS.PLAYER, 1),
        new CardAction_Discard(self)
    ]  
}