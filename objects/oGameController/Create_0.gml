// INIT GAME
global.debug = false;
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
    Card_Ausbremsen,
    Card_Ausmanoevrieren,
    Card_GangWechseln,
    Card_GasGeben,
    Card_Hochschalten,
    Card_InDerZone,
    Card_Konzentration,
    Card_RuhigeHand,
    Card_Schulterblick,
]

global.Tier2Cards = 
[
    Card_Automatik,
    Card_Bremsen,
    Card_Meisterfahrer,
    Card_PerfekterStart,
    Card_UebungMachtDenMeister,
    Card_Automatik,
    //Card_Vollgetankt
]

global.Tier3Cards = 
[
    Card_Beschleunigen,
]

global.gameTracks = 
[
    sndMusicTrack1,
    sndMusicTrack2,
    sndMusicTrack3,
]

// INIT LIBS
/// INIT SCRIBBLE 
scribble_font_set_default("fntBasic");

// AFTER CREATION
currentTrack = undefined; 

playMusic = function ()
{
    if(currentTrack != undefined && audio_is_playing(currentTrack))
    {
        return;
    }
    
    var roll = irandom_range(0, array_length(global.gameTracks) -1);
    currentTrack = global.gameTracks[roll];
    
    audio_play_sound(currentTrack, 100, false);
}

show_debug_overlay(global.debug);