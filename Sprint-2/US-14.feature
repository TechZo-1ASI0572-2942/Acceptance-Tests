Feature: US14 - Eliminar publicación de intercambio
  Como usuario, quiero tener la opción de eliminar una publicación de intercambio 
  que ya no deseo ofrecer para intercambiar.

  Scenario: Acceso a la eliminación
    Given que el usuario ha iniciado sesión y tiene publicaciones
    When accede a la opción de eliminar una publicación desde la interfaz (web o mobile)
    Then el sistema mostrará un mensaje de confirmación

  Scenario: Confirmación de eliminación
    Given que el usuario ha seleccionado eliminar
    When confirma la acción
    Then el sistema elimina la publicación de forma permanente
    And muestra un mensaje de confirmación

  Scenario: Cancelación de eliminación
    Given que el usuario ha iniciado la eliminación
    When cancela la acción
    Then la publicación no se elimina
    And el sistema redirige al usuario al inicio
