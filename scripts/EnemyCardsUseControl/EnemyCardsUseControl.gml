function EnemyCard_ControlToSpeed() : Card() constructor 
{
    name = "Übung macht den Meister";
    desc = "Alle deine [sprCardIconControl] werden zu [sprCardIconSpeed]";
    
    sprite = sprCardNeutral;
    
    actions = [new CardAction_TransformAllControlToSpeed(TARGET.ENEMY)]
}