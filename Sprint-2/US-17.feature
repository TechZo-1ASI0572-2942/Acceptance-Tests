Feature: US17 - Visualizar el perfil del usuario que publique un producto
  Como usuario, me gustaría tener la capacidad de visualizar el perfil de la persona que haya publicado un intercambio,
  para poder obtener información detallada de su confiabilidad.

  Scenario: Acceso al perfil
    Given que estoy en una publicación
    When toco o hago clic en el recuadro del autor
    Then podré ver su nombre, tiempo en la app, intercambios exitosos y valoraciones

  Scenario: Reseñas
    Given que estoy en el perfil del usuario
    When entro a la sección “Reseñas”
    Then podré ver todas las reseñas recibidas y datos relevantes
