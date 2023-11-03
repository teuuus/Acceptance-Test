Feature: ID-03 Encuestas de Bienestar

    Como empleado, deseo recibir y participar en encuestas de bienestar preconfiguradas enviadas por la aplicación para expresar mi satisfacción y nivel de estrés en el trabajo.

    Scenario: Usuario recibe una notificación de encuesta 
        Given que el usuario es un empleado y ha iniciado sesión en la aplicación.
        When la aplicación envíe una encuesta de bienestar preconfigurada.
        Then el empleado recibirá una notificación en la aplicación que le informa sobre la nueva encuesta.

        And el empleado verifica que la notificación se haya enviado solo una vez.
        And el empleado verifica que la notificación se haya enviado a los empleados que son elegibles para participar en la encuesta.
        And el empleado verifica que la notificación se haya enviado en el momento correcto.

        Scenario: 
            | empleado || Rol |
            | Tocayo | | Supervisor |

    Scenario: Usuario completa la encuesta de bienestar
        Given que el usuario ha recibido una notificación sobre una encuesta de bienestar preconfigurada.
        When el usuario acceda a la encuesta dando clic en “Ver más” de la notificación.
        And el usuario responda a las preguntas seleccionando las opciones que le proporciona la encuesta.
        Then la aplicación registrará las respuestas del empleado y generará informes para su evaluación por parte del administrador.

Feature: ID-05 Chatbot de Evaluación Médica

    Como empleado, deseo tener acceso a un chatbot de evaluación médica en la plataforma que me permita evaluar mi estado emocional y recibir recomendaciones y 
    recursos relevantes basados en mis respuestas, y tener la opción de compartir estos resultados con mis supervisores si lo deseo.

    Scenario: Usuario accede al Chatbot de Evaluación Médica
        Given que el usuario empleado se encuentra en la página principal de la aplicación.
        When el usuario le dé clic al botón de la esquina superior izquierda: "Chatbot de Evaluación Médica".
        Then la aplicación abrirá una interfaz de chat con el chatbot.

        And el usuario verifica que la interfaz de chat sea fácil de usar.
        And el usuario interactúa con el chatbot y recibe recomendaciones y recursos relevantes.
        And el usuario tiene la opción de compartir sus resultados con sus supervisores.

        Example: 
            | usuario |
            | Tocayo |

    Scenario: Usuario inicia conversación con el Chatbot
        Given que el usuario se encuentra en la interfaz de chat con el Chatbot de Evaluación Médica.
        And el usuario le dio clic al botón “iniciar conversación”.
        Then el chatbot, iniciará una conversación con el empleado haciendo preguntas relacionadas con su estado emocional y bienestar laboral.

    Scenario: Usuario completa la evaluación médica
        Given que el usuario respondió a las preguntas del chatbot relacionadas con su estado emocional y bienestar laboral.
        And el usuario recibió las recomendaciones y recursos relevantes basados en sus respuestas.
        When el usuario le dé clic al botón “finalizar conversación” en la esquina superior derecha.
        Then el chatbot preguntará al empleado si desea compartir los resultados con sus supervisores, 
        ofreciendo la opción "No, mantener privado" o "Sí, compartir con supervisores".

    Scenario: Usuario comparte la evaluación médica con supervisores
        Given que el usuario finalizo la conversación con el Chatbot de evaluación médica
        And el usuario recibe las opciones de privacidad:  "No, mantener privado" o "Sí, compartir con supervisores", por parte del Chatbot.
        When el usuario seleccione la opción "Sí, compartir con supervisores", el chatbot notificará a los supervisores.
        Then el chatbot resumirá la información del chat y notificará el reporte con los supervisores del empleado.
        And el chatbot dejara las recomendaciones y recursos relevantes basados en las respuestas del usuario.

    Scenario: Usuario no comparte la evaluación médica con supervisores
        Given que el usuario finalizo la conversación con el Chatbot de evaluación médica
        And el usuario recibe las opciones de privacidad:  "No, mantener privado" o "Sí, compartir con supervisores", por parte del Chatbot
        When el usuario seleccione la opción "No, mantener privado", los resultados permanecerán privados.
        Then el chatbot finalizará la conversación, dejando las recomendaciones y recursos relevantes basados en las respuestas del usuario.

