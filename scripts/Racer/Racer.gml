function Racer() constructor 
{
    /// PROPERTIES
    name = "default";
    
    sprite = sprCarInferno;
    
    deck = new CardDeck();
    hand = new RacerHand();
    
    duelStartDrawAmount = 4;
    turnStartDrawAmount = 3;
    
    reaction = 3;
    
    resources = new RacerResources();
    
    /// METHODS
}

function EnemyRacer(_enemyDeck) : Racer() constructor 
{
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
    
    deck = _enemyDeck;
    deck.reset();
    deck.shuffle();
}