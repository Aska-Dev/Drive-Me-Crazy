if(onUI)
{
    exit;
}

if(active)
{
    scribble(buttonText)
        .blend(c_white, 1)
        .align(fa_center, fa_middle)
        .scale_to_box(sprite_width * 0.8, sprite_height * 0.9)
        .draw(x, y - sprite_height * 0.1);
}
else
{
    scribble(buttonText)
        .blend(c_white, 0.9)
        .align(fa_center, fa_middle)
        .scale_to_box(sprite_width * 0.7, sprite_height * 0.8)
        .draw(x, y);
}