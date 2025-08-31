laps = 0;

player = new Racer();
// SETUP START DECK
player.deck.cards = [
    new Card_Fahrtraining(),
    new Card_Fahrtraining(),
    new Card_Fahrtraining(),
    new Card_Konzentration(),
    new Card_GasGeben(),
    new Card_Hochschalten(),
    new Card_Ausbremsen(),
    new Card_Schulterblick(), 
    new Card_GangWechseln()
];

/// METHODS

getNextEvent = function ()
{
    // 
}

nextEvent = function ()
{
    laps++;
    room_goto(LvlDuel);
}

nextEvent();