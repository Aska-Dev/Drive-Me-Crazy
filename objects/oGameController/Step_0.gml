if(currentTrack != undefined && !audio_is_playing(currentTrack) && room != rmMenuHomemenu)
{
   playMusic();
}

if(room == rmMenuHomemenu)
{
    isPausable = false;
}
else
{
    isPausable = true;
}
