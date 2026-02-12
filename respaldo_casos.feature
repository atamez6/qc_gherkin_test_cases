

    # Prueba de reproduccion auditiva correcta en idioma espanol de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_audi @reproduccion_live_tv_audi_esp
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura idioma a espanol en cada canal
        Then usuario debera tener audio en espanol de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |


    # Prueba de reproduccion auditiva correcta en idioma ingles de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_audi @reproduccion_live_tv_audi_ing
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura idioma a ingles en cada canal
        Then usuario debera tener audio en ingles de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |



    # Prueba de reproduccion auditiva correcta en idioma portugues de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_audi @reproduccion_live_tv_audi_port
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura idioma a portugues en cada canal
        Then usuario debera tener audio en portugues de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |


    # Prueba de reproduccion sin subtitulos correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_sub @reproduccion_live_tv_sub_sin
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura sin subtitulos en cada canal
        Then usuario debera tener transmision sin subtitulos de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |



    # Prueba de reproduccion con subtitulos en espanol correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_sub @reproduccion_live_tv_sub_esp
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura subtitulos en espanol en cada canal
        Then usuario debera tener transmision con subtitulos en espanol de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |



    # Prueba de reproduccion con subtitulos en ingles correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_sub @reproduccion_live_tv_sub_ing
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura subtitulos en ingles en cada canal
        Then usuario debera tener transmision con subtitulos en ingles de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |


    # Prueba de reproduccion con subtitulos en portugues correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_sub @reproduccion_live_tv_sub_port
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        And usuario configura subtitulos en portugues en cada canal
        Then usuario debera tener transmision con subtitulos en portugues de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |