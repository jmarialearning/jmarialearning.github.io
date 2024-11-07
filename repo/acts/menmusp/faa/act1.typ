#set document(
  title: ["Actividad 1 Fundamentos de armonía y análisis"],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto)
)
#set page(
  paper: "a4",
  margin: 3cm,
)
#set par(justify: true)
#set text(
  font: "Calibri",
  size: 12pt,
  hyphenate: auto,
  lang: "es"
)
#align(top+center,[
  #image("img/logounir.png", width:70%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad 1: melodías mayores y menores para el aula*])
#align(bottom+right, text(18pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de La Rioja.\
  Asignatura: Fundamentos de armonía y análisis musical.
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
= Selección de las obras musicales.
Cuando trabajamos con obras musicales para la etapa de Primaria hemos de tener en cuenta diversos aspectos que permiten evaluar la idoneidad de su elección para el trabajo en el marco de una situación de aprendizaje. Así pues, conviene tener una serie de criterios que permiten asegurar que la elección realizada por parte del docente es correcta.\
Con la intención de respetar el enunciado de la actividad, se han elegido dos canciones, una de las cuales está en modo mayor y otra en menor. Por otro lado, se han buscado canciones populares y conocidas por el alumnado de la clase de Educación Musical, que sean accesibles a nivel de tesitura a una voz blanca, como la que nos encontraríamos en la etapa que nos ocupa. Así pues, se ha optado por:
#list(
  tight: false,
  marker: [-],
  indent: 1em,
  spacing: auto,
  [_La tarara_ para el modo menor.],
  [_Estrellita, ¿dónde estás?_ para el modo mayor.]
)
El potencial pedagógico al que nos referimos en el apartado #highlight(fill: gradient.linear(..color.map.rainbow), [*Propuesta didáctica*]) justifica también la elección de las obras.
= Escritura y armonización de las obras musicales.
La escritura de las obras musicales se ha realizado con una línea melódica diferenciada del acompañamiento. El instrumento acompañante evita la reduplicación de la línea vocal, limitándose a armonizar la voz. Para la presentación se ha utilizado el programa _MuseScore_, que permite añadir distintas notaciones musicales de dinámica, agógica u otras. Además, permite una previsualización del resultado y su escucha según las indicaciones mostradas.\
Como recursos para armonizar se han utilizado los siguientes:
#list(
  tight: false,
  marker: [-],
  indent: 1em,
  spacing: auto,
  [Inversiones del acorde de triada en estado fundamental: primera y segunda inversión.],
  [Cadencias de varios tipos: perfectas (V-I), compuestas de primer orden (IV-V-I) y compuestas de segundo orden, llamadas también #math.vec(delim: none,[$bold(6)$],[$bold(4)$]) cadencial.],
  [Cadencia plagal (IV-I)],
  [6-2-5-1, progresión de acordes proveniente del _gospel_, _rhythm and blues_ y _jazz_ que utiliza los grados tonales representados por los números arábigos (VI-II-V-I). Mejora el conocido 2-5-1 añadiendo otro acorde que aporta tensión al resolver al segundo grado. Las variaciones de esta progresión son numerosas, a menudo alterando notas del acorde o utilizando su versión aumentada.],
  [Acordes de cuatriada, como el de 7ª de dominante en varias inversiones.],
  [Progresiones cromáticas]
)