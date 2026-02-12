Feature: Revisar lineup (lista de canales) por region
    Como usuario de Live TV
    Quiero revisar el lineup de canales por region
    Para validar que el lineup mostrado en UAT es igual al lineup mostrado en PROD
    TEST POST VENTANA(SUBIDA CANALES UAT A PROD)

    Background:
        Given Live TV Claro TV

    @lineup @lineup_epg
    Scenario Outline:
        Given usuario con EPG abierta en '<region>' UAT
        When   usuario revisa lineup y compara contra lineup oficial en PROD canal por canal
        Then  usuario debe ver que '<lineup_UAT>' es igual a '<lineup_PROD>'

        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
       #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |
       


    @lineup @lineup_miniepg
    Scenario Outline:
        Given usuario con miniEPG abierta en '<region>' UAT
        When   usuario revisa lineup en UAT y compara contra lineup desde PROD canal por canal
        Then  usuario debe ver que '<lineup_UAT>' es igual a '<lineup_PROD>'
        
        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
       #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |
       