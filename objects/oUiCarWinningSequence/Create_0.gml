var carObj = undefined;

if(oDuelController.winner == RACERS.PLAYER)
{
    carObj = oRacerDuelling;   
}
else
{
    carObj = oRacerDuellingEnemy;
}

sprite_index = carObj.sprite_index;
instance_destroy(carObj);