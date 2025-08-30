active = instance_exists(oDuelController);

if(active)
{
    if(oDuelController.enemy.resources.speed >= pos + 1)
    {
        sprite_index = sprSpeedArrowFullEnemy;
    }
    else
    {
        sprite_index = sprSpeedArrow;
    };
}