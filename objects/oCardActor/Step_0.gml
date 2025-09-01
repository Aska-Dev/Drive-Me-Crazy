if(finished)
{
    exit;
}

if(actionComplete)
{
    nextAction();
    exit;
}

if(waitingForSelection)
{
    if(selectedCard == undefined)
    {
        if(oDuelController.currentPhase != DUEL_PHASES.SELECTING_CARD_FOR_ACTION)
        {
            var cameraWidth = camera_get_view_width(view_camera[0])
            
            card.canvasRef.x = cameraWidth / 2;
            card.canvasRef.y = room_height / 2;
            card.isDisplay = true;
            
            oDuelController.currentPhase = DUEL_PHASES.SELECTING_CARD_FOR_ACTION;
            oDuelPlayerController.actorWaitingForSelection = self;
        }
    }
    else
    {
        oDuelController.currentPhase = DUEL_PHASES.PLAYING_CARD_ACTIONS;
        
        // Set the card of the inserted action to the selected card
        actions[currentActionPos + 1].card = selectedCard;
        
        oDuelPlayerController.actorWaitingForSelection = undefined;
        waitingForSelection = false; 
        actionComplete = true;
    }
}

if(actionRunning)
{
    exit;
}

// If a new action is selected but has'nt started yet
actions[currentActionPos].run(self);