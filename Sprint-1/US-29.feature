Feature: Acceder a un formulario para llenar mis datos de contacto y recibir noticias relacionadas con CambiaZo

  Como usuario visitante, quiero tener la opción de llenar un formulario con mi información de contacto, a través de la landing page, para recibir noticias y actualizaciones relevantes de CambiaZo.

  Scenario: Acceso al formulario de suscripción
    Given que el usuario visitante hace clic en la opción "Contáctanos"
    When es redirigido a la sección "¡Únete a CambiaZo!" en la landing page
    Then puede visualizar un formulario con los campos requeridos para ingresar su nombre, apellido y correo electrónico, y un botón para suscribirse