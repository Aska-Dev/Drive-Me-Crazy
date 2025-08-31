function Card_Vollgetankt() : Card() constructor 
{
    name = "Vollgetankt";
    desc = "Wähle eine Karte und spiele sie ohne ihre Kosten zu zahlen."
    
    cost = new CardCost(0, 0, 0, true)
    
    actions = 
    [
        new CardAction_DiscardLater(self),
        new CardAction_SelectCardAnd(new CardAction_PlayCardForFree(undefined)),
    ]  
}