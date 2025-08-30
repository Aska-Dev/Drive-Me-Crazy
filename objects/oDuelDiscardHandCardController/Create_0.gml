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

selectedCard = undefined;
isSelecting = false;

var cameraWidth = camera_get_view_width(view_camera[0]);
msgSeq = layer_sequence_create(UI_LAYER_DUEL, 0, 0, seqFullHand);

nextCard = oRaceController.player.deck.peek();

instance_create_layer(cameraWidth / 2, room_height / 2, UI_LAYER_DUEL, oCardCanvas, {card: nextCard});
nextCard.canvasRef.isDisplay = true;

isSelecting = true;