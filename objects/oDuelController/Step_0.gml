// Check if one racer has won the duel
checkForWinner();

// Wait until the winning animation is done and then goto the reward or lose room
if(seqWinning != undefined && layer_sequence_is_finished(seqWinning))
{
    room_goto(roomAfterFinish);
}