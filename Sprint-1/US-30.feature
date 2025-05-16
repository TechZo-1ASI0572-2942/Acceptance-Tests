Feature: Descargar la aplicación de CambiaZo

  Como usuario visitante, quiero encontrar botones o enlaces claramente visibles en la landing page que me dirijan a la descarga de la aplicación de CambiaZo, para poder registrarme, intercambiar o donar artículos directamente desde mi dispositivo web.

  Scenario: Identificación de botones de acción en la landing page
    Given que el usuario está navegando por la landing page de CambiaZo
    When busca una forma de acceder a la aplicación
    Then encuentra dos botones claramente visibles: uno que dice “Iniciar ahora” y lo lleva a la aplicación web, y otro que dice “Descargar” y lo dirige a la Play Store para obtener la app móvil

  Scenario: Acceso fluido a la plataforma desde los botones
    Given que el usuario hace clic en uno de los botones disponibles
    When selecciona “Iniciar ahora” o “Descargar”
    Then es redirigido correctamente a la versión web de CambiaZo o a la Play Store, permitiéndole comenzar a registrarse, intercambiar o donar artículos sin inconvenientes
