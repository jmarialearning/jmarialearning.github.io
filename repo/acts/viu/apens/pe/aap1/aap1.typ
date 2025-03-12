#set document(
  title: [Actividad aplicativa 1 Aprendizaje y Enseñanza Física y Química],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto)
)
#set page(
  paper: "a4",
  margin: 3cm,
)
#set par(justify: true)
#set list(
  indent: 1.5em,
)
#set enum(
  indent: 1.5em,
)
#set heading(numbering: "1.")
#set text(
  font: "Arial",
  size: 11pt,
  hyphenate: auto,
  lang: "es"
)
#align(top+center,[
  #image("../../../img/logoviu.png", width:70%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad aplicativa 1. Programa de actividades con un trabajo práctico.*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de Valencia.\
  Aprendizaje y Enseñanza de la física y química.\
  Máster del profesorado de Secundaria, Bachillerato y FP.
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
#outline()
#pagebreak()
#set par(leading: 1.5em)
= Creación del programa de actividades con el trabajo práctico.
Se creará un programa de actividades en base a un trabajo práctico para trabajar los conocimientos de física en el segundo curso de Educación Secundaria Obligatoria. Específicamente, se trabajará la electricidad desde un enfoque experimental mediante trabajos prácticos en el laboratorio, entre otras técnicas didácticas.
== Objetivos.
- Experimentar con la electricidad y los circuitos eléctricos.
- Conocer las magnitudes 
== Competencias específicas y criterios de evaluación trabajados.
#set par(leading: 1em)
#table(
  columns: 1,
  align: horizon,
  table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 1*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Comprender y relacionar los motivos por los que ocurren los principales fenómenos fisicoquímicos del entorno, explicándolos en términos de las leyes y teorías científicas adecuadas, para resolver problemas con el fin de aplicarlas para mejorar la realidad cercana y la calidad de vida humana._],
  [1.1. Comprender y explicar con rigor los fenómenos fisicoquímicos cotidianos a partir de los principios, teorías y leyes científicas adecuadas, expresándolos de manera argumentada, utilizando diversidad de soportes y medios de comunicación.\
1.2. Resolver problemas fisicoquímicos planteados mediante las leyes y teorías científicas adecuadas, razonando los procedimientos utilizados para encontrar las soluciones y expresando los resultados con corrección y precisión.\
1.3. Reconocer y describir situaciones problemáticas reales de índole científica y emprender iniciativas colaborativas en las que la ciencia, y en particular la física y la química, pueden contribuir a su solución, analizando críticamente su impacto en la sociedad y el medio ambiente.
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 2*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Expresar las observaciones realizadas por el alumnado en forma de preguntas, formular hipótesis para explicarlas y demostrar dichas hipótesis a través de la experimentación científica, la indagación y la búsqueda de evidencias, para desarrollar los razonamientos propios del pensamiento científico y mejorar las destrezas en el uso de las metodologías científicas._],
  [2.1. Emplear las metodologías propias de la ciencia en la identificación y descripción de  fenómenos científicos a partir de situaciones tanto observadas en el mundo natural como planteadas a través de enunciados con información textual, gráfica o numérica.\
2.2. Predecir, para las cuestiones planteadas, respuestas que se puedan comprobar con las herramientas y conocimientos adquiridos, tanto de forma experimental como deductiva, aplicando el razonamiento lógico-matemático en su proceso de validación.\
2.3. Aplicar las leyes y teorías científicas más importantes para validar hipótesis de manera informada y coherente con el conocimiento científico existente, diseñando los procedimientos experimentales o deductivos necesarios para resolverlas y analizar los resultados críticamente.
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 3*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Manejar con soltura las reglas y normas básicas de la física y la química en lo referente al lenguaje de la IUPAC, al lenguaje matemático, al empleo de unidades de medida correctas, al uso seguro del laboratorio y a la interpretación y producción de datos e información en diferentes formatos y fuentes (textos, enunciados, tablas, gráficas, informes, manuales, diagramas, fórmulas, esquemas, modelos, símbolos, etc.), para reconocer el carácter universal y transversal del lenguaje científico y la necesidad de una comunicación fiable en investigación y ciencia entre diferentes países y culturas._],
  [3.1. Emplear fuentes variadas, fiables y seguras para seleccionar, interpretar, organizar y comunicar información relativa a un proceso fisicoquímico concreto, relacionando entre sí lo que cada una de ellas contiene, extrayendo en cada caso lo más relevante para la resolución de un problema y desechando todo lo que sea irrelevante.\
3.2. Utilizar adecuadamente las reglas básicas de la física y la química, incluyendo el uso correcto de varios sistemas de unidades, las herramientas matemáticas necesarias y las reglas de nomenclatura avanzadas, consiguiendo una comunicación efectiva con toda la comunidad científica.\
3.3. Aplicar con rigor las normas de uso de los espacios específicos de la ciencia, como el laboratorio de Física y Química, asegurando la salud propia y colectiva, la conservación sostenible del medio ambiente y el cuidado por las instalaciones.
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 4*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Utilizar de forma crítica, eficiente y segura plataformas digitales y recursos variados, tanto para el trabajo individual como en equipo, para fomentar la creatividad, el desarrollo personal y el aprendizaje individual y social, mediante la consulta de información, la creación de materiales y la comunicación efectiva en los diferentes entornos de aprendizaje._],
  [4.1. Utilizar de forma eficiente recursos variados, tradicionales y digitales, mejorando el aprendizaje autónomo y la interacción con otros miembros de la comunidad educativa, de forma rigurosa y respetuosa y analizando críticamente las aportaciones de todos.\
4.2. Trabajar de forma versátil con medios variados, tradicionales y digitales, en la consulta de información y la creación de contenidos, seleccionando y empleando con criterio las fuentes y herramientas más fiables, desechando las menos adecuadas y mejorando el aprendizaje propio y colectivo.
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 5*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Utilizar las estrategias propias del trabajo colaborativo que permitan potenciar el crecimiento entre iguales como base emprendedora de una comunidad científica crítica, ética y eficiente, para comprender la importancia de la ciencia en la mejora de la sociedad, las aplicaciones y repercusiones de los avances científicos, la preservación de la salud y la conservación sostenible del medio ambiente._],
  [5.1. Establecer interacciones constructivas y coeducativas, emprendiendo actividades de cooperación e iniciando el uso de las estrategias propias del trabajo colaborativo, como forma de construir un medio de trabajo eficiente en la ciencia.\
5.2. Emprender, de forma autónoma y de acuerdo a la metodología adecuada, proyectos científicos que involucren al alumnado en la mejora de la sociedad y que creen valor para el individuo y para la comunidad.
],
)
== Saberes básicos.
#set enum(numbering: "A.i.")
+ Las destrezas científicas básicas.
  + Trabajo experimental y  proyectos de investigación: estrategias en la resolución de problemas y el tratamiento del error mediante la indagación, la deducción, la búsqueda de evidencias y el razonamiento lógico-matemático, haciendo inferencias válidas de las observaciones y obteniendo conclusiones que vayan más allá de las condiciones experimentales para aplicarlas a nuevos escenarios.
  + Diversos entornos y recursos de aprendizaje científico como el laboratorio o los entornos virtuales: materiales, sustancias y herramientas tecnológicas. 
  + Normas de uso de cada espacio, asegurando y protegiendo así la saludo propia y comunitaria, la seguridad en redes y el respeto hacia el medio ambiente.
  +	El lenguaje científico: manejo adecuado de distintos sistemas de unidades y sus símbolos. Herramientas matemáticas adecuadas en diferentes escenarios  científicos y de aprendizaje.
  +	Estrategias de interpretación y producción de información científica en diferentes formatos y a partir de diferentes medios: desarrollo del criterio propio basado en lo que el pensamiento científico aporta a la mejora de la sociedad para hacerla más justa, equitativa e igualitaria.
  +	Valoración de la cultura científica y del papel de científicos y científicas en los principales hitos históricos y actuales de la física y la química para el avance y la mejora de la sociedad.
