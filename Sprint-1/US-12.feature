Feature: US12 - Crear publicación de intercambio

  Como usuario de la aplicación, quiero poder crear una nueva publicación de intercambio para ofrecer un artículo que deseo intercambiar.

  Scenario: Creación de publicación
    Given que el usuario accede a la opción de crear una publicación
    When complete el formulario con título, descripción, categoría y condición del artículo
    Then podrá adjuntar imágenes y enviar el formulario

  Scenario: Publicación creada exitosamente
    Given que el formulario está completo
    When el usuario lo envíe
    Then la aplicación validará los campos
    And creará la publicación exitosamente

  Scenario: Visualización de publicación
    Given que la publicación ha sido creada
    When el usuario acceda a su perfil y luego a “Mis artículos”
    Then verá la nueva publicación reflejada en la lista de artículos