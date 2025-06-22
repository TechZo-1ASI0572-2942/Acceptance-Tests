Feature: US22 - Recepción de PIN para apertura de locker (Web)
  Como usuario web quiero recibir un PIN seguro desde la plataforma
  para abrir el locker de forma segura.

  Scenario: Visualización inmediata del PIN en la web
    Given que el usuario ha confirmado un locker para su intercambio
    When finaliza el proceso de asignación
    Then el sistema muestra de manera segura el PIN de apertura en la página de detalles del intercambio
    And el PIN es visible solo una vez para proteger la seguridad

  Scenario: Acceso seguro al PIN desde sección “Mis Intercambios”
    Given que el usuario necesita revisar su PIN posteriormente
    When ingresa a la sección “Mis intercambios” en la web y selecciona el intercambio correspondiente
    Then puede visualizar nuevamente el PIN
    And se requiere un proceso de autenticación adicional si es necesario

  Scenario: Solicitud de nuevo PIN en caso de expiración
    Given que el PIN inicial ha expirado o se ha perdido
    When el usuario solicita un nuevo PIN mediante el botón "Generar nuevo PIN"
    Then el sistema invalida el anterior
    And genera un nuevo PIN único para el mismo intercambio