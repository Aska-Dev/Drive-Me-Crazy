active = instance_exists(oDuelController)

if(!active)
{
    exit;
}

if(oRaceController.player.resources.speed >= pos + 1)
{
    sprite_index = sprSpeedArrowFull;
}
else
{
    sprite_index = sprSpeedArrow;
}