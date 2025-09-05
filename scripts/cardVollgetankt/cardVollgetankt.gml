function Card_Vollgetankt() : Card() constructor 
{
    name = "Vollgetankt";
    desc = "Wähle eine Karte und spiele sie ohne ihre Kosten zu zahlen."
    
    cost = new CardCost(0, 0, 0, true)
    
    tier = CARD_TIERS.TIER_0;
    type = CARD_TYPE.NEUTRAL;
    
    actions = 
    [
        new CardAction_SelectCardAnd(new CardAction_PlayCardForFree(undefined)),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Vollgetankt();
    }  
}