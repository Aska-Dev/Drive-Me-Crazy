function Card_UebungMachtDenMeister() : Card() constructor 
{
    name = "Übung macht den\nMeister";
    desc = "Alle deine [sprCardIconControl] werden zu [sprCardIconSpeed]";
    
    actions = 
        [
            new CardAction_TransformAllControlToSpeed(RACERS.PLAYER),
            new CardAction_Discard(self)
        ]
}