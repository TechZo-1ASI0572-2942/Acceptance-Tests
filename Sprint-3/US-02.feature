
Feature: US02 - Editar perfil del usuario
  Como usuario ya registrado 
  Quiero realizar modificaciones en mi perfil
  Para asegurarme de que mi información esté siempre actualizada

  Scenario Outline: Escenario 1: Acceso del usuario a "Mi perfil"
    Given que el usuario ha iniciado sesión
    When accede a la opción "Mi perfil" desde el menú principal
    Then la aplicación mostrará la página con la información del perfil

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Escenario 2: El usuario elige editar su perfil
    Given que el usuario está en la página "Mi perfil"
    When pulsa el botón "Editar perfil"
    Then la aplicación mostrará la interfaz para modificar los datos personales

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Escenario 3: Actualización exitosa de perfil
    Given que el usuario se encuentra en la sección de edición de perfil
    When introduce sus nuevos datos
    And pulsa el botón "Guardar cambios"
    Then la aplicación actualizará su información correctamente

    Examples:
      | usuario | nombre     | correo              | teléfono   | imagen                               |
      | Pedro   | Pedro Mejía| pedro@email.com     | 987654321  | https://img.com/foto_perfil_pedro.jpg|


  Scenario Outline: Escenario 4: Datos inválidos al editar perfil
    Given que el usuario está editando su perfil
    When ingresa información incompleta o inválida
    And pulsa "Guardar cambios"
    Then la aplicación mostrará un mensaje de error
    And no guardará los datos

    Examples:
      | usuario | nombre | correo          | teléfono | imagen       |
      | Pedro   |        | pedro@email.com |          |              |
