// #############################################
// PROPERTIES

finished = false;
waitingForSelection = false;

card.actorRef = self;

// Save action states
actionRunning = false;
actionComplete = false;

// The current pos of the current action in the cards action list
currentActionPos = 0;

// The card selected for the selectAnd-CardAction
selectedCard = undefined;

// #############################################
// INIT METHODS

stopPlayingCard = function ()
{
    finished = true;
    
    oDuelUiController.refreshPlayerHand();
}

nextAction = function ()
{
    if(currentActionPos + 1 < array_length(actions))
    {
        currentActionPos++;
        
        actionComplete = false;
        actionRunning = false;
    }
    else
    {
        stopPlayingCard();
    }
}

// #############################################
// RUN AT CREATION

oDuelController.currentPhase = DUEL_PHASES.PLAYING_CARD_ACTIONS;

// Copy all actions
actions = []
array_copy(actions, 0, card.actions, 0, array_length(card.actions));