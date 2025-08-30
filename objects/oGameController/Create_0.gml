// INIT GAME
randomize();

global.enemyDecks = 
[
    EnemyDeck_ControlToSpeed,
    EnemyDeck_SlowAndSteady,
    EnemyDeck_Hinterhaeltig,
    EnemyDeck_FastAndFurious
]

global.IDs = [];

global.Tier0Cards = 
[
    Card_Beschleunigen,
    Card_Fahrtraining,
    Card_Konzentration,
]

global.Tier1Cards = 
[
    Card_RuhigeHand, 
    Card_Ausbremsen,
    Card_Ausmanoevrieren,
    Card_GangWechseln,
    Card_Hochschalten,
    Card_InDerZone,
    Card_Meisterfahrer,
    Card_Schulterblick,
]

global.Tier2Cards = 
[
    Card_Bremsen,
    Card_UebungMachtDenMeister,
    //Card_Vollgetankt
]

global.Tier3Cards = 
[
    Card_Beschleunigen,
]

// INIT LIBS
/// INIT SCRIBBLE 
scribble_font_set_default("fntBasic");

// AFTER CREATION 
room_goto(LvlDuel);