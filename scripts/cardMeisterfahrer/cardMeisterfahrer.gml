function Card_Meisterfahrer() : Card() constructor 
{
    name = "Meisterfahrer";
    desc = "EINMAL\nDu erhältst 3 [sprCardIconControl]"
    
    cost = new CardCost();
    sprite = sprCardControl;
    
    actions =
    [
        new CardAction_ModifyControl(RACERS.PLAYER, 3),
        new CardAction_Banish(self)
    ]
}