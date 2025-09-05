// #############################################
// PROPERTIES

// Create the enemy racer struct
enemy = new EnemyRacer(oRaceController.stage.getEnemy());

// Set the win condition of the race
winCondition = new DuelWinCondition(10); 
winner = undefined;

// Save the seq where the winning animation is shown
seqWinning = undefined;
// Save the room where to go after the winning animation is done
roomAfterFinish = undefined;

activeRacer = RACERS.PLAYER;
endTurnButton = undefined;

// Start with the player selecting a card to play
currentPhase = DUEL_PHASES.SELECTING_CARD_TO_PLAY;

// #############################################
// INIT METHODS

startDuel = function ()
{
    // Create the UiController
    instance_create_layer(-10, -10, "Controller", oDuelUiController);
    
    // Create DuelPlayerController
    instance_create_layer(-10, -10, "Controller", oDuelPlayerController)
}

checkForWinner = function ()
{
    if(winCondition.fulfills(oRaceController.player) && seqWinning == undefined)
    {
        winner = RACERS.PLAYER;
        
        // Create winning sequence for player
        seqWinning = layer_sequence_create(UI_LAYER_DUEL, oRacerDuelling.x, oRacerDuelling.y, seqWinningPlayer)
        roomAfterFinish = rmRewardAfterDuel;
        
        return;
    }
    
    if(winCondition.fulfills(enemy) && seqWinning == undefined)
    {
        winner = RACERS.ENEMY;
        
        // Create winning sequence for enemy
        seqWinning = layer_sequence_create(UI_LAYER_DUEL, oRacerDuellingEnemy.x, oRacerDuellingEnemy.y, seqWinningPlayer);
        roomAfterFinish = rmLoseDuel;
        
        return;
    }
}

nextTurn = function ()
{
    if(activeRacer == RACERS.PLAYER)
    {
        activeRacer = RACERS.ENEMY;
        instance_create_layer(-10, -10, "Controller", oDuelEnemyController);
    }
    else
    {
        activeRacer = RACERS.PLAYER;
        oDuelPlayerController.startTurn();
    }
}

endDuel = function ()
{
    instance_destroy(oRacerDuelling);
    instance_destroy(oRacerDuellingEnemy);
    
    // Reset the player resources
    oRaceController.player.resources.reset();
    // Reset the player deck
    oRaceController.player.deck.reset();
}

// #############################################
// DEBUG_ TOOLING