showingCard = false;
card = undefined;

var camWidth = camera_get_view_width(view_camera[0]);
pointX = camWidth / 3.5;
pointY = room_height * 0.35;

/// METHODS

endTurn = function ()
{
    oDuelController.changeTurn();
    instance_destroy(self);
}

drawCard = function ()
{
    card = oDuelController.enemy.deck.drawOne();
    var cardCanvas = instance_create_layer(pointX, -100, UI_LAYER_DUEL, oCardCanvas, {card: card})
    with(cardCanvas)
    {
        var camWidth = camera_get_view_width(view_camera[0]);
        move_towards_point(camWidth / 3.5, room_height * 0.35, 6);
    }
    
    cardCanvas.active = false;
    
    showingCard = true;
    alarm[0] = game_get_speed(gamespeed_fps) * 2.5;
    
    return card;
}

/// @param {Struct.Card} card
playCard = function (card)
{
    mode = DUEL_MODES.HANDLING_ACTION;
    instance_create_layer(-10, -10, "Controller", oActionController, {card : card})
}

playTurn = function ()
{
    var card = drawCard();
}

playTurn();