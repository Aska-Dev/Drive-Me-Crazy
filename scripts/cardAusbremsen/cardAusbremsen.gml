function Card_Ausbremsen() : Card() constructor 
{
    name = "Ausbremsen";
    desc = "Gegner verliert 2 [sprCardIconSpeed]"
    
    cost = new CardCost(1);
    sprite = sprCardSpeed;
    
    actions =
    [
        new CardAction_ModifySpeed(RACERS.ENEMY, -2),
        new CardAction_Discard(self)
    ]
}