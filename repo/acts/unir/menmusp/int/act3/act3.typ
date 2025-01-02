#set document(
  title: ["Actividad 2 Educación Musical y formación integral"],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto)
)
#set page(
  paper: "a4",
  margin: 2cm,
)
#set par(justify: true)
#set text(
  font: "Calibri",
  size: 12pt,
  hyphenate: auto,
  lang: "es"
)
#set list(
  tight: true,
  indent: 1em,
  spacing: auto,
  marker: [-]
)
#show link: underline
#show bibliography: set heading(numbering: "1.")
#align(top+center,[
  #image("../img/logounir.png", width:70%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad 3. Diseño de una sesión interdisciplinar.*])
#align(bottom+right, text(18pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de La Rioja.\
  La Educación Musical y la formación integral.
])
#pagebreak()
#outline(
  indent:auto
)
#pagebreak()
#set heading(numbering: "1.")
#set page(numbering: "1")
#set par(leading: 1.5em)
#counter(page).update(1)
= Determinación del nivel educativo.
Se trabajará con el sexto curso de Educación Primaria.
= Objetivos didácticos.
Se enumeran los siguientes:
#set par(leading: 1em)
- Conocer los diferentes tipos de versos y estrofas, así como su métrica.
- Comprender la necesidad de dotar de ritmo a la composición lírica.
- Analizar una composición poética.
- Relacionar el ritmo lírico con el ritmo musical.
- Crear una línea melódica a partir de un texto poético.
#set par(leading: 1.5em)
= Saberes básicos.
Se describen en las tablas que siguen, para las áreas de Lengua Castellana y Literatura, así como la de Música:
#set par(leading: 1em)
#table(
  columns: 1,
  table.cell(align: center,)[*Área de Lengua Castellana y Literatura*],
  table.cell(align: center, fill: blue.lighten(50%),[*Bloque C: Educación literaria*]),
  [
    - Creación de textos literarios de manera libre y a partir de la apropiación y explotación de los modelos dados.
  ],
  table.cell(align: center,)[*Área de Música y Danza*],
  table.cell(align: center, fill: blue.lighten(50%),[*Bloque A: Recepción y Análisis*]),
  [
    - Normas de comportamiento y actitud positiva en la recepción de propuestas artísticas en diferentes espacios. El silencio como elemento y condición indispensable para el mantenimiento de la atención durante la recepción.
  ],
  table.cell(align: center, fill: blue.lighten(50%),[*Bloque B: Creación e interpretación*]),
  [
    - Fases del proceso creativo: planificación, interpretación, experimentación y evaluación.
    - Evaluación, interés y valoración tanto por el proceso como por el producto final en producciones musicales, escénicas y performativas. 
  ],
  table.cell(align: center, fill: blue.lighten(50%),[*Bloque C: Música y Artes escénicas performativas*]),
  [
    - Práctica instrumental, vocal y corporal: experimentación, exploración creativa, interpretación, improvisación y composición a partir de sus posibilidades sonoras y expresivas.
  ],
)
= Competencias específicas, criterios de evaluación y competencias clave.
Se relatan a continuación las competencias específicas que trabajaremos con nuestra sesión:
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.LCL.8*]),
  table.cell(align: left,fill: blue.lighten(85%),[Leer, interpretar y analizar, de manera acompañada, obras o fragmentos literarios adecuados a su desarrollo, estableciendo relaciones entre ellos e identificando el género literario y sus convenciones fundamentales, para iniciarse en el reconocimiento de la literatura como manifestación artística y fuente de placer, conocimiento e inspiración para crear textos de intención literaria.]),
  [8.2. Producir, de manera progresivamente autónoma, textos sencillos individuales o colectivos con intención literaria, reelaborando con creatividad los modelos dados, en distintos soportes y complementándolos con otros lenguajes artísticos.],
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.MD.3*]),
  table.cell(align: left,fill: blue.lighten(85%),[Expresar y comunicar de manera creativa ideas, sentimientos y emociones, experimentando con las posibilidades del sonido, la imagen, el cuerpo y los medios digitales, para producir obras propias.]),
  [3.1. Producir obras propias básicas, utilizando las posibilidades expresivas del cuerpo, el sonido, la imagen y los medios digitales básicos, y mostrando confianza en las capacidades propias.],
) 
#set par(leading: 1.5em)
= Metodología.
Se utilizará como metodología la mayéutica y el aprendizaje colaborativo basado en retos, pues permiten guiar al alumnado con preguntas a la vez que se permite que experimenten y resuelvan un reto en grupo de 4 personas.
= Diseño de las actividades y temporalización.
La sesión permitirá trabajar en dos actividades de 30 minutos cada una. Se propondrán dos retos. El primero consistirá en buscar un texto poético breve para poder cantar. Se analizará su estructura métrica y se trabajará su ritmo lírico. El docente utilizará la mayéutica para guiar al alumnado.
El segundo reto pretende que el estudiantado cree una melodía sencilla para voz cantada a partir del texto escogido. El profesorado vuelve a ser guía mediante la mayéutica.
Después de la creación, se pretende que el alumnado exponga el resultado para su análisis crítico por el resto del alumnado y el docente, manteniendo el silencio y respeto.
= Atención a la diversidad.
El aprendizaje cooperativo es en sí misma una metodología inclusiva por permitir la tutorización entre iguales. Hemos de considerar también el uso del DUA como actuación general para todo el grupo ante las posibles diferencias que existen en una clase. Con estas dos actuaciones generales se puede propiciar la inclusión plena del grupo clase en la actividad planteada.
#set par(leading: 1em)
#bibliography(style: "american-psychological-association", full: true, "refs.bib")