/// PROPERTIES
oBoxStopController.canvases[pos] = self;

// Is the mouse hovering over the card?
hovering = false; 
// Has the player clicked on the card?
clicking = false;
// Should the click event trigger?
isDisplay = false;
active = false;


/// SIZE
size = CARD_CANVAS_SIZE;

image_xscale = size;
image_yscale = size;

originalSpriteWidth = sprite_width;
originalSpriteHeight = sprite_height;

/// METHODS

/// @param {Struct.Card} _card
setCard = function (_card)
{
    sprite_index = _card.sprite;
    card = _card;
}

drawName = function ()
{
    var textY = y - sprite_height * 0.36;
    var textX = x;
    
    scribble(card.name)
        .align(fa_center, fa_middle)
        .scale_to_box(sprite_width - sprite_width / 4, 25)
        .draw(textX, textY);
}

drawDesc = function ()
{
    var textY = y + sprite_height * 0.15;
    var textX = x;   
     
    scribble(card.desc)
        .align(fa_center, fa_middle)
        .scale(0.6)
        .fit_to_box(originalSpriteWidth - originalSpriteWidth / 4, sprite_height * 0.6)
        .draw(textX, textY);
}

drawCosts = function ()
{
    var textY = y - sprite_height * 0.18;
    var textX = x;
    
    var draw = false;
    
    var costText = "";
    
    if(card.cost.speed > 0)
    {
        draw = true;
        costText += $"-{card.cost.speed} [sprCardIconSpeed] "
    }
    
    if(card.cost.control > 0)
    {
        draw = true;
        costText += $"-{card.cost.control} [sprCardIconControl] "
    }
    
    if(card.cost.focus > 0)
    {
        draw = true;
        costText += $"-{card.cost.focus} [sprCardIconFocus] "
    }
    
    if(draw)
    {
        scribble(costText)
            .align(fa_center, fa_middle)
            .scale(0.5)
            .draw(textX, textY);
    }
}