Feature: Revisar que GUIA EPG y miniEPG se carguen de forma correcta en fase Live TV

    Background:
        Given Live TV Claro TV

    @epg
    Scenario Outline: Revisar carga de EPG
         Given usuario con EPG abierta en '<region>' 
         When  usuario navega por la EPG por el <lineup_UAT> desde canal n hasta n-1
         Then  usuario debe ver la EPG se cargue sin espacios en blanco o con "NA"
    
        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
    #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |
       


    @miniepg
    Scenario Outline: Revisar carga de miniEPG
         Given usuario con miniEPG abierta en '<region>' 
         When  usuario navega por la miniEPG por el <lineup_UAT> desde canal n hasta n-1
         Then  usuario debe ver la miniEPG se cargue sin espacios en blanco o con "NA"  

        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
    #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |




    @epg
    Scenario Outline: Revisar invocación de EPG
        Given usuario con EPG cerrada en '<region>'
        When  usuario invoca la EPG desde cualquier canal "n" del <lineup_UAT>
        Then  usuario debe ver la EPG se cargue sin espacios en blanco o con "NA"        
       
        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
    #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |

    
    @miniepg
    Scenario Outline: Revisar invocación de miniEPG
        Given usuario con miniEPG cerrada en '<region>'
        When  usuario invoca la miniEPG desde cualquier canal del <lineup_UAT>
        Then  usuario debe ver la miniEPG se cargue sin espacios en blanco o con "NA"        
       
        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
    #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |

    

    @epg
    Scenario Outline: Revisar status "cargando" de EPG
        Given usuario con EPG cerrada en '<region>'
        When  usuario invoca la EPG en cualquier canal del <lineup_UAT> 
        And   la red tarda en responder y cargar el contenido de EPG
        Then  usuario debe ver en la EPG un status de "cargando" mientras carga la información de EPG y no debe duras mas de 4 minutos        
       
        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |lineup_PROD                         |
    #ex |mexico                 |lineup_mx                      |prod_lineup_mx                      |

    