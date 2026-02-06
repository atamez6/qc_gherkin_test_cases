Feature: Inicio de sesion en STB serial, serial valido, serial no valido **(rewrite charles).

    Desde QC quiero validar el login con seriales validos y no validos
    mediante rescritura con Charles Proxy

    Scenario Outline: login exitoso con serial valido.
        Given Given STB aprovisionada con '<serial>' valido 
        When  usuario inicia app CV en STB 
        Then  usuario obtiene '<profile_seleccion>' 

        Examples: usuarios_seriales_iptv_validos.csv
            |serial|resultado|
            #ej |prueba1@gmail.com    |'profile_seleccion'    |



    Scenario Outline: login exitoso con serial valido, RW charles.
        Given Given STB sin sesion iniciada(cache) y reescritura con Charles Proxy
        When  usuario inicia app CV en STB con '<serial>' valido y rewrite
        Then  usuario obtiene '<profile_seleccion>' 

        Examples: usuarios_seriales_iptv_validos.csv
            |serial|resultado|
            #ej |prueba1@gmail.com    |'profile_seleccion'    |

    
    
    Scenario Outline: login no exitoso con serial no valido.
        Given Given STB sin sesion iniciada(cache) y reescritura con Charles Proxy
        When  usuario inicia app CV en STB con '<serial>' no valido y rewrite
        Then  usuario obtiene '<alerta_serial_no_valido>' mensaje de error

        Examples: usuarios_seriales_iptv_novalidos.csv
            |serial|resultado|
            #ej |prueba2@gmail.com  |'alerta_serial_no_valido'|
