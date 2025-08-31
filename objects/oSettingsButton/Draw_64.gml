draw_self();

scribble(buttonText)
        .blend(c_white, 1)
        .align(fa_center, fa_middle)
        .scale_to_box(sprite_width * 0.8, sprite_height * 0.9)
        .draw(x, y - sprite_height * 0.1);
