Feature: US25 - Confirmación de objeto depositado en locker
  Como usuario web quiero visualizar la imagen del objeto depositado
  para verificar que esté correctamente colocado.

  Scenario: Captura automática del objeto tras cierre
    Given que el usuario ha cerrado el locker después de depositar su objeto
    When el sistema detecta el cierre exitoso
    Then automáticamente captura una fotografía del interior del locker
    And la adjunta al registro del intercambio en la web

  Scenario: Notificación de imagen disponible por correo electrónico
    Given que la fotografía ha sido tomada y procesada
    When el sistema completa el procesamiento
    Then envía un correo electrónico al usuario
    And le notifica que puede revisar la imagen en la sección “Mis intercambios”

  Scenario: Visualización manual de la imagen
    Given que el usuario quiere comprobar el estado de su depósito
    When accede a la página del intercambio y selecciona “Ver imagen del objeto”
    Then puede visualizar la foto como evidencia de la entrega en la plataforma
