Feature: US16 - Visualización de objetos disponibles para intercambio

  Como usuario, necesito poder ver objetos disponibles para intercambio, de manera que pueda navegar y seleccionar aquellos que me interesen.

  Scenario: Visualización
    Given que el usuario ha iniciado sesión
    And accede a la sección de “Explorar o Home” (desde web o mobile)
    When entra a esa sección
    Then el sistema mostrará: barra de búsqueda, categorías y publicaciones con foto, valor, nombre, ubicación y descripción

  Scenario: Búsqueda
    Given que el usuario está en “Explorar o Home”
    When usa la barra de búsqueda
    Then el sistema mostrará resultados que coincidan, con la misma información visual
