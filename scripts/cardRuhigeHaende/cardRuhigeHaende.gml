function Card_RuhigeHand() : Card() constructor 
{
    name = "Ruhige Hände";
    desc = "Du erhältst 2 [sprCardIconControl]"
    
    cost = new CardCost()
    
    actions = 
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 2),
        new CardAction_Discard(self)
    ]  
}