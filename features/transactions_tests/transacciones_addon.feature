Feature: Transacciones todos los ADDONS desde Plan Selector

  Background: 
    Given Pantalla Plan selector 

  Scenario Outline: Transaccion de suscripcion a addon
    Given usuario con "<type_MDP>"  y sin suscripciones de addons
    When  usuario realiza suscripcion de "<addon>" desde botón "Suscribete" con costo "<costo_addon>"
    And   usuario confirma la suscripcion en pantalla de "<checkout_estas_por__contratar>" con costo "<costo_addon>"
    When usuario realiza transacción desde botón "Suscribete"
    Then  usuario recibe "<pantalla_checkout_exitosa>" confirmando "<costo_addon>"



  Examples:
    |addon   |type_MDP|    costo_addon   |checkout_estas_por__contratar|pantalla_checkout_exitosa|
    #datos en CSV (add_on_subs) para consumir desde step definition
    #Stingray,amco,$222,xpath="checkout_estas_por__contratar|",xpath="Pantalla de checkout exitosa"

