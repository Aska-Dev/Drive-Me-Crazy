showingCard = false;
oDuelController.enemy.deck.discard(card);

instance_destroy(card.canvasRef);

playCard(card);
endTurn();