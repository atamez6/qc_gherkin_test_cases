Feature: Transacciones todos los ADDONS desde Plan Selector

  Background: 
    Given Pantalla Plan selector

  Scenario Outline:
    Given usuario con "<type_MDP>"  y sin suscripciones de addons
    When  usuario intenta realizar suscripcion de "<addon>"  
    Then  usuario recibe mensaje "<status_purchase_msg>"  

  Examples:
    |addon         |status_purchase_msg     |type_MDP|   

    #metodo AMCO (solo usuarios internos) 
    |"Universal +" |"Suscrito correctamente"| "amco"|
    |"Picardia"    |"Suscrito correctamente"| "amco"|
    |"Quello"      |"Suscrito correctamente"| "amco"|
    |"Edye"        |"Suscrito correctamente"| "amco"|
    |"RTVE"        |"Suscrito correctamente"| "amco"|
    |"Stingray"    |"Suscrito correctamente"| "amco"|
    |"MGM"         |"Suscrito correctamente"| "amco"|
    |"AtresPlayer" |"Suscrito correctamente"| "amco"|


    #metodo serial (STB)
    |"Universal +" |"Suscrito correctamente"  | "serial"|
    |"Picardia"    |"Suscrito correctamente"  | "serial"|
    |"Quello"      |"Suscrito correctamente"  | "serial"|
    |"Edye"        |"Suscrito correctamente"  | "serial"|
    |"RTVE"        |"Suscrito correctamente"  | "serial"|
    |"Stingray"    |"Suscrito correctamente"  | "serial"|
    |"MGM"         |"Suscrito correctamente"  | "serial"|
    |"AtresPlayer" |"Suscrito correctamente"  | "serial"|


    #metodos moviles (telcel para mx)
    |"Universal +" |"Suscrito correctamente"  | "movil"|
    |"Picardia"    |"Suscrito correctamente"  | "movil"|
    |"Quello"      |"Suscrito correctamente"  | "movil"|
    |"Edye"        |"Suscrito correctamente"  | "movil"|
    |"RTVE"        |"Suscrito correctamente"  | "movil"|
    |"Stingray"    |"Suscrito correctamente"  | "movil"|
    |"MGM"         |"Suscrito correctamente"  | "movil"|
    |"AtresPlayer" |"Suscrito correctamente"  | "movil"|

    #metodos fijos (telmex para mx)
    |"Universal +" |"Suscrito correctamente"  | "fijo"|
    |"Picardia"    |"Suscrito correctamente"  | "fijo"|
    |"Quello"      |"Suscrito correctamente"  | "fijo"|
    |"Edye"        |"Suscrito correctamente"  | "fijo"|
    |"RTVE"        |"Suscrito correctamente"  | "fijo"|
    |"Stingray"    |"Suscrito correctamente"  | "fijo"|
    |"MGM"         |"Suscrito correctamente"  | "fijo"|
    |"AtresPlayer" |"Suscrito correctamente"  | "fijo"|

    #metodo itunes (IOS,IPAD)
    |"Universal +" |"Suscrito correctamente"  | "itunes"|
    |"Picardia"    |"Suscrito correctamente"  | "itunes"|
    |"Quello"      |"Suscrito correctamente"  | "itunes"|
    |"Edye"        |"Suscrito correctamente"  | "itunes"|
    |"RTVE"        |"Suscrito correctamente"  | "itunes"|
    |"Stingray"    |"Suscrito correctamente"  | "itunes"|
    |"MGM"         |"Suscrito correctamente"  | "itunes"|
    |"AtresPlayer" |"Suscrito correctamente"  | "itunes"|
