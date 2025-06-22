Feature: TS02 - API Exchange
  Como usuario developer que configura la plataforma,
  quiero implementar una API que permita a los usuarios dejar intercambios a otros usuarios,
  para mejorar la interacción entre usuarios y la plataforma.

  Scenario: Diseño de la API Exchange
    Given que el usuario developer está configurando la plataforma
    When diseña la API para permitir a los usuarios dejar intercambios
    Then se definen los endpoints y rutas necesarias para crear, leer, actualizar y eliminar intercambios
    And se establecen requisitos de autenticación y seguridad para proteger la privacidad

  Scenario: Selección de la tecnología para la API
    Given que el usuario developer está diseñando la API de intercambios
    When elige la tecnología para implementar la API REST
    Then se consideran los requisitos de escalabilidad, rendimiento y facilidad de mantenimiento

  Scenario: Obtener información del intercambio
    Given que el endpoint "/exchanges" está disponible
    When se envía una solicitud GET con el identificador del intercambio
    Then se recibe una respuesta con estado 200
    And se obtienen los datos del intercambio solicitado

  Scenario: Obtener intercambio no disponible
    Given que el endpoint "/exchanges" está disponible
    When se envía una solicitud GET con un identificador de intercambio que no existe
    Then se recibe una respuesta con estado 404
    And se muestra un mensaje que indica "No existe un intercambio con este identificador"

  Scenario: Agregar un nuevo intercambio
    Given que el endpoint "/exchanges" está disponible
    When se envía una solicitud POST con los valores del intercambio
    Then se recibe una respuesta con estado 201
    And se incluye un intercambio con un nuevo ID y los valores registrados

  Scenario: Agregar un intercambio ya existente
    Given que el endpoint "/exchanges" está disponible
    When se envía una solicitud POST con los datos del intercambio
    And ya existe un intercambio registrado con esos datos
    Then se recibe una respuesta con estado 400
    And se muestra un mensaje que dice "Un intercambio con estos datos ya existe"
