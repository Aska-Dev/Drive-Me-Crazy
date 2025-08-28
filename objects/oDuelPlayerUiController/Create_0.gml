/// INIT METHODS

/// DISPLAY METHODS
addToPlayerHand = function ()
{
    var cardWidth = sprite_get_width(sprCardNeutral) * CARD_CANVAS_SIZE
    var cardHeigth = sprite_get_height(sprCardNeutral) * CARD_CANVAS_SIZE
    
    var gap = cardWidth / 1.5;
    var startX = gap * 1;
    
    var handY = room_height - cardHeigth * 0.6
    
    var i = array_length(oRaceController.player.hand.cards) -1;
    
    var x_i = startX + (cardWidth / 2 * i) + (gap * i);
    instance_create_layer(x_i, handY, UI_LAYER_DUEL, oCardCanvas, {card: oRaceController.player.hand.cards[i]});
}

refreshPlayerHand = function ()
{
    var cardWidth = sprite_get_width(sprCardNeutral) * CARD_CANVAS_SIZE
    var cardHeigth = sprite_get_height(sprCardNeutral) * CARD_CANVAS_SIZE
    
    var gap = cardWidth / 1.5;
    var startX = gap * 1;
    
    var handY = room_height - cardHeigth * 0.6
    
    for(var i = 0; i < array_length(oRaceController.player.hand.cards); i++)
    {
        var canvas = oRaceController.player.hand.cards[i].canvasRef;
        canvas.x = startX + (cardWidth / 2 * i) + (gap * i);
    }
}

displayResources = function ()
{
    var pSpeed = oRaceController.player.resources.speed;
    var pControl = oRaceController.player.resources.control;
    var pFocus = oRaceController.player.resources.focus;
    
    var lblSpeed = layer_text_get_id(UI_LAYER_DUEL, "playerSpeedLabel")
    var lblControl = layer_text_get_id(UI_LAYER_DUEL, "playerControlLabel")
    var lblFocus = layer_text_get_id(UI_LAYER_DUEL, "playerFocusLabel")
    
    layer_text_text(lblSpeed, pSpeed);
    layer_text_text(lblControl, pControl);
    layer_text_text(lblFocus, pFocus);
}