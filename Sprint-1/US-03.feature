Feature: Iniciar sesión en la aplicación

  Como usuario registrado quiero iniciar sesión en la aplicación para poder acceder a todas sus funcionalidades.

  Scenario: Acceso a la página de inicio de sesión
    Given que el usuario accede a la aplicación sin haber iniciado sesión previamente
    When selecciona la opción "Iniciar sesión"
    Then se mostrará la página de autenticación

  Scenario: Inicio de sesión exitoso
    Given que el usuario está en la página de inicio de sesión
    When introduce credenciales válidas
    And pulsa el botón "Iniciar sesión"
    Then el sistema autenticará al usuario
    And lo redirigirá a la página principal

  Scenario: Fallo en el inicio de sesión
    Given que el usuario está en la página de inicio de sesión
    When introduce credenciales incorrectas
    And pulsa "Iniciar sesión"
    Then la aplicación mostrará un mensaje de error indicando que las credenciales son inválidas
