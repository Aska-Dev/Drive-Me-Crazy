function Card_PerfekterStart() : Card() constructor 
{
    name = "Perfekter Start";
    desc = "EINMALIG\n+3 [sprCardIconSpeed]"
    
    sprite = sprCardSpeed;
    
    actions = 
    [
        new CardAction_ModifySpeed(RACERS.PLAYER, 3),
        new CardAction_Banish(self)
    ]  
}