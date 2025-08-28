function Card_Schulterblick() : Card() constructor 
{
    name = "Schulterblick";
    desc = "Du ziehst zwei Karten"
    
    cost = new CardCost(0, 0, 2);
    sprite = sprCardFocus;
    
    actions =
    [
        new CardAction_DrawCards(2),
        new CardAction_Discard(self)
    ]
}