function Card_Ausmanoevrieren() : Card() constructor 
{
    name = "Ausmanövrieren";
    desc = "Gegner verliert 2 [sprCardIconControl]"
    
    cost = new CardCost(0, 1, 0);
    sprite = sprCardControl;
    
    actions =
    [
        new CardAction_ModifyControl(TARGET.ENEMY, -2),
        new CardAction_Discard(self)
    ]
}