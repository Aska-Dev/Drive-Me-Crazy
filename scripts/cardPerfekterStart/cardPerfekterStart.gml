function Card_PerfekterStart() : Card() constructor 
{
    name = "Perfekter Start";
    desc = "EINMALIG\n+3 [sprCardIconSpeed]"
    
    tier = CARD_TIERS.TIER_2;
    type = CARD_TYPE.SPEED;
    
    actions = 
    [
        new CardAction_ModifySpeed(RACERS.PLAYER, 3),
        new CardAction_Banish(self)
    ]  
    
    renew = function ()
    {
        return new Card_PerfekterStart();
    }
}