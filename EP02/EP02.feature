Feature: ID-02 Asignación Inteligente de Tareas

    Como supervisor, deseo utilizar la funcionalidad de asignación inteligente de tareas en la plataforma para distribuir el trabajo de manera equitativa y eficiente, 
    teniendo en cuenta las habilidades y preferencias de los empleados

    Scenario: Usuario accede a la función de asignación de tareas
        Given que el [usuario] con rol de [“supervisor”] se encuentra en la página principal del sistema. 
        When el usuario haga clic al icono "Asignación de Tareas" ubicado en el centro de la página principal.
        Then la aplicación mostrará la página de asignación de tareas con la [lista de empleados] y [proyectos disponibles].

        Example: 
            | Nombre de usuario | Rol | Proyectos disponibles | Empleados disponibles |
            | Tocayo | Supervisor | Proyecto 1, Proyecto 2 | Empleado 1, Empleado 2 |
            | Carlos Sanchez | Supervisor | Proyecto 3, Proyecto 4 | Empleado 3, Empleado 4 |

    Scenario: Usuario define proyecto a trabajar 
        Given que el usuario se encuentra en la página de asignación de tareas.
        Cuando el usuario seleccione un “proyecto”, y asigne una “tarea específica”.
        And el usuario haga clic en el botón "Buscar empleado".
        Then la aplicación mostrará la pantalla “Selección empleado” que tiene la lista de empleados disponibles que sean más eficientes para el proyecto.

    Scenario: Usuario analiza los detalles del empleado
        Given que el usuario con rol de “supervisor” se encuentra en la pantalla “Selección empleado”.
        When el usuario haga clic en la imagen de un empleado.
        Then la aplicación mostrará los detalles del empleado seleccionado como: “Horario laboral”, “Proyectos en curso” y “Habilidades destacadas”.

    Scenario: Usuario asigna una tarea a un empleado
        Given que el usuario se encuentra en la ventana detalles del empleado.
        And el usuario identifique los botones “Asignar tarea” o “Revisar detalles de otro empleado", los cuales encuentran en la barra superior de la ventana detalles del empleado.
        When el usuario haga clic en el botón "Asignar tarea".
        Then la aplicación asignará la tarea al empleado seleccionado y notificará al empleado sobre la nueva tarea.

Feature: ID-04 Evaluación de Encuestas de Bienestar

    Como administrador, deseo tener la capacidad de evaluar las encuestas de bienestar preconfiguradas en la plataforma y 
    revisar los informes generados a partir de las respuestas de los empleados.

    Scenario: Usuario accede a las encuestas y reportes
        Given que el usuario es un administrador y ha iniciado sesión en la aplicación.
        When el usuario acceda a la sección de "Encuestas de Bienestar" desde la página principal en modo administrador.
        Then la aplicación mostrará una lista de las encuestas preconfiguradas disponibles.

        And el administrador verifica que la lista de encuestas sea completa y actualizada.
        And el administrador verifica que la lista de encuestas esté organizada de manera lógica.
        And el administrador verifica que la lista de encuestas incluya información relevante.

        Example: 
            | administrador |
            | Mateo Vilchez |


    Scenario: Usuario selecciona una encuesta específica para ser evaluada
        Given que el usuario se encuentra en la página de “Encuestas de bienestar”
        And el usuario identifique la lista de las encuestas preconfiguradas que no han sido realizadas a los empleados.
        When el usuario seleccione una encuesta preconfigurada de la lista que no fue realizada, con los empleados a los que desea enviar la encuesta.
        And el usuario haga clic en el botón "Enviar Encuesta".
        Then la aplicación enviará la encuesta a los empleados seleccionados y registrará sus respuestas.
     
    Scenario: Usuario revisa el informe de una encuesta
        Given que el usuario es un administrador y ha accedido a la sección de "Encuestas de Bienestar" y ha seleccionado una encuesta específica de la lista de encuestas realizadas.
        When el usuario haga clic en la opción "Ver Informe".
        Then la aplicación mostrará un informe detallado basado en las respuestas de cada empleado que realizo la encuesta.


Feature: ID-06 Recomendaciones Personalizadas 

    Como gerente o líder de equipo, deseo recibir recomendaciones personalizadas de la plataforma en función de los datos recopilados sobre el bienestar y 
    el desempeño de mis empleados, para tomar medidas proactivas que mejoren su bienestar y eficiencia laboral.

    Scenario: Usuario accede a las Recomendaciones Personalizadas
        Given que el usuario con rol de “supervisor” se encuentra en la página principal del sistema. 
        When el usuario acceda a la página de "Recomendaciones Personalizadas" dando clic a su respectivo icono en la página principal.
        Then la aplicación mostrará una lista de los empleados con las respectivas recomendaciones basadas en los datos recopilados sobre su bienestar y su desempeño.

        And la lista de empleados incluye los siguientes datos:
          | Nombre | Rol | Nivel de Bienestar | Nivel de Desempeño | Recomendaciones |
          | [Nombre de empleado 1] | [Rol de empleado 1] | [Nivel de bienestar de empleado 1] | [Nivel de desempeño de empleado 1] | [Lista de recomendaciones para empleado 1] |
          | [Nombre de empleado 2] | [Rol de empleado 2] | [Nivel de bienestar de empleado 2] | [Nivel de desempeño de empleado 2] | [Lista de recomendaciones para empleado 2] |


        And el supervisor verifica que la lista de empleados sea completa y actualizada.
        And el supervisor verifica que las recomendaciones sean relevantes para los empleados.
        And el supervisor verifica que las recomendaciones sean accionables.

        Example: 
            | supervisor |
            | Belen Ramos |

