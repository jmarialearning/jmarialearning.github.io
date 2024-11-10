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
  Fundamentos de armonía y análisis musical.
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
El potencial pedagógico al que nos referimos en la @propuesta justifica también la elección de las obras.
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
  [6-2-5-1, progresión de acordes proveniente del _gospel_, _rhythm and blues_ y _jazz_ que utiliza los grados tonales representados por los números arábigos (VI-II-V-I). Mejora el conocido 2-5-1 añadiendo otro acorde que aporta tensión al resolver al segundo grado. Las variaciones de esta progresión son numerosas, a menudo alterando notas del acorde o utilizando su versión aumentada. Se ha procedido aquí con la versión más simple.],
  [Acordes de cuatriada, como el de 7ª de dominante en varias inversiones.],
  [Progresiones cromáticas]
)
= Propuesta didáctica. <propuesta>
Especificados los criterios de elección vamos a articular una propuesta didáctica para la etapa de Educación Primaria. Dicha propuesta consiste en la realización de distintas sesiones para adquirir conceptos de análisis y armonía en el aula, así como para hilar el contenido musical con otras áreas del currículo de Educación Primaria.\
En lo respectivo a la primera obra _Estrellita, ¿dónde estás?_, trabajaremos contenidos de la asignatura de ciencias sociales. En concreto, se trabajará el Universo. Por otro lado, con _La tarara_ nos limitaremos únicamente a las enseñanzas musicales que de la obra podemos extraer.
== Propuesta a partir de la canción _Estrellita_.
Los contenidos musicales que se trabajarán a partir de esta obra musical serán los correspondientes a la _agógica_ de la canción. Se prevé para tercer ciclo de Educación Primaria. Según hemos visto en las partituras, se han indicado diferentes marcas de modificación del _tempo_ de la obra. Preguntaremos qué significa la indicación $ note.quarter = 80 $ dentro de la obra. Para ello dejaremos que el alumnado modifique ese valor a otro y que nos explique después de oír la obra qué ha ocurrido. Para la indicación $note.quarter = 100$ pretendemos que el alumnado vea como la obra va reproducida de forma más rápida. Por otro lado trabajaremos las equivalencias del tipo:
$ note.half = note.quarter $
Con el objeto de que el alumnado detecte que en ese caso, al convertir las blancas en negras, la velocidad de la pieza se _duplica_.\
Como se ha especificado, se podrá realizar también una propuesta interdisciplinar con la asignatura de Ciencias Sociales mediante una reflexión a través de la letra de la canción que a continuación se adjunta:
#text(font: "Times New Roman")[
#align(center)[Estrellita, ¿dónde estás?\
Me pregunto quién serás\
En el cielo o en el mar\
Un diamante de verdad\

Estrellita, ¿dónde estás?\
Me pregunto quién serás\

En el cielo o en el mar\
Un diamante de verdad\
Estrellita, ¿dónde estás?\
Me pregunto quién serás\

Estrellita, ¿dónde estás?\
Me pregunto quién serás\
En el cielo o en el mar\
Un diamante de verdad\

Estrellita, ¿dónde estás?\
Me pregunto quién serás\
]]
Desde aquí, podemos trabajar qué son las estrellas, dónde se encuentran, cuál es su función en el universo y cuál es su composición de forma básica. Se iniciaría esta parte mediante una inducción a través de preguntas partiendo de la letra:\
#align(center)[_¿Dónde creéis que están las estrellas, en el cielo o en el mar? ¿Por qué?_\
_¿Por qué compara la letra a las estellas con diamantes? ¿Qué hace a las estrellas tener esa propiedad?_]
De aquí obtendríamos por inducción los conceptos requeridos en lo explicitado.
== Propuesta a partir de la canción _La tarara_.
Los contenidos musicales que se trabajarán a partir de esta obra musical serán los correspondientes a la _dinámica_ y _agógica_ de la canción. Se prevé para tercer ciclo de Educación Primaria. Al igual que en la anterior propuesta se han indicado diferentes marcas de tiempo y matices. Se reflexionará primeramente sobre la indicación `morendo`. En la audición se detecta como el pulso de la obra es cada vez menor. En la pestaña _tempo_ en MuseScore, pediremos al alumnado que cambie la indicación para que baje el _tempo_, cambiando el `morendo` por otra indicación, así como que lo acelere (utilizando `accel.` u otros). Trabajaremos también la indicación `tempo primo` y `a tempo` para volver al tiempo original. Por último se considera trabajar los _tenuti_ del cuarto compás tienen una función, evitar picar esas notas completamente. Se realizará esta cuestión con una demostración al piano para diferenciar entre _tenuto_, _stacatto_ y _legato_.\
Por otro lado, en lo que respecta a la dinámica, merece la pena comprobar qué se ha realizado en las dos casillas. Vemos para empezar que durante toda la obra la indicación es _mezzoforte_. Sin embargo, en las casillas vemos reguladores y reforzadores. Mediante inducción por preguntas, interpelamos al alumnado:\
#align(center)[_¿Que hace el signo del compás 7? ¿A qué se parece?_\ _¿Y el `cresc.` del compás 9?_\ En el último compás hay varios signos parecidos al signo _mayor que..._ matemático. _¿Qué creéis que significan?_]
Conseguiremos mediante estas preguntas y dinámicas un acercamiento a la dinámica de una pieza musical y la importancia de respetarla durante su interpretación. Además, podemos trabajar los conceptos de canción, estrofa y estribillo, viendo como repetimos una parte varias veces y cambian las estrofas a la vista de la letra de la canción que a continuación se adjunta:\
#text(font: "Times New Roman")[
#align(center)[Tiene la tarara\
un vestido blanco\
con lunares rojos\
para el Jueves Santo\

*La tarara, sí*\
*La tarara, no*\
*La tarara, madre*\
*Que la bailo yo.*\

Tiene la Tarara\
un dedito malo\
que curar no puede\
ningún cirujano.\

*La tarara, sí*\
*La tarara, no*\
*La tarara, madre*\
*Que la bailo yo.*\

Tiene la Tarara\
un cesto de frutas\
y me da, si quiero,\
siempre las maduras.\

*La tarara, sí*\
*La tarara, no*\
*La tarara, madre*\
*Que la bailo yo.*\
]]
Nótese como las partes en negrita corresponden al estribillo y se repiten continuamente.