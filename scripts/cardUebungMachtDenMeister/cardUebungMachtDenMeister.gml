function Card_UebungMachtDenMeister() : Card() constructor 
{
    name = "Übung macht den Meister";
    desc = "Alle deine [sprCardIconControl] werden zu [sprCardIconSpeed]";
    
    actions = 
        [
            new CardAction_TransformAllControlToSpeed(TARGET.PLAYER),
            new CardAction_Discard(self)
        ]
}