speed = 8;

sprite_index = oDuelController.enemy.setSprite();

// Set random image_index
var frames = sprite_get_number(sprite_index)
var startFrame = irandom_range(0, frames);

image_index = startFrame;