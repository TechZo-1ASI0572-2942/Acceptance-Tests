Feature: US-27 Visualización de la Historia de la Startup

  Como usuario visitante, quiero acceder a la sección “¿Quiénes somos?” de la landing page, para conocer la historia de CambiaZo y al equipo que lo hace posible.

  Scenario: Visualizar la historia de la startup
    Given que me encuentro en la landing page de CambiaZo
    When accedo a la sección “¿Quiénes somos?”
    Then veré una breve presentación sobre la startup, que explica su propósito de promover el intercambio y la donación de objetos para fomentar un estilo de vida sostenible, junto a un video introductorio que refuerza esta visión

  Scenario: Conocer al equipo de CambiaZo
    Given que me encuentro en la sección “¿Quiénes somos?” de la landing page
    When deslizo el carrusel o slider que aparece a continuación del video
    Then podré visualizar las fotos de los integrantes del equipo, junto con sus nombres y los roles o puestos que ocupan dentro del proyecto