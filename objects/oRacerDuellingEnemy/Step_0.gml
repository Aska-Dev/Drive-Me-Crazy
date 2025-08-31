if(oDuelController.winner == TURN.ENEMY)
{
    speed = 14;
    
     if(x >= room_width)
    {
        room_goto(LoseScreen);
    }
}