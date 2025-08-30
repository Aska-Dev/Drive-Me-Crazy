if(isSelecting && selectedCard != undefined)
{
    oRaceController.player.deck.discard(selectedCard);
    oRaceController.player.hand.remove(selectedCard);
    
    oDuelPlayerUiController.refreshPlayerHand();
    
    instance_destroy(selectedCard.canvasRef);
    
    layer_sequence_destroy(msgSeq);
    instance_destroy(nextCard.canvasRef);
    
    instance_destroy(self);
    
    oDuelController.mode = DUEL_MODES.PLAYING;
    oDuelController.drawCards(1);
}