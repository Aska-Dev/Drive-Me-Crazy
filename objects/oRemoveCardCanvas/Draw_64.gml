if(active)
{
    image_alpha = 1;
    
    draw_self();
    
    drawName();
    drawDesc();
    drawCosts();
    
    if(hovering)
    {
        image_blend = c_gray;
        draw_sprite(sprDelete, 0, x, y);
    }
    else
    {
        image_blend = c_white;
    }
}
else
{
    image_alpha = 0;
}
