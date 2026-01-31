Feature: Revisar lineup (lista de canales) por region

    Background:
        Given Live TV Claro TV


    # Validacion de lineup completa desde la Full EPG con version oficial
    @lineup @lineup_epg
    Scenario Outline:
        Given usuario con EPG abierta en '<region>' UAT
        When usuario revisa lineup
        Then '<lineup_UAT>' debe ser igual que '<lineup_PROD>'

        Examples: lineup UAT
        |region                 |lineup_UAT                     |lineup_PROD                         |
        |mexico                 |lineup_mx                      |prod_lineup_mx                      |
        |colombia               |lineup_co                      |prod_lineup_co                      |
        |peru                   |lineup_pe                      |prod_lineup_pe                      |
        |chile                  |lineup_cl                      |prod_lineup_cl                      |
        |ecuador                |lineup_ec                      |prod_lineup_ec                      |
        |guatemala              |lineup_gt                      |prod_lineup_gt                      |
        |costarica              |lineup_cr                      |prod_lineup_cr                      |
        |honduras               |lineup_hn                      |prod_lineup_hn                      |
        |nicaragua              |lineup_ni                      |prod_lineup_ni                      |
        |elsalvador             |lineup_sv                      |prod_lineup_sv                      |
        |dominicana             |lineup_do                      |prod_lineup_do                      |
        |uruguay                |lineup_uy                      |prod_lineup_uy                      |
        |paraguay               |lineup_py                      |prod_lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |prod_lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |prod_lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |prod_lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |prod_lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |prod_lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |prod_lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |prod_lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |prod_lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |prod_lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |prod_lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |prod_lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |prod_lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |prod_lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |prod_lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |prod_lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |prod_lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |prod_lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |prod_lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |prod_lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |prod_lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |prod_lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |prod_lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |prod_lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |prod_lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |prod_lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |prod_lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |prod_lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |prod_lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |prod_lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |prod_lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |prod_lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |prod_lineup_ar_fullepg              |

    
    # Validacion de lineup completa desde la miniEPG con version oficial
    @lineup @lineup_miniepg
    Scenario Outline:
        Given usuario con miniEPG abierta en '<region>' UAT
        When usuario revisa '<lineup>'
        Then lineup UAT debe ser igual que lineup PROD

        Examples: lineup UAT
        |region                 |lineup_UAT                     |lineup_PROD                         |
        |mexico                 |lineup_mx                      |prod_lineup_mx                      |
        |colombia               |lineup_co                      |prod_lineup_co                      |
        |peru                   |lineup_pe                      |prod_lineup_pe                      |
        |chile                  |lineup_cl                      |prod_lineup_cl                      |
        |ecuador                |lineup_ec                      |prod_lineup_ec                      |
        |guatemala              |lineup_gt                      |prod_lineup_gt                      |
        |costarica              |lineup_cr                      |prod_lineup_cr                      |
        |honduras               |lineup_hn                      |prod_lineup_hn                      |
        |nicaragua              |lineup_ni                      |prod_lineup_ni                      |
        |elsalvador             |lineup_sv                      |prod_lineup_sv                      |
        |dominicana             |lineup_do                      |prod_lineup_do                      |
        |uruguay                |lineup_uy                      |prod_lineup_uy                      |
        |paraguay               |lineup_py                      |prod_lineup_py                      |
        |ar_bsas                |lineup_ar_bsas                 |prod_lineup_ar_bsas                 |
        |ar_catamarca           |lineup_ar_catamarca            |prod_lineup_ar_catamarca            |
        |ar_chaco               |lineup_ar_chaco                |prod_lineup_ar_chaco                |
        |ar_cordoba             |lineup_ar_cordoba              |prod_lineup_ar_cordoba              |
        |ar_formosa             |lineup_ar_formosa              |prod_lineup_ar_formosa              |
        |ar_jujuy               |lineup_ar_jujuy                |prod_lineup_ar_jujuy                |
        |ar_mdq                 |lineup_ar_mdq                  |prod_lineup_ar_mdq                  |
        |ar_mendoza             |lineup_ar_mendoza              |prod_lineup_ar_mendoza              |
        |ar_misiones            |lineup_ar_misiones             |prod_lineup_ar_misiones             |
        |ar_neuquen             |lineup_ar_neuquen              |prod_lineup_ar_neuquen              |
        |ar_rosario             |lineup_ar_rosario              |prod_lineup_ar_rosario              |
        |ar_salta               |lineup_ar_salta                |prod_lineup_ar_salta                |
        |ar_santafe             |lineup_ar_santafe              |prod_lineup_ar_santafe              |
        |ar_tucuman             |lineup_ar_tucuman              |prod_lineup_ar_tucuman              |
        |ar_capitalfederal      |lineup_ar_capitalfederal       |prod_lineup_ar_capitalfederal       |
        |ar_bahiablanca         |lineup_ar_bahiablanca          |prod_lineup_ar_bahiablanca          |
        |ar_chubut              |lineup_ar_chubut               |prod_lineup_ar_chubut               |
        |ar_concordia           |lineup_ar_concordia            |prod_lineup_ar_concordia            |
        |ar_corrientes          |lineup_ar_corrientes           |prod_lineup_ar_corrientes           |
        |ar_entrerios           |lineup_ar_entrerios            |prod_lineup_ar_entrerios            |
        |ar_lapampa             |lineup_ar_lapampa              |prod_lineup_ar_lapampa              |
        |ar_laplata             |lineup_ar_laplata              |prod_lineup_ar_laplata              |
        |ar_larioja             |lineup_ar_larioja              |prod_lineup_ar_larioja              |
        |ar_olavarria           |lineup_ar_olavarria            |prod_lineup_ar_olavarria            |
        |ar_rionegro            |lineup_ar_rionegro             |prod_lineup_ar_rionegro             |
        |ar_sanluis             |lineup_ar_sanluis              |prod_lineup_ar_sanluis              |
        |ar_sanjuan             |lineup_ar_sanjuan              |prod_lineup_ar_sanjuan              |
        |ar_santacruz           |lineup_ar_santacruz            |prod_lineup_ar_santacruz            |
        |ar_santiagodelestero   |lineup_ar_santiagodelestero    |prod_lineup_ar_santiagodelestero    |
        |ar_tierradelfuego      |lineup_ar_tierradelfuego       |prod_lineup_ar_tierradelfuego       |
        |ar_riocuarto           |lineup_ar_riocuarto            |prod_lineup_ar_riocuarto            |
        |ar_fullepg             |lineup_ar_fullepg              |prod_lineup_ar_fullepg              |
