#set document(
  title: ["Actividad 2 Historia"],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto)
)
#set page(
  paper: "a4",
  margin: (2.5cm),
)
#set par(justify: true)
#set list(
  tight: true,
  marker: [-],
  indent: 1em,
  spacing: auto,
)
#set text(
  font: "Calibri",
  size: 12pt,
  hyphenate: auto,
  lang: "es"
)
#align(top+center,[
  #image("../img/logounir.png", width:70%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad 2: equilibrio teórico-práctico y recursos didácticos.*])
#align(bottom+right, text(18pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de La Rioja.\
  La Educación Musical a lo largo de la historia.
])
#pagebreak()
#outline(
  indent:auto
)
#pagebreak()
#set heading(numbering: "1.")
#set page(numbering: "1")
#set par(leading: 1.15em)
#counter(page).update(1)
= Comentario de las lecturas de los temas 3 a 5.
Los textos que nos ocupan versan acerca de la historia de la música durante la Edad Media y Moderna, así como el auge de los conservatorios. Después de la lectura de los textos, podemos concluir que:
- La música considerada _arte liberal_ era todavía la teórica, emparentada con las matemáticas, durante los tiempos del Imperio Carolingio. Se siguió fundamentalmente la tesis de Boecio y Alucino de York.
- La Iglesia, principal valedor del progreso en la Edad Media, no ocultaba su recelo a la música por considerarla placentera y viciosa.
- Con _Música Enrichadis_, asistimos a una primera intención de practicidad en la labor musical, que incita a la virtud en vez de al vicio. Se detecta la relación entre las músicas de Boecio.
En _Música Enrichadis_, vemos como a través de la dialéctica, se instruye a todas las personas que deban aprender música en dicho arte desde una dimensión práctica, obviando aquello que dificulta el aprendizaje y relegándolo para etapas posteriores. En su lugar, el objetivo del tratado es dotar a las personas de herramientas en lugar de trabajar sobre una base teórica o abstracta. El auge de la pedagogía musical de la mano del tratado permitió, en cierto modo, al creación de instituciones como los _conservatorios_ y la creación prolífica y estandarización anotativa a la que asistimos en el Barroco y Renacimiento.
= Recurso didáctico.
El recurso didáctico que se presenta permite trabajar ciertos contenidos de acústica en el tercer ciclo de Primaria. A partir de la herramienta #link("https://musiclab.chromeexperiments.com/Oscillators/")[_Chrome Music Lab_] podemos ver como la modificación de las diferentes cualidades de la onda sonora implica un sonido diferenciado. A nivel práctico, se pueden establecer relaciones que se profundizarían a nivel teórico con una explicación acerca de qué es la frecuencia de una onda sonora y cómo afecta al sonido que percibimos. Por otro lado, se puede comprobar también como el timbre, a nivel teórico entendido como aquello que distingue un sonido de otro, cambia según la forma que tenga la onda (sinusoidal, sierra, triangular o cuadrada). Conseguimos pues, de manera práctica, acceder a los conceptos para profundizar en ellos después mediante una exposición teórica.
#bibliography("refs.bib", style: "american-psychological-association", full: true)