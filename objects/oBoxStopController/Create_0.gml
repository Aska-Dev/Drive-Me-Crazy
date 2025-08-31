// PAGE STRUCT
function Page() constructor 
{
    cards = array_create(1, new Card());
    cards = [];
    
    maxSize = 6;
    
    isFull = function ()
    {
        return array_length(cards) >= maxSize;
    }
    
    /// @param {Struct.Card} card
    addCard = function (card)
    {
        array_push(cards, card);
    }
}

canvases = [];

pages = array_create(1, new Page());
displayIndex = 0;

deletedAmount = 0;

// METHODS
fillPages = function ()
{
    var pCards = oRaceController.player.deck.reset();
    
    var currentPageIndex = 0;
    
    for(var i = 0; i < array_length(pCards); i++)
    {
        if(pages[currentPageIndex].isFull())
        {
            currentPageIndex++;
            pages[currentPageIndex] = new Page();
        }
        
        pages[currentPageIndex].addCard(pCards[i]);
    }
    
    setPage();
}

resetPages = function ()
{
    pages = array_create(1, new Page());
    displayIndex = 0;
    
    fillPages();
}

/// @param {Struct.Card} card
selectCard = function (card)
{
    deletedAmount++;
    oRaceController.player.deck.removeFromCards(card);
    resetPages();
}

nextPage = function ()
{
    displayIndex++;
    setPage();
}

previousPage = function ()
{
    displayIndex--;
    setPage();
}

setPage = function ()
{
    var currentPage = pages[displayIndex];
    
    for(var i = 0; i < array_length(canvases); i++)
    {
        if(i < array_length(currentPage.cards))
        {
            canvases[i].setCard(currentPage.cards[i]);
            canvases[i].active = true;
        }
        else
        {
            canvases[i].active = false;
        }
    }
}

setter = -1;

// AFTER CREATION
fillPages();