Feature: US26 - Validación final y desbloqueo del locker
  Como usuario web quiero validar el objeto depositado antes de generar el PIN final 
  para su retiro y asegurar mi intercambio.

  Scenario: Confirmación manual del objeto
    Given que el usuario ha recibido la fotografía del objeto depositado
    When confirma manualmente que el objeto corresponde al acordado
    Then el sistema genera y despliega el PIN de retiro en la plataforma
    And permite que el usuario proceda a recogerlo

  Scenario: Reporte de objeto incorrecto desde la plataforma
    Given que el objeto capturado en la fotografía no coincide con el acordado
    When el usuario presiona la opción “Reportar problema”
    Then el sistema bloquea el locker
    And alerta al equipo de soporte para iniciar el protocolo de resolución

  Scenario: Recordatorio de validación por correo
    Given que el usuario no ha realizado la validación después de un tiempo razonable
    When el sistema detecta la inactividad
    Then envía un recordatorio vía correo electrónico
    And solicita que confirme o reporte el estado del objeto antes de una expiración automática
