Feature: US24 - Ver reseñas recibidas
  Como usuario de la aplicación
  Quiero poder ver las reseñas y calificaciones que he recibido
  Para tener una referencia de mi reputación en la plataforma

  Scenario Outline: Ver la calificación general y reseñas recibidas
    Given que el <usuario> está en su perfil
    When selecciona la opción "Mis Reseñas"
    Then se le mostrará su <calificacion> general promedio de estrellas, el número <total de resenias> recibidas
    And una lista de las resenias, mostrando el nombre del usuario que dejó la reseña, su calificación numero de <estrellas> y el <comentario> de la reseña

      | Usuario          | Calificación | Comentario               |
      | <Usuario>        | <Estrellas>  | <Comentario>             |

    Examples:
      | CalificacionGeneral | TotalResenas | Usuario         | Estrellas | Comentario              |
      | 4.00                | 1            | Joseph Huamani  | 5         | Buen intercambio jose   |
      | 3.75                | 4            | Ana Torres      | 4         | Producto en buen estado |
      | 3.75                | 4            | Carlos Perez    | 3         | Llegó un poco tarde     |
