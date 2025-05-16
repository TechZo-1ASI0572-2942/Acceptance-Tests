Feature: US28 - Visualizar las características clave de la aplicación

  Como usuario visitante, quiero poder conocer sus características clave para saber qué es lo que incluye.

  Scenario: Acceso a la sección de características
    Given que el usuario es un visitante en la página principal
    When hace clic en el botón o enlace de "Características"
    Then es redirigido a la sección "Descubre las ventajas de ser parte de nuestra comunidad"

  Scenario: Visualización de beneficios principales
    Given que el usuario está en la sección de características
    When visualiza el contenido inicial
    Then se le muestran dos opciones destacadas de Intercambios y Donaciones

  Scenario: Exploración visual de productos intercambiables
    Given que el usuario ha explorado los beneficios iniciales
    When hace scroll hacia abajo
    Then ve un carrusel o cuadrícula de imágenes con ejemplos de productos que puede intercambiar

  Scenario: Conocimiento de valores diferenciales y características específicas
    Given que el usuario continúa navegando la sección de características
    When llega al bloque "Intercambios Sostenibles, Simplificados"
    Then visualiza un mensaje que promueve la sostenibilidad mediante el intercambio, la donación y la conexión comunitaria
    And también identifica las siguientes características: seguridad, artículos, comunidad, sostenible

  Scenario: Reconocimiento de alianzas solidarias
    Given que el usuario ha leído las características
    When llega al bloque final de la sección
    Then puede visualizar logotipos o imágenes de las ONGs afiliadas que trabajan junto a la app, entendiendo su compromiso social
