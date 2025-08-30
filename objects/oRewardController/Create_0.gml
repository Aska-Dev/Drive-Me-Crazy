selectRewardCard = function (card)
{
    oRaceController.player.deck.add(card);
    
    var deck = oRaceController.player.deck.cards;
    
    oRaceController.nextEvent();
}

spawnRewardCardCanvases = function ()
{
    instance_create_layer(posX1, posY, UI_LAYER_REWARD, oRewardCardCanvas, {card: getRewardCard()});
    instance_create_layer(posX2, posY, UI_LAYER_REWARD, oRewardCardCanvas, {card: getRewardCard()});
    instance_create_layer(posX3, posY, UI_LAYER_REWARD, oRewardCardCanvas, {card: getRewardCard()});
}

// Get random reward cards
/// @return {Struct.Card} description
getRewardCard = function ()
{
    var tierRoll = irandom_range(1, 10);
    
    if(tierRoll >= 1 && tierRoll < 6)
    {
        // TIER 1
        var amount = array_length(global.Tier1Cards);
        var cardRoll = irandom_range(0, amount-1);
        
        return new global.Tier1Cards[cardRoll]();
    }
    else if(tierRoll >= 6 && tierRoll < 10)    
    {
        // TIER 2
        var amount = array_length(global.Tier2Cards);
        var cardRoll = irandom_range(0, amount-1);
        
        return new global.Tier2Cards[cardRoll]();
    }
    else
    {
        // TIER 3
        var amount = array_length(global.Tier3Cards);
        
        var cardRoll = irandom_range(0, amount-1);
        return new global.Tier3Cards[cardRoll]();
    }
}

var showCardWidth = room_width * 0.8;
posX1 = showCardWidth / 3;
posX2 = showCardWidth / 3 * 2;
posX3 = showCardWidth;

posY= 320;