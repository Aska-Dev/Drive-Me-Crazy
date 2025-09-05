function Card_Ausbremsen() : Card() constructor 
{
    name = "Ausbremsen";
    desc = "Gegner verliert 2 [sprCardIconSpeed]"
    
    cost = new CardCost(1);
    
    tier = CARD_TIERS.TIER_1;
    type = CARD_TYPE.SPEED;
    
    actions =
    [
        new CardAction_ModifySpeed(RACERS.ENEMY, -2),
        new CardAction_Discard(self)
    ]
    
    renew = function ()
    {
        return new Card_Ausbremsen();
    }
}