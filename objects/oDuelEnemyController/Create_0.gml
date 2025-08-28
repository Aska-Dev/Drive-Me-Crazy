enemy = oDuelController.enemy;

/// METHODS

endTurn = function ()
{
    oDuelController.changeTurn();
    instance_destroy(self);
}

playTurn = function ()
{
    endTurn();
}

playTurn();