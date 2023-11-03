Feature: ID-01 Registro de usuario (Empleados o supervisores)

    Como nuevo empleado o supervisor, deseo registrar una cuenta en la aplicación para acceder a las funcionalidades laborales.

    Scenario: Usuario accede a la página de registro
        Given que el [usuario] es un [empleado o supervisor nuevo].
        And el usuario se encuentra en la página de “Inicio de sesión o "[Registro]" de la aplicación.
        When el [usuario] haga clic en el botón "Registrarse".
        Then la aplicación mostrará la página de [registro].

        Examples:
            | Usuario | Rol |
            | Empleado | Empleado |
            | Supervisor | Supervisor |

    Scenario: Usuario se registra con datos válidos
        Given que el usuario se encuentra en la página de registro.
        When el usuario ingrese sus datos en los campos: "Nombre", "Correo electrónico", "Contraseña", "Confirmar contraseña" y "Rol" (empleado o supervisor).
        And el usuario ingresé su código de verificación válido en el campo “Código de empresa”
        And el usuario haga clic en el botón "Registrar".
        Then el usuario estará registrado en el sistema con el rol correspondiente.
        And la aplicación mostrará la página de inicio correspondiente a su rol.

    Scenario: Usuario se registra con datos inválidos
        Given que el usuario se encuentra en la página de registro.
        When el usuario ingrese datos incompletos o no válidos en los campos: "Nombre", "Correo electrónico", "Contraseña", "Confirmar contraseña" y "Rol" (empleado o supervisor).
        And el usuario haga clic en el botón "Registrar".
        Then la aplicación mostrará un mensaje de “Error” o “Faltan datos” de color rojo debajo de los campos obligatorios que no completo el usuario.

Feature: ID-08 Integración de Calendario Mejorada

    Como empleado, quiero que la aplicación analice mi calendario personal y me proporcione fechas y horas óptimas para trabajar con mayor eficiencia.

    Scenario: Usuario configura la integración de calendario mejorada
        Given que el usuario es un empleado y ha iniciado sesión en la aplicación.
        When el usuario acceda a la función de "Integración de Calendario Mejorada" desde el menú principal.
        Then la aplicación proporcionará opciones para configurar la integración con calendarios personales, como Google Calendar, Outlook o Apple Calendar.

        And la aplicación mostrará un resumen de las siguientes opciones para configurar la integración con cada calendario personal:
          | Opción | Descripción |
          | Tipo de calendario | El tipo de calendario que se desea integrar. |
          | Calendarios | Los calendarios específicos que se desean integrar. |
          | Datos del calendario | Los datos del calendario que se desean compartir con la aplicación. |

        And la aplicación permitirá al usuario elegir las opciones de configuración deseadas para cada calendario personal.

        Example: 
            | empleado |
            | [Nombre de usuario] |
    
    Scenario: Usuario vincula su calendario personal y autoriza el análisis    
        Given que el usuario ha seleccionado un calendario personal para integrar y ha autorizado el análisis de su calendario por parte de la aplicación.
        When el usuario siga los pasos para vincular su calendario personal y permitir que la aplicación analice su disponibilidad.
        Then la aplicación establecerá la conexión y comenzará a analizar el calendario personal del usuario.

    Scenario: Usuario recibe recomendaciones de horarios óptimos
        Given que la aplicación ha analizado el calendario personal del usuario.
        When el usuario acceda a la función de "Horarios Óptimos" dentro de la aplicación.
        Then la aplicación proporcionará recomendaciones de fechas y horas óptimas para llevar a cabo tareas laborales y proyectos, 
        teniendo en cuenta la disponibilidad y la carga de trabajo del usuario en su calendario personal.


Feature: ID-10 Evaluación de la Carga de Trabajo

    Como empleado, deseo tener la capacidad de evaluar mi carga de trabajo en la aplicación para asegurarme de que sea manejable y equitativa.

    Scenario: Usuario accede a la función de Evaluación de Carga de Trabajo
        Given que el usuario es un empleado y ha iniciado sesión en la aplicación.
        When el usuario acceda a la función de "Evaluación de Carga de Trabajo" desde el menú principal.
        Then la aplicación mostrará herramientas que permiten al usuario evaluar su carga de trabajo actual.

        And la página incluirá los siguientes elementos:
          | Elemento | Descripción |
          | Información general: |  |Una breve introducción a la evaluación de la carga de trabajo. |
          | Herramientas de evaluación:|  |Una serie de herramientas que permiten al usuario evaluar su carga de trabajo actual. |
          | Resultados:|  |Una visualización de los resultados de la evaluación. |

        And la página permitirá al usuario navegar por los elementos de la sección de forma sencilla.
        And la página permitirá al usuario guardar los resultados de la evaluación.

        Example: 
            | empleado |
            | [Nombre de usuario] |   

    Scenario: Usuario completa la evaluación de carga de trabajo
        Given que el usuario ha accedido a la función de “Evaluación de Carga de Trabajo”.
        When el usuario responda preguntas relacionadas con su carga de trabajo, incluyendo la cantidad de tareas, plazos y nivel de estrés.
        Then la aplicación procesará las respuestas y proporcionará al usuario una evaluación de su carga de trabajo, indicando si es manejable o si puede requerir ajustes.

    Scenario: Usuario recibe recomendaciones de manejo de carga de trabajo
        Given que el usuario ha completado la evaluación de carga de trabajo.
        When el usuario acceda a la función de "Recomendaciones" dentro de la aplicación.
        Then la aplicación utilizará los datos de la evaluación de carga de trabajo para proporcionar recomendaciones específicas, como la reasignación de tareas, 
        la priorización de actividades o la implementación de estrategias de manejo del estrés, si es necesario.