Feature: ID-07 Biblioteca de Recursos

    Como empleado, deseo tener acceso a una biblioteca de recursos relacionados con la salud mental en la plataforma, como ejercicios de relajación,
    técnicas de manejo del estrés y consejos para el equilibrio entre el trabajo y la vida personal.

    Scenario: Usuario accede a la Biblioteca de Recursos
        Given que el usuario es un empleado y ha iniciado sesión en la aplicación.
        When el usuario acceda a la página de "Biblioteca de Recursos" desde el menú principal.
        Then la aplicación mostrará una lista de recursos relacionados con la salud mental disponibles para su consulta.

        And la lista de recursos incluye los siguientes datos:
          | Tipo de recurso | Nombre | Descripción |
          | [Tipo de recurso 1] | [Nombre de recurso 1] | [Descripción de recurso 1] |
          | [Tipo de recurso 2] | [Nombre de recurso 2] | [Descripción de recurso 2] |

        And el usuario puede filtrar la lista de recursos por tipo, nombre o descripción.
        And el usuario puede ver información detallada sobre cada recurso, como el contenido, los objetivos y los requisitos.
        And el usuario puede descargar o guardar los recursos para su uso posterior.
        
        Example: 
            | empleado |
            | [Nombre de usuario] |

    Scenario: Usuario busca recursos específicos
        Given que el usuario se encuentra en la página de "Biblioteca de Recursos".
        When el usuario desee buscar recursos específicos dentro de la biblioteca, como ejercicios de relajación o consejos para el manejo del estrés.
        Then la aplicación proporcionará opciones de búsqueda en la esquina superior izquierda o un catálogo de categorías en la barra superior, 
        para así facilitar la búsqueda de los recursos deseados.

    Scenario: Usuario consulta y utiliza recursos
        Given que el usuario se encuentra en la página de "Biblioteca de Recursos".
        When el usuario seleccione un recurso específico, como: “Ejercicios de relajación” o “Consejos sobre el equilibrio entre el trabajo y la vida personal”.
        Then la aplicación mostrará el contenido del recurso y permitirá al usuario consultarlo y utilizarlo para mejorar su bienestar emocional y laboral.

Feature: ID-09 Educación y Conciencia Laboral

    Como empleado, deseo acceder a información educativa sobre los derechos de los trabajadores y las políticas laborales en diferentes países a través de la aplicación.

    Scenario: Usuario accede a la sección de Educación Laboral
        Given que el usuario es un empleado y ha iniciado sesión en la aplicación.
        When el usuario acceda a la función de "Educación Laboral" desde el menú principal.
        Then la aplicación mostrará una sección dedicada a la educación y conciencia laboral.

        And la página incluirá los siguientes elementos:
          | Elemento | Descripción |
          |Información general:| | Una breve introducción a los derechos de los trabajadores y las políticas laborales. |
          |Recursos educativos:| | Una lista de recursos educativos, como artículos, vídeos y cursos, sobre temas específicos relacionados con los derechos de los trabajadores y las políticas laborales. |
          |Herramientas de autoevaluación:| | Un conjunto de herramientas de autoevaluación para que los empleados puedan evaluar sus conocimientos sobre los derechos de los trabajadores y las políticas laborales. |
          |Búsqueda:|  |Una barra de búsqueda que permite al usuario encontrar información específica sobre derechos de los trabajadores o políticas laborales en diferentes países. |

        And la página permitirá al usuario navegar por los elementos de la sección de forma sencilla.
        And la página permitirá al usuario buscar información específica sobre derechos de los trabajadores o políticas laborales en diferentes países.
        And el usuario podrá verificar la información encontrada con una fuente externa.

        Example: 
            | empleado |
            | [Nombre de usuario] |   

    Scenario: Usuario selecciona un país de interés
        Given que el usuario ha accedido a la sección de Educación Laboral.
        When el usuario seleccione un país específico de interés para obtener información sobre sus derechos y políticas laborales.
        Then la aplicación proporcionará contenido educativo relacionado con los derechos laborales y las políticas laborales vigentes en el país seleccionado.

    Scenario: Usuario accede a recursos educativos
        Given que el usuario ha seleccionado un país y ha accedido al contenido educativo.
        When el usuario explore los recursos educativos disponibles, como documentos, videos, enlaces a sitios web relevantes y documentos descargables.
        Then la aplicación ofrecerá información detallada y recursos educativos para aumentar la conciencia y el conocimiento de los derechos laborales y
        las políticas laborales en el país seleccionado.
