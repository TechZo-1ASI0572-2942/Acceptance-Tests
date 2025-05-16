Feature: US01 - Registro de usuario

  Como nuevo usuario quiero completar el proceso de registro en la aplicación para establecer mi propia cuenta.

  Scenario: Acceso del usuario a la página de registro
    Given que el usuario ha accedido a la aplicación (web o móvil)
    When se encuentra en la sección de "Inicio de sesión"
    And opta por pulsar el botón "Registrarse"
    Then la aplicación mostrará la página de registro

  Scenario: Registro exitoso del usuario
    Given que el usuario está en la página de registro
    When introduce la información requerida
    And pulsa el botón "Registrarse"
    Then la aplicación completará el proceso de registro
    And guardará la cuenta del usuario

  Scenario: Registro con datos inválidos
    Given que el usuario está en la página de registro
    When proporciona información incompleta o no válida
    And pulsa el botón "Registrarse"
    Then la aplicación mostrará un mensaje de error
    And no permitirá completar el registro