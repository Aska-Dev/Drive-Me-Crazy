// #############################################
// PROPERTIES

turns = 1;
card = oDuelController.enemy.deck.drawOne();
actor = undefined;

#macro ENEMY_CARD_DESTINATION_Y room_height * 0.3

// #############################################
// INIT METHODS

endTurn = function ()
{
    oDuelController.nextTurn();
    instance_destroy(self);
}

spawnCard = function ()
{
    var cameraWidth = camera_get_view_width(view_camera[0]);
    var pX = cameraWidth * 0.36;
    
    var canvas = instance_create_layer(pX, 0, UI_LAYER_DUEL, oCardCanvas, {card: card});
    with(canvas)
    {
        move_towards_point(x, ENEMY_CARD_DESTINATION_Y, 6);
        active = false;
    }

    alarm[0] = game_get_speed(gamespeed_fps) * 2;
}

// #############################################
// RUN AT CREATION

spawnCard();