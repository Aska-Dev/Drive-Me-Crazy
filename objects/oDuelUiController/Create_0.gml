// #############################################
// INIT METHODS

drawArrow = function (startX, startY)
{
    var mouseX = device_mouse_x_to_gui(0);
    var mouseY = device_mouse_y_to_gui(0);
    
    var distance = point_distance(startX, startY, mouseX, mouseY);
    var angle = point_direction(startX, startY, mouseX, mouseY);
    
    var spriteWidth = sprite_get_width(sprSelectArrow);
    var xScale = distance / spriteWidth;
    
    draw_sprite_ext(sprSelectArrow, 0, startX, startY, xScale, 1, angle, c_white, 1);
}

displayResources = function ()
{
    var pSpeed = oRaceController.player.resources.speed;
    var pControl = oRaceController.player.resources.control;
    var pFocus = oRaceController.player.resources.focus;
    
    var pReaction = oRaceController.player.reaction;
    
    var lblSpeed = layer_text_get_id(UI_LAYER_DUEL, "playerSpeedLabel")
    var lblControl = layer_text_get_id(UI_LAYER_DUEL, "playerControlLabel")
    var lblFocus = layer_text_get_id(UI_LAYER_DUEL, "playerFocusLabel")
    
    var lblReaction = layer_text_get_id(UI_LAYER_DUEL, "playerReactionLabel")
    var lblReaction2 = layer_text_get_id(UI_LAYER_DUEL, "playerReactionLabel2")
    
    layer_text_text(lblSpeed, pSpeed);
    layer_text_text(lblControl, pControl);
    layer_text_text(lblFocus, pFocus);
    
    layer_text_text(lblReaction, pReaction);
    layer_text_text(lblReaction2, pReaction);
}

displayEnemyResources = function ()
{
    var pSpeed = oDuelController.enemy.resources.speed;
    var pControl = oDuelController.enemy.resources.control;
    var pFocus = oDuelController.enemy.resources.focus;
    
    var lblSpeed = layer_text_get_id(UI_LAYER_DUEL, "enemySpeed")
    var lblControl = layer_text_get_id(UI_LAYER_DUEL, "enemyControl")
    var lblFocus = layer_text_get_id(UI_LAYER_DUEL, "enemyFocus")
    
    layer_text_text(lblSpeed, pSpeed);
    layer_text_text(lblControl, pControl);
    layer_text_text(lblFocus, pFocus);
}

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

// #############################################
// RUN AT CREATION

// Create the End Turn Button
instance_create_layer(0, 0, UI_LAYER_DUEL, oEndTurnButton);

// Enable the UI
layer_set_visible(UI_LAYER_DUEL, true)