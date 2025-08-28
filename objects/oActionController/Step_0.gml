if(actionComplete)
{
    nextAction();
    exit;
}

if(actionRunning && controllerAction == CONTROLLER_ACTIONS.SELECTING)
{
    if(selectedCard == undefined)
    {
        var cameraWidth = camera_get_view_width(view_camera[0]);
        var cameraHeight = camera_get_view_height(view_camera[0]);
        
        card.canvasRef.x = cameraWidth / 2
        card.canvasRef.y = cameraHeight / 2
        
        oDuelController.mode = DUEL_MODES.SELECTING;
    }
    else
    {
        followUpAction.card = selectedCard;
        followUpAction.run();
        
        controllerAction = CONTROLLER_ACTIONS.IDLE;
    }
}

if(actionRunning)
{
    exit;
}

// Start running the action
actions[currentActionIndex].run();