/// PROPERTIES
card.canvasRef = self;

// Controls if the back of the card should be displayed or the whole card
showBack = false;
// Is the mouse hovering over the card?
hovering = false; 
// Has the player clicked on the card?
clicking = false;
// Should the click event trigger?
isDisplay = false;
active = true;

isPlayable = true;
notPlayableTextAlpha = 0.6;

// SET THE SPRITE TEMPLATE
sprite_index = card.sprite;

/// SIZE
size = CARD_CANVAS_SIZE;

image_xscale = size;
image_yscale = size;

originalSpriteWidth = sprite_width;
originalSpriteHeight = sprite_height;

/// METHODS

drawName = function ()
{
    var textY = y - sprite_height * 0.36;
    var textX = x;
    
    var alpha = 1;
    if(!isPlayable)
    {
        alpha = notPlayableTextAlpha;
    }
    
    scribble(card.name)
        .blend(c_white, alpha)
        .align(fa_center, fa_middle)
        .scale_to_box(sprite_width - sprite_width / 4, 25)
        .draw(textX, textY);
}

drawDesc = function ()
{
    var textY = y + sprite_height * 0.15;
    var textX = x;   
     
    var alpha = 1;
    if(!isPlayable)
    {
        alpha = notPlayableTextAlpha;
    }
    
    scribble(card.desc)
        .blend(c_white, alpha)
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
         var alpha = 1;
        if(!isPlayable)
        {
            alpha = notPlayableTextAlpha;
        }
    
        
        scribble(costText)
            .blend(c_white, alpha)
            .align(fa_center, fa_middle)
            .scale(0.5)
            .draw(textX, textY);
    }
}

displayPlayability = function ()
{
    if(!isPlayable)
    {
        image_blend = c_gray;
    }
    else
    {
        image_blend = c_white;
    }
}