var passbys = 
[
    sndSfxPassby1,
    sndSfxPassby2,
    sndSfxPassby3,
]

var sndRoll = irandom_range(0, array_length(passbys)-1);

audio_play_sound(passbys[sndRoll], 150, false);

var timer = irandom_range(8, 12);
alarm[0] = game_get_speed(gamespeed_fps) * timer;