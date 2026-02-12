Feature: Transaccionar Renta

  Background: 
    Given usuario en V-card de cualquier contenido de renta,alquiler

  Scenario Outline: Transaccion renta de contenido
    Given usuario con "<type_MDP>"  y con suscripcion CV mensual
    When  usuario realiza transacción desde botón "Alquilar" en contenido tipo "<type_renta>" con "<costo_renta>" y "<vigencia_renta>"
    And   usuario confirma el alquiler  en "<pantalla_estas_por_alquilar>" con "<costo_renta>" y "<vigencia_renta>"
    Then  usuario debe recibir "<pantalla_checkout_exitosa>" confirmando "<costo_renta>" y "<vigencia_renta>"

  Examples:
    |type_renta         |status_purchase_msg     |type_MDP|   costo_renta   |vigencia_renta  |pantalla_estas_por_alquilar|pantalla_checkout_exitosa|
    #datos en CSV (add_on_subs) para consumir desde step definition
   #ej 654321,Transaccion exitosa,amco,$200,48 hrs,class="checkoutPaymentFormContainer",Pantalla de checkout exitoso