function Card_UebungMachtDenMeister() : Card() constructor 
{
    name = "Übung macht den\nMeister";
    desc = "Alle deine [sprCardIconControl] werden zu [sprCardIconSpeed]";
    
    tier = CARD_TIERS.TIER_3;
    type = CARD_TYPE.CONTROL;
    
    actions = 
        [
            new CardAction_TransformAllControlToSpeed(RACERS.PLAYER),
            new CardAction_Discard(self)
        ]
    
    renew = function ()
    {
        return new Card_UebungMachtDenMeister();
    }
}