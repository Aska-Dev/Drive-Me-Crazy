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
        var decks = 
            [
                new EnemyDeck_ControlToSpeed(),
            ]
        
        var selection = irandom_range(0, array_length(decks) - 1);
        return decks[selection]
    }
    
    deck = setDeck();
    deck.shuffle();
}