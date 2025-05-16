Feature: US19 - Ver la información detallada de un producto publicado

  Como usuario de la aplicación, quiero poder ver la información completa de un producto en el que estoy interesado, para poder decidir si quiero guardarlo en mis favoritos o proponer un intercambio.

  Scenario: Ver detalles
    Given que he seleccionado una publicación
    When se abre la pantalla del artículo
    Then veré: imagen, valor, usuario, calificación, título, descripción, ubicación e intereses

  Scenario: Ver perfil del usuario
    Given que estoy en la pantalla de información
    When selecciono el nombre o foto del usuario
    Then me redirige a su perfil

  Scenario: Guardar en favoritos
    Given que estoy en la información del producto
    When presiono el ícono de favoritos
    Then el producto se guarda en mis favoritos y el ícono cambia