/// PROPERTIES

// Is the mouse hovering over the card?
hovering = false; 
// Has the player clicked on the card?
clicking = false;
// If the clicking event should be triggered
active = true;


/// METHODS
displayCardsInDeck = function ()
{
    var amount = array_length(oRaceController.player.deck.cards);
    
    scribble(string(amount))
        .align(fa_center, fa_middle)
        .scale_to_box(sprite_width, sprite_height)
        .draw(x, y + sprite_height / 4);
}