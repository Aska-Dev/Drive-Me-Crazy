if(oDuelController.currentPhase == DUEL_PHASES.SELECTING_CARD_FOR_ACTION)
{
    var cameraWidth = camera_get_view_width(view_camera[0]);
    drawArrow(cameraWidth / 2, room_height / 2);
}