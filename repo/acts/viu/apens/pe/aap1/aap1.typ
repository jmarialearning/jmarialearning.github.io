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
  [1.1. Identificar, comprender y explicar los fenómenos fisicoquímicos cotidianos más relevantes a partir de los principios, teorías y leyes científicas adecuadas, expresándolos, de manera argumentada, utilizando diversidad de soportes y medios de comunicación.\
1.2. Resolver los problemas fisicoquímicos planteados utilizando las leyes y teorías científicas adecuadas, razonando los procedimientos utilizados para encontrar las soluciones y expresando adecuadamente los resultados.\
1.3. Reconocer y describir en el entorno inmediato situaciones problemáticas reales de índole científica y emprender iniciativas en las que la ciencia, y en particular la física y la química, pueden contribuir a su solución, analizando críticamente su impacto en la sociedad.
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
  [2.3. Aplicar las leyes y teorías científicas conocidas al formular cuestiones e hipótesis, siendo coherente con el conocimiento científico existente y diseñando los procedimientos experimentales o deductivos necesarios para resolverlas o comprobarlas.\
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
  [3.1. Emplear datos en diferentes formatos para interpretar y comunicar información relativa a un proceso fisicoquímico concreto, relacionando entre sí lo que cada uno de ellos contiene, y extrayendo en cada caso lo más relevante para la resolución de un problema.\
3.2. Utilizar adecuadamente las reglas básicas de la física y la química, incluyendo el uso de unidades de medida, las herramientas matemáticas y las reglas de nomenclatura, consiguiendo una comunicación efectiva con toda la comunidad científica.\
3.3. Poner en práctica las normas de uso de los espacios específicos de la ciencia, como el laboratorio de Física y Química, asegurando la salud propia y colectiva, la conservación sostenible del medio ambiente y el cuidado de las instalaciones.\
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
  [4.1. Utilizar recursos variados, tradicionales y digitales, mejorando el aprendizaje autónomo y la interacción con otros miembros de la comunidad educativa, con respeto hacia docentes y estudiantes y analizando críticamente las aportaciones de cada participante.\
4.2. Trabajar de forma adecuada con medios variados, tradicionales y digitales, en la consulta de información y la creación de contenidos, seleccionando con criterio las fuentes más fiables y desechando las menos adecuadas y mejorando el aprendizaje propio y colectivo.
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
  [5.1. Establecer interacciones constructivas y coeducativas, emprendiendo actividades de cooperación como forma de construir un medio de trabajo eficiente en la ciencia.\
5.2. Emprender, de forma guiada y de acuerdo a la metodología adecuada, proyectos científicos que involucren al alumnado en la mejora de la sociedad y que creen valor para el individuo y para la comunidad.
],
)
== Saberes básicos.
#set enum(numbering: "A.i.")
+ Las destrezas científicas básicas.
  + Metodologías de la investigación científica: identificación y formulación de cuestiones, elaboración de hipótesis y comprobación experimental de las mismas.
  + Trabajo experimental y proyectos de investigación: estrategias en la resolución de problemas y en el desarrollo de investigaciones mediante la indagación, la deducción, la búsqueda de evidencias y el razonamiento lógico-matemático, haciendo inferencias válidas de las observaciones y obteniendo conclusiones.
  + Diversos entornos y recursos de aprendizaje científico como el laboratorio o los entornos virtuales: materiales, sustancias y herramientas tecnológicas.
  + Normas de uso de cada espacio, asegurando y protegiendo así la salud propia y comunitaria, la seguridad en redes y el respeto hacia el medio ambiente.
  + El lenguaje científico: unidades del Sistema Internacional y sus símbolos. Herramientas matemáticas básicas en diferentes escenarios científicos  y de aprendizaje.
  + Estrategias de interpretación y producción de información científica utilizando diferentes formatos y diferentes medios: desarrollo del criterio propio basado en lo que el pensamiento científico aporta a la mejora de la sociedad para hacerla más justa, equitativa e igualitaria.
4. La energía.
  + La energía: formulación de cuestiones e hipótesis sobre la energía, propiedades y manifestaciones que la describan como la causa de todos los procesos de cambio.
  + Diseño y comprobación experimental de hipótesis relacionadas con el uso doméstico e industrial de la energía en sus distintas formas y las transformaciones entre ellas.
  + Naturaleza eléctrica de la materia: electrización de los cuerpos, circuitos eléctricos y la obtención de energía eléctrica. Concienciación sobre la necesidad del ahorro energético y la conservación sostenible del medio ambiente.

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
Se considera esta cuestión fácilmente precisable por el alumnado por lo anteriormente comentado. Debería conocer el alumnado el funcionamiento de un circuito eléctrico simple.
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[
    - _Dibuja un circuito eléctrico e intenta dirimir el comportamiento de los elementos que coloques en él. ¿Cuándo funcionarán? ¿Cómo pararán? Comprueba qué recursos necesitas para construir el circuito que has propuesto._
    ]
)
Se espera, en este caso, que el alumnado especifique los elementos básicos de los circuitos eléctricos. En primer lugar, una *fuente de alimentación* para posibilitar que el circuito funcione. Por otro lado, se necesitan *conductores* para posibilitar la unión entre los elementos y la fuente. Por último, se requerirán todos aquellos *componentes* propuestos.\
Terminamos con una última pregunta:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[
    - _El gasto energético del circuito, ¿de qué crees que dependerá: de los componentes que conectes o de la fuente de alimentación?_
    ]
)
=== Actividades de desarrollo.
// Derribar CA y trabajar.
En las actividades de desarrollo, se preparará un trabajo práctico con el objeto de derribar ciertas concepciones erróneas en el alumnado y permitir la comprensión del fenómeno. Se pretende medir las magnitudes integradas en un circuito eléctrico con el objetivo de caracterizar el circuito y detectar su gasto energético.\
Para realizar el trabajo práctico, utilizaremos los materiales siguientes:
- Una placa _breadboard_, donde realizaremos las conexiones.
- Cables de cobre.
- Resistencias varias.
- Un motor de 5 voltios, junto con otros componentes eléctricos u electrónicos analógicos.
- Como fuente de alimentación se pueden utilizar diferentes componentes. Utilizaremos por conveniencia los 5 voltios de VCC que proporciona una _Arduino UNO_, aunque podemos utilizar como fuente cualquier cargador y un cable USB de carga con los pines 1 y 4 pelados, así como una fuente de alimentación regulable, presente en los laboratorios de cualquier instituto.
- Un polímetro, para extraer medidas de voltaje, intensidad y resistencia.
Realizaremos en primer lugar el diseño de los circuitos permitiendo que el alumnado elija los componentes que va a utilizar. Dejaremos que el alumnado elija los componentes sin resistencias en primer lugar y que genere su circuito, que ensamblará. Supongamos que ha elegido el alumnado un motor de corriente continua de 5 voltios.\
Procederemos a medir el voltaje entre bornes para ver que será cercano a 5 voltios. Comprobaremos también el voltaje entre bornes del motor para probar que la práctica totalidad del voltaje se utiliza para dar corriente al motor. Podremos detectar también qué intesidad pasa por el circuito y deducir la _resistencia equivalente_ del motor. Ello lo realizaremos deduciendo la ley de Ohm experimentalmente mediante una actividad práctica de toma y análisis de datos, según sigue:
+ Conectamos unas resistencias a los 5 voltios. Manteniendo el voltaje constante, apuntamos valores de la resistencia y de la intensidad que pasa por la misma.
+ Si modificas una resistencia por otra, ¿qué ocurre con la intesidad? Cambia una resistencia por otra y comprueba la corriente. La intensidad y la resistencia, ¿son directa o inversamente proporcionales?
+ Intenta averiguar la constante de proporcionalidad. ¿Corresponde a algún valor concreto o relevante?
Con esto, pretendemos que el alumnado detecte que la intensidad y la resistencia son inversamente proporcionales. Matemáticamente:
$ I dot R = k $
Donde dicha constante $k$ es el voltaje. He aquí la ley de Ohm.\
=== Actividades de conclusión.
En estas actividades pretendemos que el alumnado establezca estrategias metacognitivas, siendo consciente de lo que ha aprendido y generalizando a otras situaciones afines.
Ahora que el alumnado ha podido deducir la Ley de Ohm, se pretende que calcule la resistencia para un diodo LED siguiendo la siguiente secuencia.
+ Debes generar un circuito con un diodo LED. Los diodos LED tienen dos características que se han de considerar cuando se introducen en circuitos:
  - El diodo tiene patas de diferente longitud: la más larga indica el polo positivo (+) y la más corta, el negativo (-). Si se conecta un LED al revés, como cualquier diodo, no deja pasar corriente eléctrica.
  - El diodo LED es muy sensible y solo admite intensidades en el rango entre $0,005 "A"$ y $0,05 "A"$. Si la intensidad es mayor que 0,05 A, el LED se quema. Si es menor, no se enciende. Como puedes imaginar, hemos de introducir una resistencia entre la fuente y el LED para asegurar que la corriente que pasa por el LED está en ese rango de intensidades.
+ Calcula una resistencia que se puede utilizar en el circuito para que el LED funcione sin peligro.