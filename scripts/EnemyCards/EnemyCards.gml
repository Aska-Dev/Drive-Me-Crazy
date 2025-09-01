function EnemyCard_GainControlOne() : Card() constructor 
{
    name = "Training";
    desc = "+1 [sprCardIconControl]";
    
    sprite = sprCardControl;
    
    actions = [new CardAction_ModifyControl(RACERS.ENEMY, 1)]
}

function EnemyCard_GainControlTwo() : Card() constructor 
{
    name = "Training+";
    desc = "+2 [sprCardIconControl]";
    
    sprite = sprCardControl;
    
    actions = [new CardAction_ModifyControl(RACERS.ENEMY, 2)]
}

function EnemyCard_ControlToSpeed() : Card() constructor 
{
    name = "Übung macht den Meister";
    desc = "Alle deine [sprCardIconControl] werden zu [sprCardIconSpeed]";
    
    sprite = sprCardNeutral;
    
    actions = [new CardAction_TransformAllControlToSpeed(RACERS.ENEMY)]
}

function EnemyCard_GainSpeedOne() : Card() constructor 
{
    name = "Beschleunigung";
    desc = "+1 [sprCardIconSpeed]";
    
    sprite = sprCardSpeed;
    
    actions = [new CardAction_ModifySpeed(RACERS.ENEMY, 1)]
}

function EnemyCard_GainSpeedTwo() : Card() constructor 
{
    name = "Beschleunigung+";
    desc = "+2 [sprCardIconSpeed]";
    
    sprite = sprCardSpeed;
    
    actions = [new CardAction_ModifySpeed(RACERS.ENEMY, 2)]
}

function EnemyCard_StealSpeedThree() : Card() constructor 
{
    name = "Im Windschatten";
    desc = "Klaue dem Gegner bis zu 2 [sprCardIconSpeed] und erhalte sie selbst";
    
    sprite = sprCardSpeed;
    
    actions = [new CardAction_StealSpeed(RACERS.PLAYER, 2)]
}

function EnemyCard_Ausbremsen() : Card() constructor 
{
    name = "Ausbremsen";
    desc = "Der Gegner verliert 1 [sprCardIconSpeed]";
    
    sprite = sprCardSpeed;
    
    actions = [new CardAction_ModifySpeed(RACERS.PLAYER, -1)]
}

function EnemyCard_Schlangenlinien() : Card() constructor 
{
    name = "Schlangenlinien";
    desc = "Der Gegner 2 [sprCardIconSpeed] verliert";
    
    cost = new CardCost(0, 2, 0);
    
    sprite = sprCardSpeed;
    
    actions =
        [
            new CardAction_IfThenPlay
            (
                function () {
                    return oDuelController.enemy.resources.control >= 2;
                },
                new CardAction_ModifySpeed(RACERS.PLAYER, -2)
            ),
            new CardAction_IfThenPlay
            (
                function () {
                    return oDuelController.enemy.resources.control >= 2;
                },
                new CardAction_ModifyControl(RACERS.ENEMY, -2)
            )
        ]
}

function EnemyCard_Rauchwolke() : Card() constructor 
{
    name = "Rauchwolke";
    desc = "Der Gegner verliert 1 [sprCardIconFocus]";
    
    sprite = sprCardFocus;
    actions = [new CardAction_ModifyFocus(RACERS.PLAYER, -1)]
}

function EnemyCard_Rammen() : Card() constructor 
{
    name = "Rammen";
    desc = "Der Gegner muss eine Karte abwerfen";
    
    sprite = sprCardNeutral;
    actions = [new CardAction_SelectCardAnd(new CardAction_Discard(undefined))]
}

function EnemyCard_Momentum() : Card() constructor 
{
    name = "Momentum";
    desc = "Spiele die nächsten zwei Karten aus";
    
    sprite = sprCardNeutral;
    actions = [new CardAction_AdditionalEnemyTurn(2)]
}

function EnemyCard_Vollgas() : Card() constructor 
{
    name = "Immer weiter";
    desc = "+2 [sprCardIconSpeed] und spiele 1 weitere Karte";
    
    sprite = sprCardSpeed;
    actions = [new CardAction_ModifySpeed(RACERS.ENEMY, 2), new CardAction_AdditionalEnemyTurn(1)]
}