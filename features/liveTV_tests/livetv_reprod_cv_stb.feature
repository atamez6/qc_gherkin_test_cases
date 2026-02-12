Feature: Reproduccion correcta de todos los canales en Live TV


    Background:
        Given Live TV Claro TV con CV y add ons con Live TV suscritos
        And funciones Timeshift/NPVR activas
        And sin canales bloqueados


    # Prueba de reproduccion FULL LINEUP
    @reproduccion_live_tv @reproduccion_live_tv_visual @reproduccion_live_tv_visual_std
    Scenario Outline:Validar playback en vivo de todos los canales del lineup
        Given usuario con Live TV en el primer canal de '<lineup_UAT>' en '<region>'
        When usuario itera por todos los canales de '<lineup_UAT>'
        Then playback debe ser exitoso en cada canal
        

        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |
        #EJ|mexico                 |lineup_mx                      |
        

    # Prueba de reproduccion visual con eventos pasados correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_visual @reproduccion_live_tv_visual_pas
    Scenario Outline: Validar playback de eventos pasados en todos los canales del lineup
        Given usuario con Live TV en el primer canal de '<lineup_UAT>' en '<region>'
        When usuario itera por todos los canales de '<lineup_UAT>' seleccionando un evento pasado
        Then playback del evento pasado debe ser exitoso en cada canal

        Examples: lineup_epg_regiones.csv
        |region                 |lineup_UAT                     |
        #|mexico                 |lineup_mx                      |
        #|colombia               |lineup_co                      |


