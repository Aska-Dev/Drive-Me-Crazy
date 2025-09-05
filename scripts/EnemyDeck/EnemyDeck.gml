function EnemyDeck_ControlToSpeed() : CardDeck() constructor 
{
    cards = 
    [
        new EnemyCard_ControlToSpeed(),
        new EnemyCard_GainControlTwo(),
        new EnemyCard_GainControlTwo(),
        new EnemyCard_GainControlOne(),
        new EnemyCard_GainControlTwo(),
        new EnemyCard_GainControlOne()
    ]
};

function EnemyDeck_SlowAndSteady() : CardDeck() constructor 
{
    cards = 
    [
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_Ausbremsen(),
        new EnemyCard_GainSpeedTwo(),
    ]
}

function EnemyDeck_Hinterhaeltig() : CardDeck() constructor 
{
    cards = 
    [
        new EnemyCard_Rammen(),
        new EnemyCard_Rammen(),
        new EnemyCard_GainSpeedTwo(),
        new EnemyCard_StealSpeedThree(),
        new EnemyCard_Schlangenlinien(),
        new EnemyCard_GainControlTwo(),
        new EnemyCard_GainControlOne(),
        new EnemyCard_Rauchwolke(),
        new EnemyCard_Rauchwolke(),
        new EnemyCard_GainSpeedOne(),
        new EnemyCard_Momentum()
    ]
}

function EnemyDeck_FastAndFurious() : CardDeck() constructor 
{
    cards =
        [
            new EnemyCard_StealSpeedThree(),
            new EnemyCard_Vollgas(),
            new EnemyCard_GainControlTwo(),
            new EnemyCard_Schlangenlinien(),
            new EnemyCard_GainSpeedOne(),
            new EnemyCard_GainSpeedOne(),
            new EnemyCard_GainSpeedOne(),
            new EnemyCard_GainSpeedOne(),
        ]
}