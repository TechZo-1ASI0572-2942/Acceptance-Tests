Feature: US05 - Cerrar Sesión

  Como usuario registrado quiero cerrar sesión en la aplicación para asegurarme de que mi cuenta no quede almacenada en mi dispositivo web.

  Scenario: Acceso a la opción de cerrar sesión
    Given que el usuario ha iniciado sesión en la aplicación (web o móvil)
    When acceda a la sección de configuración de la cuenta
    Then la aplicación mostrará la opción para cerrar sesión

  Scenario: Cierre de sesión exitoso
    Given que el usuario se encuentra en la página o sección de cierre de sesión
    When seleccione el botón "Cerrar Sesión"
    Then la aplicación concluirá la sesión del usuario
    And lo redirigirá a la página de inicio de sesión