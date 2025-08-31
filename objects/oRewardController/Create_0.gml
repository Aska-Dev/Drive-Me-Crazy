card1 = undefined;
card2 = undefined;
card3 = undefined;

selectRewardCard = function (card)
{
    oRaceController.player.deck.add(card);
    
    var deck = oRaceController.player.deck.cards;
    
    oRaceController.nextEvent();
}

spawnRewardCardCanvases = function ()
{
    card1 = getRewardCard();
    card2 = getRewardCard();
    card3 = getRewardCard();
    
    instance_create_layer(posX1, posY, UI_LAYER_REWARD, oRewardCardCanvas, {card: card1});
    instance_create_layer(posX2, posY, UI_LAYER_REWARD, oRewardCardCanvas, {card: card2});
    instance_create_layer(posX3, posY, UI_LAYER_REWARD, oRewardCardCanvas, {card: card3});
}

/// @param {Struct.Card} _card
isUnique = function (_card)
{
    if(card1 != undefined && _card.cId == card1.cId)
    {
        return false;
    }
    
    if(card2 != undefined && _card.cId == card2.cId)
    {
        return false;
    }
    
    if(card3 != undefined && _card.cId == card3.cId)
    {
        return false;
    }
    
    return true;
}

// Get random reward cards
/// @return {Struct.Card} description
getRewardCard = function ()
{
    card = undefined;
    
    do
    {
        var tierRoll = irandom_range(1, 10);
    
        if(tierRoll >= 1 && tierRoll < 6)
        {
            // TIER 1
            var amount = array_length(global.Tier1Cards);
            var cardRoll = irandom_range(0, amount-1);
            
            card = new global.Tier1Cards[cardRoll]();
        }
        else if(tierRoll >= 6 && tierRoll < 10)    
        {
            // TIER 2
            var amount = array_length(global.Tier2Cards);
            var cardRoll = irandom_range(0, amount-1);
            
            card = new global.Tier2Cards[cardRoll]();
        }
        else
        {
            // TIER 3
            var amount = array_length(global.Tier3Cards);
            
            var cardRoll = irandom_range(0, amount-1);
            card = new global.Tier3Cards[cardRoll]();
        }
    }
    until (isUnique(card));
        
    return card;
}

var showCardWidth = room_width * 0.8;
posX1 = showCardWidth / 3;
posX2 = showCardWidth / 3 * 2;
posX3 = showCardWidth;

posY= 320;