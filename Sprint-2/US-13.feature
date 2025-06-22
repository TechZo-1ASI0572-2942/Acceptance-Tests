Feature: US13 - Editar publicación de intercambio
  Como usuario, necesito la capacidad de editar una publicación de intercambio existente 
  para realizar cambios en los detalles del artículo o actualizar la información relevante.

  Scenario: Acceso a la edición de una publicación de intercambio
    Given que el usuario ha iniciado sesión en la aplicación (web o mobile)
    And tiene una publicación existente
    When el usuario pulsa la opción de editar la publicación desde la interfaz
    Then el sistema redirige a un formulario prellenado con los detalles actuales de la publicación para realizar cambios
    And se muestran dos botones: “Cancelar” y “Publicar”

  Scenario: Edición de la publicación confirmada
    Given que el usuario está en el formulario de edición de la publicación
    When realiza cambios en los detalles del artículo como título, descripción, categoría o condición
    And pulsa el botón “Publicar”
    Then el sistema guardará los cambios
    And la publicación actualizada será visible para los demás usuarios

  Scenario: Edición cancelada
    Given que el usuario está en el formulario de edición
    When realiza cambios y pulsa el botón “Cancelar”
    Then el sistema lo redirige a la pantalla de inicio de la aplicación