3. La interacción.
  + Predicción y comprobación, utilizando la experimentación y el razonamiento matemático, de las principales magnitudes, ecuaciones y gráficas que describen el movimiento de un cuerpo, relacionándolo con situaciones cotidianas y con la mejora de la calidad de vida.
  + La fuerza como agente de cambios en los cuerpos: principio fundamental de la Física que se aplica a otros campos como el diseño, el deporte o la ingeniería.
  + Carácter vectorial de las fuerzas: uso del álgebra vectorial básica para la realización gráfica y numérica de operaciones con fuerzas y su aplicación a la resolución de problemas relacionados con sistemas sometidos a conjuntos de fuerzas, valorando su importancia en situaciones cotidianas.
  + Principales fuerzas del entorno cotidiano: reconocimiento del peso, la normal, el rozamiento, la tensión o el empuje, y su uso en la explicación de fenómenos físicos en distintos escenarios.
  + Ley de la gravitación universal: atracción entre los cuerpos que componen el universo. Concepto de peso.
  + Fuerzas y presión en los fluidos: efectos de las fuerzas y la presión sobre los líquidos y los gases, estudiando los principios fundamentales que las describen.
== Vinculación con las competencias clave y el perfil de salida.
- Competencia en comunicación lingüística: CCL1.
- Competencia matemática y competencia en ciencia, tecnología e ingeniería: STEM1, STEM2, STEM4.
- Competencia personal, social y de aprender a aprender: CPSAA1, CPSAA3, CPSAA4, CPSAA5.
- Competencia emprendedora: CE2, CE3.
== Actividades
=== Actividades iniciales.
// Detectar Concepciones Alternativas e introducir.
El propósito de las actividades iniciales es el de detectar posibles concepciones erróneas para posibilitar su modificación en favor de las tesis aceptadas por la ciencia. Comenzaremos con una dinámica mayéutica para detectar concepciones alternativas en el alumnado. Seguiremos la secuencia siguiente:
-  Preguntaremos en primer lugar al alumnado qué especifique tres palabras que relacione con la electricidad. Se comprende que el alumnado recuerda los conocimientos de otras asignaturas como tecnología, así como lo aprendido en Educación Primaria. Por ende, se esperan respuestas relativamente elaboradas, que se mostrarán en un diagrama tipo nube de palabras. Así, podremos detectar los conocimientos e ideas previas del alumnado, sean estos correctos o no.
- Continuaremos con unas preguntas al alumnado.
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[
    - _Imagina un circuito con una sola bombilla conectada a una fuente de alimentación de corriente continua. ¿Dónde se invierte la energía de la fuente?_
    - _Si deseo controlar si un dispositivo eléctrico (como una bombilla) esté encendido o apagado, ¿cómo puedo hacerlo?_
    - _¿Existe un modo para calcular el consumo energético de un aparato eléctrico?_
    ]
)
Mediante estas preguntas, pretendemos que el alumnado recuerde los conocimientos previos. Procedemos a introducir la nueva materia mediante la pregunta siguiente:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[
    - _¿Cómo crees que podremos calcular el consumo de un aparato electrónico? ¿Qué magnitudes crees que estarán involucradas? ¿Cómo estarán relacionadas?_
    ]
)
Cabe destacar que existen varios, como el _lanzamiento de proyectiles_ de tipos varios, pero este, en concreto, podría omitirse en favor de otros. En cualquier caso, proseguimos la dinámica inductiva.
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[
    - _Dibuja la trayectoria de un movimiento parabólico. Como puedes imaginar, consideraremos cambios en dos posiciones, la horizontal y la vertical._
    - _Si quiero alcanzar una posición horizontal más alejada de la posición inicial, describe modificaciones que podría realizar en el sistema para conseguir ese propósito._
    ]
)
Se espera, en este caso, que el alumnado especifique qu modificar el ángulo de ataque permitirá más o menos alejamiento de la posición inicial en el eje horizontal.
=== Actividades de desarrollo.
// Derribar CA y trabajar.
En las actividades de desarrollo, se preparará un trabajo práctico con el objeto de derribar ciertas concepciones erróneas en el alumnado y permitir la comprensión del fenómeno.
=== Actividades de conclusión.
// Cerrar.
== Perspectivas.