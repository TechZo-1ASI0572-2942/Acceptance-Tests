Feature: US11 - Realización de una oferta de intercambio
  Como usuario de la aplicación de intercambio,
  quiero seleccionar uno de mis artículos y enviarlo como oferta de intercambio,
  para poder ofrecerlo a cambio de otro artículo publicado por otro usuario.

  Scenario: Usuario con artículos publicados
    Given que el usuario desea intercambiar un artículo
    When presiona el botón “Ofertar”
    Then verá una lista de sus artículos disponibles
    And podrá seleccionar uno para la oferta

  Scenario: Confirmación de oferta
    Given que el usuario ha seleccionado un artículo
    When confirme la oferta
    Then se le mostrará una pantalla con detalles del artículo ofrecido y solicitado
    And podrá confirmar presionando “Listo”

  Scenario: Oferta enviada con éxito
    Given que la oferta fue confirmada
    When se envíe correctamente
    Then se mostrará un mensaje “¡Oferta Enviada!”
    And se notificará al usuario que la otra parte recibirá la oferta
