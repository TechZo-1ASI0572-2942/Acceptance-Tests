Feature: US09 - Eliminación de cuenta
  Como usuario
  Quiero tener la opción de eliminar permanentemente mi cuenta
  Para evitar que mi información persista en caso de que ya no desee utilizar la aplicación

  Scenario Outline: Acceso a la opción de eliminación
    Given que el <usuario> está registrado en la aplicación
    When desee eliminar su cuenta
    Then encontrará una opción claramente visible en la configuración de cuenta que le permita eliminarla

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Confirmación de eliminación
    Given que el <usuario> selecciona la opción de eliminar su cuenta
    When confirme su elección
    Then se mostrará un mensaje solicitando una segunda confirmación antes de proceder

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Eliminación exitosa
    Given que el <usuario> ha confirmado la eliminación
    When la acción es procesada
    Then todos los datos asociados a la cuenta son eliminados permanentemente
    And esta se desactiva en ambas versiones de la aplicación

    Examples:
      | usuario |
      | Pedro   |
