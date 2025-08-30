if(hovering)
{
    size = CARD_CANVAS_SIZE + 0.2;
}
else
{
    size = CARD_CANVAS_SIZE;
}

if(clicking && active)
{
    oRewardController.selectRewardCard(card);
}