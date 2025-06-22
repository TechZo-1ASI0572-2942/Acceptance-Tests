Feature: US15 - Gestión de intercambios
  Como usuario de la aplicación,
  quiero revisar el estado de los intercambios que he enviado, recibido o aceptado,
  para poder ver los detalles y gestionar mis transacciones de intercambio de manera eficiente.

  Scenario: Revisión de enviados
    Given que estoy en la sección de Intercambios
    When selecciono la pestaña “Enviados”
    Then veré una lista con los objetos ofrecidos y su estado
    And podré ver más detalles al seleccionarlos

  Scenario: Revisión de recibidos
    Given que estoy en la misma sección
    When selecciono “Recibidos”
    Then veré una lista de ofertas con detalles
    And veré opciones para aceptarlas o rechazarlas

  Scenario: Revisión de aceptados
    Given que estoy en la pestaña “Aceptados”
    When selecciono un intercambio
    Then podré ver los detalles
    And dejar una reseña si lo deseo
