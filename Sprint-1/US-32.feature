Feature: US32 - Navegación en la Landing Page

  Como usuario visitante,
  Quiero contar con un menú de navegación visible y funcional,
  Para desplazarme fácilmente por las diferentes secciones del sitio web.

  Scenario: Acceder a la información acerca de la startup
    Given el usuario se encuentra en la Landing Page
    When quiere acceder a la información acerca del equipo
    Then puede darle clic a la etiqueta “Nosotros” en la barra de navegación
    And es redirigido rápidamente a la sección con la información correspondiente

  Scenario: Ver las características de la aplicación
    Given el usuario se encuentra en la Landing Page
    When quiere conocer las características clave de CambiaZo
    Then puede darle clic a la etiqueta “Características” en la barra de navegación
    And es redirigido rápidamente a la sección con las funcionalidades destacadas

  Scenario: Ver los planes y precios
    Given el usuario se encuentra en la Landing Page
    When quiere ver los planes y precios de CambiaZo
    Then puede darle clic a la etiqueta “Planes” en la barra de navegación
    And es redirigido a la sección que describe los planes y beneficios

  Scenario: Acceder a la sección de contacto
    Given el usuario se encuentra en la Landing Page
    When quiere acceder a la sección para contactarse con la startup
    Then puede darle clic a la etiqueta “Contáctanos” en la barra de navegación
    And es redirigido rápidamente a la sección con el formulario y datos de contacto

  Scenario: Descargar o iniciar la aplicación
    Given el usuario se encuentra en la Landing Page
    When quiere descargar la aplicación o acceder a la versión web
    Then puede hacer clic en los botones “Iniciar ahora” o “Descargar” en la barra de navegación
    And es redirigido correctamente a la aplicación web o a la Play Store
