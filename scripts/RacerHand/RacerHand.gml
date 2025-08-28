function RacerHand() constructor 
{
    /// PROPERTIES
    cards = array_create(1, new Card())
    cards = [];
    
    maxSize = 6;
    
    /// METHODS
    /// @param {Struct.Card} card
    add = function (card)
    {
        if(array_length(cards) < maxSize)
        {
            array_push(cards, card);
        }
    }
    
    /// @param {Struct.Card} card
    remove = function (card)
    {
        for(var i = 0; i < array_length(cards); i++)
        {
            if(cards[i].cId == card.cId)
            {
                array_delete(cards, i, 1);
            }
        }
    }
}