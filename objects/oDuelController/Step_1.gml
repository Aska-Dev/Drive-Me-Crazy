if(mode == DUEL_MODES.SELECTING_WHILE_DRAWING && !instance_exists(oDuelDiscardHandCardController))
{
    instance_create_layer(-10, -10, "Controller", oDuelDiscardHandCardController);
}