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
    
    deck = setDeck();
    deck.shuffle();
}