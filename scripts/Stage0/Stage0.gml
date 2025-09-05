function EnemyDeck_Stage0_Fahranfaenger(): CardDeck() constructor 
{
    stage = 0;
    
    cards = 
    [
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_GainControlOne(),
        new EnemyCard_GainControlOne(),
        new EnemyCard_DefensivFahren()
    ]
}

function EnemyDeck_Stage0_Quereinsteiger(): CardDeck() constructor 
{
    stage = 0;
    
    cards = 
    [
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_GainSpeedTwo(),
        new EnemyCard_GainFocusOne(),
    ]
}