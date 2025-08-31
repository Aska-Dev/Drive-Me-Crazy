if(oBoxStopController.displayIndex == -1)
{
    instance_destroy(self);
}

if(hovering)
{
    size = CARD_CANVAS_SIZE + 0.2;
}
else
{
    size = CARD_CANVAS_SIZE;
}

if(clicking && !isDisplay && active)
{
    oBoxStopController.selectCard(card);
}