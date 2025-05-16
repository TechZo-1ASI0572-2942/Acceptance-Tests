Feature: Adquirir la suscripción premium

  Como usuario, quiero poder adquirir una suscripción premium para poder obtener beneficios adicionales que mejoren mi experiencia.

  Scenario: Localizar la sección para adquirir una suscripción
    Given que el usuario desea adquirir una suscripción premium en CambiaZo
    When accede a la sección de Memberships desde la versión web
    Then se le mostrarán los diferentes planes de suscripción disponibles
    And desde la versión mobile, al acceder a la sección Mi Suscripción, se le mostrarán los planes disponibles

    When el usuario selecciona un plan específico desde cualquiera de las versiones (web o mobile)
    Then se abrirá la pasarela de pago de PayPal para proceder con el pago

  Scenario: Realizar el pago de la suscripción
    Given que el usuario ha seleccionado un plan de su interés
    When pulsa el botón de “Suscribirse”
    Then será redirigido a PayPal para completar el pago y activar la suscripción premium