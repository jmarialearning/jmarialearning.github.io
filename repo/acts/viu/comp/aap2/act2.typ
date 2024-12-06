#set document(
  title: [Actividad aplicativa 1 Complementos],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto)
)
#set page(
  paper: "a4",
  margin: 3cm,
  flipped: true,
)
#set par(justify: true)
#set enum(
  indent: 1.5em,
)
#set text(
  font: "Arial",
  size: 12pt,
  hyphenate: auto,
  lang: "es"
)
#align(top+center,[
  #image("../../img/logoviu.png", width:50%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad aplicativa 2. Actividades para trabajar los contenidos del currículum (LOMLOE)*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de Valencia.\
  Complementos para la formación disciplinar de Física y Química.\
  Máster del profesorado de Secundaria, Bachillerato y FP.
])
#pagebreak()
#outline(
  indent:auto
)
#pagebreak()
#set heading(numbering: "1.")
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
= Tabla de las actividades.
#table(
  columns: 4,
  table.header(align(center)[*Actividad planteada*], align(center)[*Saberes básicos*], align(center)[*Criterios de evaluación*], align(center)[*Competencias clave*]),
  [En equipo, se pretende que el alumnado trabaje las órbitas de un satélite y genere un programa informático que permita caracterizar el sistema a partir de unos datos iniciales conocidos. Se utilizará un lenguaje sencillo de aprender, imperativo, funcional, procedimental y orientado a objetos, como TypeScript o Python, que destacan por la facilidad de escribir código. ],
  [Bloque A: Campo Gravitatorio.\
  - Energía mecánica de un objeto sometido a un campo gravitatorio: deducción del tipo de movimiento que posee, cálculo del trabajo o los balances energéticos existentes en desplazamientos entre distintas posiciones, velocidades y tipos de trayectorias.
- Leyes que se verifican en el movimiento planetario y extrapolación al movimiento de satélites y cuerpos celestes.

  ],
  [1.2. Resolver problemas de manera experimental y analítica, utilizando principios, leyes y teorías de la Física.\
  2.1. Analizar y comprender la evolución de los sistemas naturales, utilizando modelos, leyes y teorías de la Física.\
2.2. Inferir soluciones generales a problemas generales a partir del análisis de situaciones particulares y las variables de que dependen.\
4.1. Consultar, elaborar e intercambiar materiales científicos y divulgativos en distintos formatos con otros miembros del entorno de aprendizaje, utilizando de forma autónoma y eficiente plataformas digitales.\
5.1. Obtener relaciones entre variables Físicas, midiendo y tratando los datos experimentales, determinando los errores y utilizando sistemas de representación gráfica.\
  ],
  [CCL1. Se expresa de forma oral, escrita, signada o multimodal con fluidez, coherencia, corrección y adecuación a los diferentes contextos sociales y académicos, y participa en interacciones comunicativas con actitud cooperativa y respetuosa tanto para intercambiar información, crear conocimiento y argumentar sus opiniones como para establecer y cuidar sus relaciones interpersonales.\
  CP2. A partir de sus experiencias, desarrolla estrategias que le permitan ampliar y enriquecer de forma sistemática su repertorio lingüístico individual con el fin de comunicarse de manera eficaz.\
  STEM1. Selecciona y utiliza métodos inductivos y deductivos propios del razonamiento matemático en situaciones propias de la modalidad elegida y emplea estrategias variadas para la resolución de problemas analizando críticamente las soluciones y reformulando el procedimiento, si fuera necesario. \
STEM2. Utiliza el pensamiento científico para entender y explicar fenómenos relacionados con la modalidad elegida, confiando en el conocimiento como motor de desarrollo, planteándose hipótesis y contrastándolas o comprobándolas mediante la observación, la experimentación y la investigación, utilizando herramientas e instrumentos adecuados, apreciando la importancia de la precisión y la veracidad y mostrando una actitud crítica acerca del alcance y limitaciones de los métodos empleados.\
STEM3. Plantea y desarrolla proyectos diseñando y creando prototipos o modelos para generar o utilizar productos que den solución a una necesidad o problema de forma colaborativa, procurando la participación de todo el grupo, resolviendo pacíficamente los conflictos que puedan surgir, adaptándose ante la incertidumbre y evaluando el producto obtenido de acuerdo a los objetivos propuestos, la sostenibilidad y el impacto transformador en la sociedad.\
STEM4. Interpreta y transmite los elementos más relevantes de investigaciones de forma clara y precisa, en diferentes formatos (gráficos, tablas, diagramas, fórmulas, esquemas, símbolos.) y aprovechando la cultura digital con ética y responsabilidad y valorando de forma crítica la contribución de la ciencia y la tecnología en el cambio de las condiciones de vida para compartir y construir nuevos conocimientos.\
CD1. Realiza búsquedas avanzadas comprendiendo cómo funcionan los motores de búsqueda en internet aplicando criterios de validez, calidad, actualidad y fiabilidad, seleccionando los resultados de manera crítica y organizando el almacenamiento de la información de manera adecuada y segura para referenciarla y reutilizarla posteriormente.\
CD5. Desarrolla soluciones tecnológicas innovadoras y sostenibles para dar respuesta a necesidades concretas, mostrando interés y curiosidad por la evolución de las tecnologías digitales y por su desarrollo sostenible y uso ético. \
CPSAA3.2 Distribuye en un grupo las tareas, recursos y responsabilidades de manera ecuánime, según sus objetivos, favoreciendo un enfoque sistémico para contribuir a la consecución de objetivos compartidos.\
CC3. Adopta un juicio propio y argumentado ante problemas éticos y filosóficos fundamentales y de actualidad, afrontando con actitud dialogante la pluralidad de valores, creencias e ideas, rechazando todo tipo de discriminación y violencia, y promoviendo activamente la igualdad y corresponsabilidad efectiva entre mujeres y hombres.\ 
CE2. Evalúa y reflexiona sobre las fortalezas y debilidades propias y las de los demás, haciendo uso de estrategias de autoconocimiento y autoeficacia, interioriza los conocimientos económicos y financieros específicos y los transfiere a contextos locales y globales, aplicando estrategias y destrezas que agilicen el trabajo colaborativo y en equipo, para reunir y optimizar los recursos necesarios, que lleven a la acción una experiencia o iniciativa emprendedora de valor.\
],
)
// 
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.6*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Reconocer y analizar el carácter multidisciplinar de la Física, considerando su relevante recorrido histórico y sus contribuciones al avance del conocimiento científico como un proceso en continua evolución e innovación, para establecer unas bases de conocimiento y relación con otras disciplinas científicas._]),
  [6.1. Identificar los principales avances científicos relacionados con la Física que han contribuido a las leyes y teorías aceptadas actualmente en el conjunto de las disciplinas científicas, como las fases para el entendimiento de las metodologías de la ciencia, su evolución constante y su universalidad.],
)
En lo que respecta a los saberes básicos, vemos principalmente una referencia al bloque A:
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Saber Básico A: Campo Gravitatorio*]),
  table.cell(align: left,fill: blue.lighten(85%),[_La gravitación es una de las cuatro fuerzas o interacciones fundamentales del Universo conocidas hasta ahora, siendo en este curso el primer momento en el que se realiza su estudio formal desde el punto de vista de las fuerzas y de los campos. Así, se puede presentar el concepto de campo gravitatorio como aquel que permite encajar las piezas sueltas de la mecánica clásica relacionadas con la cinemática, la dinámica y la energía, vistas en cursos anteriores, dando respuesta matemática a afirmaciones que hasta ahora habían quedado sin una respuesta formal._]),
  table.cell(align: center,fill: gray.lighten(60%),[_Conocimientos, destrezas y actitudes._]),
  [Determinación, a través del cálculo vectorial, del campo gravitatorio producido por un sistema de masas. Efectos sobre las variables cinemáticas y dinámicas de objetos inmersos en el campo.],
)
#set par(leading: 1.5em)
= Diseño de actividades CTS.
En la presente tarea vamos a trabajar las actividades de Física y Química desde una perspectiva Ciencia-Tecnología-Sociedad. Para ello, vamos a trabajar cómo apareció la _World Wide Web_ y otros descubrimientos con alta utilidad en nuestros días.\
Plantearemos las siguientes cuestiones al alumnado:\
- ¿Utilizas Internet? ¿Con qué frecuencia?
- Enumera las 5 razones por las que más utilizas Internet.
- Cuando escribimos una dirección de Internet, ¿que tres letras utilizamos para empezar?
- ¿Por qué crees que existe este protocolo? ¿Existe para todos los intercambios de Internet (correo electrónico, acceso a redes internas, entre otros)?
- Infórmate sobre los creadores de la World Wide Web. ¿Dónde se creó? ¿Qué profesión tenían?
Existen voces que critican la inversión de los países miembros en el CERN. Para hacernos a la idea, veamos la inversión española en la institución. España invirtió en 2019 72,6 millones de euros, lo cual supuso ligeramente más del 7% de inversión. En el año 2022 se incrementó esa cifra hasta los 85 millones de euros.
- En la página del Ministerio de Ciencia, Innovación y Universidades podrás detectar el retorno del dinero invertido al estado español en forma de contratos con empresas. Con ayuda si necesitas, ¿cuánto dinero retorna en forma de contratos con empresas españolas desde el CERN?
- En la página del CERN, comprueba qué descubrimientos de relevancia se han desarrollado. Enumera sistemas utilizados hoy (además de la WWW) que no tendríamos sin el CERN.
Numerosos descubrimientos en computación y físca médica se deben a la inversión en la institución. Destacamos, directamente:
- La tomografía por emisión de positrones (PET).
- La _World Wide Web_.
Además, de forma indirecta, el CERN ha propiciado la llegada al mundo de:
- Mejores pantallas táctiles.
- Tomografías Computarizadas en Color gracias a Spectral CT.
- GPS, debido a los avances en Relatividad Especial y General que permiten sincronizar correctamente el tiempo entre satélites y receptores.
== Vinculación curricular.
Se vincula con el currículo aragonés, más en detalle con el segundo curso de la etapa de Bachillerato, en la asignatura de Física.\
Se trabajan los siguientes criterios de evaluación, asociados a las competencias específicas:\
#set par(leading: 1em)
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.1*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Utilizar las teorías, principios y leyes que rigen los procesos físicos más importantes, considerando su base experimental y desarrollo matemático en la resolución de problemas, para reconocer la Física como una ciencia relevante implicada en el desarrollo de la tecnología, de la economía, de la sociedad y la sostenibilidad ambiental._]),
  [1.1. Reconocer la relevancia de la Física en el desarrollo de la ciencia, tecnología, la economía, la sociedad y la sostenibilidad ambiental, empleando adecuadamente los fundamentos científicos relativos a esos ámbitos.],
)
//
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.2*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Adoptar los modelos, teorías y leyes aceptados de la Física como base de estudio de los sistemas naturales y predecir su evolución para inferir soluciones generales a los problemas cotidianos relacionados con las aplicaciones prácticas demandadas por la sociedad en el campo tecnológico, industrial y biosanitario._]),
  [2.1. Analizar y comprender la evolución de los sistemas naturales, utilizando modelos, leyes y teorías de la Física.\
2.2. Inferir soluciones generales a problemas generales a partir del análisis de situaciones particulares y las variables de que dependen.\
2.3. Conocer aplicaciones prácticas y productos útiles para la sociedad en el campo tecnológico, industrial y biosanitario, analizándolos en base a los modelos, las leyes y las teorías de la Física.
],
)
// 
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.5*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Aplicar técnicas de trabajo e indagación propias de la Física, así como la experimentación, el razonamiento lógico-matemático y la cooperación, en la resolución de problemas y la interpretación de situaciones relacionadas, para poner en valor el papel de la Física en una sociedad basada en valores éticos y sostenibles._]),
  [5.3. Valorar la Física, debatiendo de forma fundamentada sobre sus avances y la implicación en la sociedad desde el punto de vista de la ética y de la sostenibilidad.],
)
// 
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.6*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Reconocer y analizar el carácter multidisciplinar de la Física, considerando su relevante recorrido histórico y sus contribuciones al avance del conocimiento científico como un proceso en continua evolución e innovación, para establecer unas bases de conocimiento y relación con otras disciplinas científicas._]),
  [6.1. Identificar los principales avances científicos relacionados con la Física que han contribuido a las leyes y teorías aceptadas actualmente en el conjunto de las disciplinas científicas, como las fases para el entendimiento de las metodologías de la ciencia, su evolución constante y su universalidad.],
)
En lo que respecta a los saberes básicos, vemos principalmente una referencia a los bloques C y D:
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Saber Básico C: Vibraciones y Ondas.*]),
  table.cell(align: left,fill: blue.lighten(85%),[_El bloque de conocimientos, destrezas y actitudes dedicado al estudio del movimiento oscilatorio y las ondas engloba un amplio espectro de fenómenos físicos. En este sentido, podrían establecerse tres sub-bloques de conocimientos que de forma secuencial establezcan el desarrollo de todo el bloque. En primer lugar, se recomienda comenzar con el estudio del movimiento oscilatorio. En segundo lugar y partiendo de los conocimientos del primer sub-bloque se afronta el estudio del movimiento ondulatorio y los fenómenos naturales asociados a este (con una atención especial al estudio de las ondas de sonido). El último sub-bloque aborda el estudio de la naturaleza de la luz en su comportamiento ondulatorio, entre los que se encuentran los fenómenos más importantes relacionados con el estudio de la óptica._]),
  table.cell(align: center,fill: gray.lighten(60%),[_Conocimientos, destrezas y actitudes._]),
  [Naturaleza de la luz: controversias y debates históricos. La luz como onda electromagnética. Espectro electromagnético.],
)
// 
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Saber Básico D: Física relativista, cuántica, nuclear y de partículas.*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Los contenidos desarrollados hasta este momento cierran los fundamentos del imponente edificio que se conoce como Física Clásica y corresponde a todos los saberes que implican a la Física, acumulados desde el principio de los tiempos hasta comienzos del siglo XX. En ese momento, nada indicaba que pudieran aparecer fisuras en este edificio, sin embargo, una serie de fenómenos sin explicar dan origen a lo que conocemos como revolución relativista y cuántica, asociadas a la formulación de la teoría de la relatividad y a la mecánica cuántica. Esta crisis en la concepción de la naturaleza y el universo durante el primer cuarto del siglo XX da origen al desarrollo de la Física Moderna._]),
  table.cell(align: center,fill: gray.lighten(60%),[_Conocimientos, destrezas y actitudes._]),
  [Principios de la relatividad, de la Física cuántica y de la Física de partículas en el estudio de las principales partículas involucradas en la Física atómica y nuclear: propiedades e interacciones. Implicaciones de la dualidad onda-corpúsculo y del principio de incertidumbre.],
)
Para el saber básico A, realizaremos el siguiente problema: // Cambiar a demostración de la segunda ley de Kepler.
#block(fill: luma(230), inset: 4pt, radius: 8pt)[¿Cuál es la Energía Potencial Gravitatoria de una pelota con $m = 100 space.nobreak.narrow upright(g)$ que se encuentra oribtando a $400 space.nobreak.narrow "km"$ por encima de la superficie de la  Tierra]