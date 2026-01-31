Feature: Reproduccion correcta de todos los canales obtenidos desde Live TV por region


    Background:
        Given Live TV Claro TV con CV y add ons con Live TV suscritos
        And funciones Timeshift/NPVR activas
        But sin canales bloqueados


    # Prueba de reproduccion visual correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_visual @reproduccion_live_tv_visual_std
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        Then usuario debera tener playback de cada canal

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


    # Prueba de reproduccion visual en HD correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_visual @reproduccion_live_tv_visual_hd
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza canal por canal de '<lineup_UAT>'
        Then usuario debera tener playback en calidad HD de cada canal que sea esperado

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


    # Prueba de reproduccion visual con eventos pasados correcta de todos los canales
    @reproduccion_live_tv @reproduccion_live_tv_visual @reproduccion_live_tv_visual_pas
    Scenario Outline:
        Given usuario con Live TV en el primer canal en '<region>' UAT
        When usuario sintoniza un evento pasado canal por canal de '<lineup_UAT>'
        Then usuario debera tener playback de un evento pasado de cada canal

        Examples: lineup UAT
        |region                 |lineup_UAT                     |
        |mexico                 |lineup_mx                      |
        |colombia               |lineup_co                      |
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |


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
        |peru                   |lineup_pe                      |
        |chile                  |lineup_cl                      |
        |ecuador                |lineup_ec                      |
        |guatemala              |lineup_gt                      |
        |costarica              |lineup_cr                      |
        |honduras               |lineup_hn                      |
        |nicaragua              |lineup_ni                      |
        |elsalvador             |lineup_sv                      |
        |dominicana             |lineup_do                      |
        |uruguay                |lineup_uy                      |
        |paraguay               |lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |
        
