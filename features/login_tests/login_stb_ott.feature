Feature: Inicio de sesion en STB OTT, usuario valido, usuario no valido.

    Background: 
        Given STB sin sesion iniciada OTT

    @login_exitoso @login_exitoso_ott
    Scenario Outline: login exitoso con credenciales validas.
        Given usuario se encuentra en la pantalla de login
        When  usuario ingresa '<email>' valido
        And   usuario presiona boton "siguiente"
        And   usuario ingresa '<contrasena>' valida
        And   usuario presiona boton "iniciar sesion"
        Then  usuario obtiene '<profile_seleccion>'

        Examples: usuarios_ott_ok.csv
            |email              |contrasena     |resultado                  |estatus_usuario |
            #EX |prueba1@gmail.com  |Claro123       |'profile_seleccion'    | valido         |

    @login_no_exitoso @login_email_invalido
    Scenario Outline: login no exitoso con correo no valido.
        Given usuario se encuentra en la pantalla de login
        When  usuario ingresa '<email>'  no válido
        And   usuario presiona boton "siguiente"
        Then  usuario obtiene '<resultado>'

        Examples: usuarios_ott_email_novalid.csv
            |email              |resultado                   |estatus_usuario |
            #ej |prueba2@gmail.com  |'alerta_email_no_valido'| no valido      |

    @login_no_exitoso @login_password_invalido
    Scenario Outline: login no exitoso con contrasena no valida.
        Given el usuario se encuentra en la pantalla de login
        When ingresa '<email>'
        And presiona boton "sigiente"
        And ingresa '<contrasena>' no válida
        Then usuario obtiene '<resultado>'

        Examples: usuarios_ott_pass_novalid.csv
            |email              |contrasena   |resultado                         |estatus_usuario |
            #ej |prueba2@gmail.com  |Claro12      |'alerta_contrasena_no_valida' | no valido      |


