Feature: Transacciones todos los ADDONS desde Plan Selector

  Background: 
    Given Pantalla Plan selector

  Scenario Outline:
    Given usuario con "<type_MDP>"  y sin suscripciones de addons
    When  usuario intenta realizar suscripcion de "<addon>"  
    Then  usuario recibe mensaje "<status_purchase_msg>"  

  Examples:
    |addon         |status_purchase_msg     |type_MDP|   
    #datos en CSV (add_on_subs) para consumir desde step definition
    #metodo AMCO (solo usuarios internos)  ej crunchyroll,Suscrito correctamente,amco
    #metodo serial (STB) ej CVmensual,Suscrito correctamente,serial
