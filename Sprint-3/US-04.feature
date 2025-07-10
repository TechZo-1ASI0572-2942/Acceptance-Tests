Feature: US04 - Cambiar Contraseña
  Como usuario registrado
  Quiero realizar cambios en la contraseña de mi cuenta
  Para reforzar la seguridad de mi cuenta

  Scenario Outline: Acceso a la opción de cambio de contraseña
    Given que el <usuario> ha iniciado sesión en la aplicación
    When acceda a la sección de configuración de la cuenta
    Then la aplicación mostrará la opción para modificar la contraseña

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Cambio exitoso de la contraseña
    Given que el <usuario> está en la página o sección de cambio de contraseña
    When ingrese su <contrasenia> actual y la <nueva contrasenia> dos veces
    And pulse el botón "Cambiar Contraseña"
    Then la aplicación ejecutará el cambio de contraseña
    And mostrará un mensaje de confirmación

    Examples:
      | usuario | nueva_contraseña | repetir_contraseña |
      | Pedro   | nuevaClave123    | nuevaClave123      |

  Scenario Outline: Intento de cambio fallido
    Given que el <usuario> se encuentra en la sección de cambio de contraseña
    When ingrese una <contrasenia> actual incorrecta o incompleta, seguida de la <nueva contrasenia> dos veces
    And pulse el botón "Cambiar Contraseña"
    Then la aplicación mostrará un mensaje de error indicando que la contraseña actual es incorrecta

    Examples:
      | usuario | nueva_contraseña | repetir_contraseña |
      | Pedro   | nuevaClave123    | clave123           |
