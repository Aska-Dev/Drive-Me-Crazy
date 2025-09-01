function Card_Fahrtraining() : Card() constructor 
{
    name = "Fahrtraining";
    desc = "Du erhältst 1 [sprCardIconControl]"
    
    cost = new CardCost()
    
    actions = 
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 1),
        new CardAction_Discard(self)
    ]  
}