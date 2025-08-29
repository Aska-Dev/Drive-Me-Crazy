function EnemyCard_GainControlOne() : Card() constructor 
{
    name = "Training";
    desc = "+1 [sprCardIconControl]";
    
    sprite = sprCardControl;
    
    actions = [new CardAction_ModifyControl(TARGET.ENEMY, 1)]
}

function EnemyCard_GainControlTwo() : Card() constructor 
{
    name = "Training+";
    desc = "+2 [sprCardIconControl]";
    
    sprite = sprCardControl;
    
    actions = [new CardAction_ModifyControl(TARGET.ENEMY, 2)]
}