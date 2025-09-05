// #############################################
// PROPERTIES

player = new Racer();
stage = new Stage(0);

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
    new Card_GangWechseln(),
];

// #############################################
// METHODS

nextEvent = function ()
{
    if(stage.isCleared())
    {
        stage = new Stage(stage.level + 1);
    }
    
    var event = stage.nextEvent()
    
    if(event == RACE_EVENT_TYPES.DUEL)
    { 
        event = rmDuel;
    }
    
    room_goto(event);
}

nextEvent();