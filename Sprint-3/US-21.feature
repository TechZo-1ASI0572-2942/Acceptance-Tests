Feature: US21 - Cancelar una suscripción
  Como usuario
  Quiero poder cancelar mi suscripción en cualquier momento
  Para no pagar mensualmente

  Scenario Outline: Acceso a la ventana de suscripciones
    Given que el <usuario> desea verificar la información del estado de su suscripción
    When se dirige a la sección de configuración desde la versión web
    Then deberá acceder a su perfil y, dentro de este, en la sección de Detalles de perfil, encontrará una sección llamada “Mi membresía”
    And al pulsar en esta sección, podrá ver los detalles de su suscripción
    When accede a la versión mobile y entra a la sección de Mi suscripción
    Then podrá ver el estado de su suscripción actual y los detalles relacionados

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Verificación de los detalles de la suscripción
    Given que el <usuario> se encuentra en la ventana que muestra el estado de su suscripción
    When revisa los detalles
    Then podrá visualizar la fecha de renovación
    And si se encuentra en un <plan>

    Examples:
      | Beneficios                            | Plan      |
      | Acceso a funciones plus               | Plus      |
      | Acceso a funciones premium            | Premium   |

  Scenario Outline: Proceder a la cancelación
    Given que el <usuario> se encuentra en la ventana que muestra el estado de su suscripción
    When ha decidido no continuar con la suscripción premium de CambiaZo
    Then podrá pulsar en el botón rojo que dice “Anular suscripción” desde la versión web en la sección Mi membresía dentro de Detalles de perfil
    And así, la suscripción será cancelada y no se renovará hasta la próxima fecha de pago
    When accede desde la versión mobile a la sección Mi suscripción y selecciona Planes
    Then verá la opción de cambiar a Plan Lite, lo cual efectivamente cancela la suscripción premium y la coloca en un plan gratuito, eliminando los pagos mensuales

    Examples:
      | BotonCancelar        |
      | Anular suscripción   |

  