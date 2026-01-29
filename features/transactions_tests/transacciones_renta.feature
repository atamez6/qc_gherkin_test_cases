Feature: Transaccionar Renta

  Background: 
    Given usuario en V-card de cualquier contenido de renta,alquiler

  Scenario Outline:
    Given usuario con "<type_MDP>"  y con suscripcion CV mensual
    When  usuario intenta realizar renta de contenido tipo "<type_renta>"  
    Then  usuario recibe mensaje "<status_purchase_msg>"  

  Examples:
    |type_renta         |status_purchase_msg     |type_MDP|   
    #datos en CSV (add_on_subs) para consumir desde step definition
    #metodo AMCO (solo usuarios internos)  ej 660061,Transaccion exitosa,amco
    #metodo serial (STB) ej 660061,Transaccion exitosa,serial
