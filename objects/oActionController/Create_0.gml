/// SETUP PROPERTIES

card.canvasRef.active = false;

actions = card.actions;

currentActionIndex = 0;

actionComplete = false;
actionRunning = false;

controllerAction = CONTROLLER_ACTIONS.IDLE;

selectedCard = undefined;
followUpAction = undefined;

/// SETUP METHODS

nextAction = function ()
{
    if(currentActionIndex + 1 < array_length(actions))
    {
        currentActionIndex++;
        
        actionComplete = false;
        actionRunning = false;
    }
    else
    {
        oDuelPlayerUiController.refreshPlayerHand();
        oDuelController.mode = DUEL_MODES.PLAYING;
        instance_destroy(self);
    }
}

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