// #############################################
// PROPERTIES

isPaused = false;
isPausable = true;
pauseSeq = undefined;

currentTrack = undefined; 

global.debug = false;

global.IDs = [];

global.gameTracks = 
[
    sndMusicTrack1,
    sndMusicTrack2,
    sndMusicTrack3,
]

// #############################################
// METHODS

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

switchPause = function ()
{
    if(!isPausable)    
    {
        return;
    }
    
    if(isPaused)
    {
        layer_set_visible(UI_LAYER_PAUSE_MENU, false);
        
        instance_activate_all();
        
        isPaused = false;
    }
    else
    {
        instance_deactivate_all(true);

        layer_set_visible(UI_LAYER_PAUSE_MENU, true);
        
        isPaused = true;
    }
}


// #############################################
// INIT GAME

randomize();

// #############################################
// INIT LIBS

// ARCHIVE
InitData();

// SCRIBBLE 
scribble_font_set_default("fntBasic");

// #############################################
// RUN AFTER CREATION

show_debug_overlay(global.debug);