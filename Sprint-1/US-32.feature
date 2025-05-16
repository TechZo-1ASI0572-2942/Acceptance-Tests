Feature: Ver los planes y precios

  Como usuario visitante, quiero tener acceso a una sección que detalle los planes ofrecidos por la plataforma, para poder evaluar las opciones disponibles antes de descargar la aplicación.

  Scenario: Visualización de planes y precios disponibles
    Given que el usuario está en la landing page de CambiaZo
    When hace clic en la sección de "Planes"
    Then ve los diferentes planes con sus beneficios y precios

  Scenario: Acción de suscripción a planes
    Given que el usuario está en la landing page de CambiaZo y ha visto los planes
    When hace clic en el botón “¡Empieza ahora!” para cualquiera de los planes
    Then se le redirige a la aplicación web para completar el proceso de suscripción
