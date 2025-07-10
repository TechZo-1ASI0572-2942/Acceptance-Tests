Feature: US08 - Brindar reseña sobre el Intercambiador
  Como usuario intercambiador
  Quiero dejar una reseña sobre mi experiencia con el intercambiador
  Para que otros usuarios puedan leer y considerar mi opinión antes de intercambiar

  Scenario Outline: Dejar una reseña
    Given que el <usuario> ha completado un intercambio
    When accede a la sección correspondiente a esa experiencia
    Then encontrará una opción para dejar una <resenia> sobre el otro usuario

    Examples:
      | usuario | reseña                                         | estrellas |
      | Pedro   | "Excelente intercambio, todo bien."            | 5        |
      | Ana     | "Fue un buen intercambio, pero un poco lento." | 3        |


  Scenario Outline: Visualización de reseñas
    Given que otros <usuarios> exploran las experiencias de intercambio
    When acceden a las <resenia> dejadas por otros
    Then pueden leer y considerar las opiniones antes de iniciar un intercambio

    Examples:
      Examples:
      | usuario | reseña                                         | estrellas |
      | Pedro   | "Excelente intercambio, todo bien."            | 5         |
      | Ana     | "Fue un buen intercambio, pero un poco lento." | 3         |
   

