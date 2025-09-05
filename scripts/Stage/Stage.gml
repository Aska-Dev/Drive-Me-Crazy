function Stage(_level) constructor
{
    // #############################################
    // PROPERTIES
    level = 0;
    
    enemies = [];
    enemyAmount = 2;
    
    trackDanger = undefined;
    
    trackEvent = undefined;
    
    // #############################################
    // METHODS
    
    setupEnemyDecks = function ()
    {
        enemies = [];
        
        var stageDecks = archive(ARCHIVE_ENEMY_DECKS).where_equal("stage", level)
        
        for(var i = 0; i < enemyAmount; i++)
        {
            var deckRoll = irandom_range(0, array_length(stageDecks)-1);
            array_push(enemies, stageDecks[deckRoll]);
        }
    }
    
    setupTrackDanger = function ()
    {
        
    }
    
    setupTrackEvent = function ()
    {
        
    }
    
    setupStage = function (_level = 0)
    {
        level = _level;
        
        setupEnemyDecks();
    }
    
    getEnemy = function ()
    {
        var enemyRoll = irandom_range(0, array_length(enemies)-1);
        
        return enemies[enemyRoll];
    }
    
    isCleared = function ()
    {
        if(trackDanger != undefined)
        {
            return false;
        }
        
        if(trackEvent != undefined)
        {
            return false;
        }
        
        if(array_length(enemies) > 0)
        {
            return false;
        }
        
        return true;
    }
    
    nextEvent = function ()
    {
        var availableEvents = [];
        
        for(var i = 0; i < array_length(enemies); i++)
        {
            array_push(availableEvents, RACE_EVENT_TYPES.DUEL);
        }
        
        if(trackDanger != undefined)
        {
            array_push(availableEvents, trackDanger);
        }
        
        if(trackEvent != undefined)
        {
            array_push(availableEvents, trackEvent);
        }
        
        var eventRoll = irandom_range(0, array_length(availableEvents)-1);
        
        return availableEvents[eventRoll];
    }
    
    // #############################################
    // SETUP
    
    setupStage(_level);
}