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

global.gameTracks = 
[
    sndMusicTrack1,
    sndMusicTrack2,
    sndMusicTrack3,
]

// INIT LIBS
/// INIT ARCHIVE
InitData();

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