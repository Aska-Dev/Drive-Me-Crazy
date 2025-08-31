function CardDeck() constructor 
{
    /// PROPERTIES
    cards = array_create(1, new Card())
    cards = [];
    
    discardedCards = array_create(1, new Card());
    discardedCards = [];
    
    banishedCards = array_create(1, new Card());
    banishedCards = [];
    
    /// METHODS
    shuffle = function ()
    {
        array_shuffle_ext(cards);
    }
    
    shuffleDiscardIntoDeck = function ()
    {
        cards = array_concat(cards, discardedCards);
        discardedCards = [];
        
        shuffle();
    }
    
    reset = function ()
    {
        cards = array_concat(cards, discardedCards);
        cards = array_concat(cards, banishedCards);
        
        discardedCards = [];
        banishedCards = [];
        
        shuffle();
        
        return cards;
    }
    
    /// @return {Struct.Card}
    drawOne = function ()
    {
        // If deck is empty, shuffle and reset
        if(array_length(cards) <= 0)
        {
            shuffleDiscardIntoDeck();
        }
        
        var drawnCard = array_pop(cards);
        return drawnCard;
    }
    
    /// @return {Struct.Card}
    peek = function ()
    {
        // If deck is empty, shuffle and reset
        if(array_length(cards) <= 0)
        {
            shuffleDiscardIntoDeck();
        }
           
        return array_last(cards);
    }
    
    /// @param {Real} amount
    /// @return {Array<Struct.Card>}
    draw = function (amount)
    { 
        var drawn = [];
        
        for(var i = 0; i < amount; i++)
        {
            array_push(drawn, drawOne());
        }
        
        return drawn;
    }
    
    /// @param {Struct.Card} card
    removeFromCards = function (card)
    {
        for(var i = 0; i < array_length(cards); i++)
        {
            if(cards[i].cId == card.cId)
            {
                array_delete(cards, i, 1);
            }
        }
    }
    
    /// @param {Struct.Card} card
    discard = function (card)
    {
        array_push(discardedCards, card);
    }
    
    /// @param {Struct.Card} card
    banish = function (card)
    {
        array_push(banishedCards, card);
    }
    
    /// @param {Struct.Card} card
    add = function (card)
    {
        array_push(cards, card);
    }
}