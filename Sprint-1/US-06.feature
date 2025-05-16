Feature: Filtrado de Objetos

  Como usuario Intercambiador, quiero la capacidad de filtrar los objetos disponibles de intercambio para encontrar la opción que mejor se adapte a mis preferencias de intercambio.

  Scenario: Aplicación de filtros
    Given que el usuario está en la sección de objetos disponibles para intercambio
    When seleccione filtros específicos (como categoría, ubicación y precio)
    And pulse el botón "Aplicar Filtros"
    Then la lista de objetos se ajustará automáticamente según los criterios seleccionados

  Scenario: Visualización de resultados filtrados
    Given que el usuario ha aplicado filtros
    When la aplicación muestra únicamente los objetos que cumplen con los criterios seleccionados
    Then el usuario puede explorar los resultados filtrados según sus preferencias

  Scenario: Sin resultados al aplicar filtros
    Given que el usuario ha aplicado uno o varios filtros en la lista de objetos
    When no se encuentran objetos que cumplan con los criterios seleccionados
    Then la aplicación mostrará un mensaje indicando que no hay resultados disponibles con esos filtros
    And sugerirá al usuario ajustar o eliminar algunos filtros para ampliar la búsqueda