function InitData()
{
    // #############################################
    // INIT
    archive_initialize();
    
    // #############################################
    // CARDS
    var cards = 
    [
        new Card_Beschleunigen(),
        new Card_Fahrtraining(),
        new Card_Konzentration(),
        new Card_Ausbremsen(),
        new Card_Ausmanoevrieren(),
        new Card_GangWechseln(),
        new Card_GasGeben(),
        new Card_Hochschalten(),
        new Card_InDerZone(),
        new Card_Konzentration(),
        new Card_RuhigeHand(),
        new Card_Schulterblick(),
        new Card_Automatik(),
        new Card_Bremsen(),
        new Card_Meisterfahrer(),
        new Card_PerfekterStart(),
        new Card_UebungMachtDenMeister(),
        new Card_Automatik(),
        new Card_Vollgetankt()
    ]
    
    archive(ARCHIVE_CARDS).add_range(cards);
    
    // #############################################
    // ENEMY DECKS
    
    var enemyDecks =
    [
        new EnemyDeck_Stage0_Fahranfaenger()
    ]
    
    archive(ARCHIVE_ENEMY_DECKS).add_range(enemyDecks);
}