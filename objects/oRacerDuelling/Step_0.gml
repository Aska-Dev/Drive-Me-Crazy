if(oDuelController.winner == TURN.PLAYER)
{
    camera_set_view_target(view_camera[0], oRacerDuellingEnemy);
    speed = 14;
    
    if(x >= room_width)
    {
        room_goto(RewardMenu);
    }
}