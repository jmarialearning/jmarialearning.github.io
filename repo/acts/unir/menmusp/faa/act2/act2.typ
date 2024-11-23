#set document(
  title: ["Actividad 2 Fundamentos de armonía y análisis"],
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
#set list(
  tight: false,
  indent: 1em,
  spacing: auto,
  marker: [-]
)
#align(top+center,[
  #image("../img/logounir.png", width:70%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad 2: análisis del repertorio escolar.*])
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
Vistas las próximas festividades escolares de Navidad, se han elegido dos villancicos para el trabajo, a saber:
#list(
  tight: false,
  marker: [-],
  indent: 1em,
  spacing: auto,
  [Noche de paz.],
  [12 days of Christmas]
)
Nos permiten trabajar distintos aspectos relacionados con la música para comentar con la clase y reflexionar.
= Análisis de las obras musicales.
Las obras musicales tienen las partituras siguientes:\
#highlight(fill: gradient.linear(..color.map.spectral))[Buscar o hacer partituras.]
== Noche de paz.
Podemos comenzar analizando la partitura a través de la tonalidad. La obra fue originalmente compuesta en Re Mayor, de acuerdo con lo que vemos en lo que parece su manuscrito por parte de #cite(<gruberphoto>,form: "prose"). Por otro lado, vemos que su compás es compuesto, #math.vec(delim: none,[$bold(6)$],[$bold(8)$]), con lo que cada tiempo del compás queda compuesto por una negra con puntillo (1,5 tiempos de negra). Se subdivide en 3 corcheas por tiempo.\
=== Acordes.
Merecen mención también los acordes de la pieza musical. Estos son, en orden de importancia, sobre:
- La tónica (D), con sus inversiones.
- La dominante (A), su acorde de 7ª y las inversiones del mismo.
- La subdominante (G).
- La superdominante (B).
- La supertónica (E).
- La modal (F).
Dichos grados tonales se han utilizado con diferentes propósitos, a saber:
- El primer, cuarto y quinto grado de la escala de re (en este caso) son fundamentales para cualquier obra musical. Una cadencia perfecta (V-I) o plagal (IV-I) son las más comunes en las obras. Es conocida también la importancia del acorde de 7ª (cifrado como 7, #math.vec(delim: none,[$bold(6)$],[$bold(5)$]), +4 y +2) pues aporta tensión y resuelve (como acorde de dominante que es) a la tónica.
- Por otro lado, la superdominante (VI), permite iniciar la progresión 6-2-5-1, que se utiliza en los últimos compases de la obra. De esta explicación deducimos también la importancia del segundo grado (II).
- La modal en Re Mayor (III), es Fa sostenido. No es casualidad que el tercer grado de una tonalidad mayor sea la dominante en la tonalidad relativa menor. Se utiliza, pues, el tercer grado para resolver a la relativa menor en ciertos momentos. Esta técnica se conoce como _dominante secundaria_.
=== Estructura.
La obra está compuesta por tres frases diferenciadas, de 4 compases cada una. La primera tiene un tema repetido dos compases y luego otro tema de contraste variado. La segunda frase tiene un tema de dos compases, que varía en los dos siguientes. Por último, la tercera frase tiene un tema de dos compases, variado en los dos siguientes, que concluye la canción.
=== Parámetros del sonido.
La tesitura de la línea melódica varía entre el Do4 y el Fa5, medidos con el sistema científico (internacional). En lo que a la duración se refiere, atendiendo a la partitura original, la nota que más dura se extiende por dos tiempos de negra.
=== Utilización y pertinencia en el aula de música.
Esta canción es de utilidad en el aula de música por varias razones:
- Es conocida en muchos países del mundo, entre ellos España, lo cual permite que se aprenda más rápido.
- La tesitura no es difícil para los niños. Al contrario, puede servir para trabajar el canto en el aula de música.
- Permite la reflexión sobre los compases comppuestos, pues los compases simples suelen dominar el repertorio escolar.
- Con ocasión de las fiestas navideñas, permite una situación social de referencia para trabajar aspectos musicales.
- La letra es versátil, con lo que se puede alargar o acortar, incluso omitiendo o cambiando letra que no se considere oportuna.
Así pues, se considera correcto el trabajo con esta obra por las posibilidades competenciales que ofrece. Incluso aun con personas que no festejen la Navidad, las posibilidades de aprendizaje musical o instrumental, omitiendo o cambiando la letra son numerosas.
#bibliography("refs.bib",style: "american-psychological-association")