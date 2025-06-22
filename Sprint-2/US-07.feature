Feature: US07 - Asignación de locker para intercambio
  Como usuario web quiero que la plataforma me sugiera un locker cercano 
  para poder realizar el intercambio de manera sencilla.

  Scenario: Selección del método de intercambio en la web
    Given que el usuario ha acordado un intercambio exitoso en la plataforma web
    When selecciona la opción "Intercambiar usando locker" desde la sección de acuerdos
    Then el sistema muestra un mapa interactivo con lockers disponibles
    And resalta automáticamente el más cercano basado en su ubicación registrada

  Scenario: Confirmación visual del locker sugerido
    Given que el usuario visualiza el locker sugerido en el mapa
    When presiona el botón “Confirmar locker” dentro de la plataforma web
    Then el sistema registra la selección
    And presenta un mensaje de confirmación en pantalla

  Scenario: Cambio manual de locker desde el listado
    Given que el usuario desea seleccionar un locker distinto al sugerido inicialmente
    When elige otro locker desde el listado desplegable
    Then el sistema actualiza la asignación
    And muestra una nueva confirmación en la interfaz
