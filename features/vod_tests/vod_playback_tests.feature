Feature: Revisar reproducción de contenidos VOD
    Background:
        Given V-card de contenido VOD Serie

    @vod
    Scenario Outline: Revisar reproducción de contenido VOD Clarovideo Serie
        Given usuario con V-card de <addon_type_serie> VOD abierta en '<region>'
        When  usuario inicia reproducción del contenido <addon_type> desde botón play
        Then  usuario debe ver que el contenido VOD se reproduce sin cortes o errores de reproducción

        Examples: addons_lista.csv
        |region                 |addon_type_serie           |
    #ex |mexico                 | crunchyroll |


    @vod
    Scenario Outline: Revisar reproducción de contenido VOD Clarovideo Película
        Given usuario con V-card de <addon_type_pelicula> VOD abierta en '<region>'
        When  usuario inicia reproducción del contenido <addon_type> desde botón play
        Then  usuario debe ver que el contenido VOD se reproduce sin cortes o errores de reproducción

        Examples: addons_lista.csv
        |region                 |addon_type_pelicula        |
    #ex |mexico                 | Picardia |