Feature: TS03 - API Lockers
  Como usuario developer que configura la plataforma,
  quiero diseñar una API que simplifique la obtención de información sobre los lockers,
  para integrarla de manera efectiva en la aplicación.

  Scenario: Diseño de la API Lockers
    Given que el usuario developer configura la plataforma
    When diseñe la API para obtener información sobre los lockers
    Then define los endpoints y rutas necesarias para recibir detalles sobre los lockers
    And establece los requisitos de autenticación y seguridad necesarios

  Scenario: Selección de la tecnología para la API
    Given que el usuario developer está diseñando la API para obtener información sobre los lockers
    When elija la tecnología para implementar la API REST
    Then considerará los requisitos y preferencias de la organización para tomar una decisión informada

  Scenario: Obtener información del locker
    Given que el endpoint "/lockers" está disponible
    When se envía una solicitud GET con el identificador del locker
    Then se recibe una respuesta con estado 200
    And se obtienen los datos del locker solicitado

  Scenario: Obtener locker no disponible
    Given que el endpoint "/lockers" está disponible
    When se envía una solicitud GET con un identificador de locker que no existe
    Then se recibe una respuesta con estado 404
    And se muestra un mensaje que indica "No existe un locker con este identificador"

  Scenario: Agregar un nuevo locker
    Given que el endpoint "/lockers" está disponible
    When se envía una solicitud POST con los valores del locker
    Then se recibe una respuesta con estado 201
    And se incluye un locker con un nuevo ID y sus valores registrados

  Scenario: Agregar un locker ya existente
    Given que el endpoint "/lockers" está disponible
    When se envía una solicitud POST con los datos del locker
    And ya existe un locker registrado con esos datos
    Then se recibe una respuesta con estado 400
    And se muestra un mensaje que dice "Un locker con estos datos ya existe"
