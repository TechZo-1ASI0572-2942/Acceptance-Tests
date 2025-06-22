Feature: US18 - Aceptar o Rechazar un Intercambio
  Como usuario que ha recibido una oferta de intercambio,
  quiero poder revisar los detalles de la oferta y tomar una decisión para aceptar o rechazar el intercambio,
  para poder gestionar mis transacciones de manera eficiente y asegurada.

  Scenario: Revisión de oferta
    Given que estoy en “Intercambios”
    When selecciono una oferta pendiente
    Then veré todos los detalles y opciones para aceptarla o rechazarla

  Scenario: Aceptar oferta
    Given que estoy viendo una oferta
    When presiono “Aceptar”
    Then se muestra un popup de confirmación
    And la oferta pasa a “Aceptados”

  Scenario: Rechazar oferta
    Given que estoy viendo una oferta
    When presiono “Rechazar”
    Then se muestra un popup con mensaje de advertencia

  Scenario: Confirmación del rechazo
    Given que he presionado “Rechazar oferta”
    When confirmo la acción
    Then la oferta se elimina
    And no puede recuperarse
