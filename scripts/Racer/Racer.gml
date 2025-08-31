function Racer() constructor 
{
    /// PROPERTIES
    name = "default";
    
    deck = new CardDeck();
    hand = new RacerHand();
    
    duelStartDrawAmount = 4;
    turnStartDrawAmount = 3;
    
    resources = new RacerResources();
    
    /// METHODS
}

function EnemyRacer() : Racer() constructor 
{
    setDeck = function ()
    {
        var selection = irandom_range(0, array_length(global.enemyDecks) - 1);
        return new global.enemyDecks[selection]();
    }
    
    setSprite = function ()
    {
        var sprites = 
            [
                sprCarDutchman_Driving,
                sprCarVoyager_Driving,
                sprCarViper_Driving,
                sprCarTurtle_Driving
            ]
           
        var spriteRoll = irandom_range(0, array_length(sprites) - 1);
        
        return sprites[spriteRoll];
    }
    
    deck = setDeck();
    deck.shuffle();
}