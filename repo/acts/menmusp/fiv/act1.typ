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
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad 1: escucha, identifica y clasifica los instrumentos musicales*])
#align(bottom+right, text(18pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de La Rioja.\
  Formación Instrumental y Vocal.
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
= Tablas correspondientes a cada audición.
== Audición 1.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [1],[Timbales],[Membranófonos golpeados],
  ), caption: [Análisis de la audición 1.]
)
== Audición 2.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [1],[Violonchelo],[Cordófonos frotados],
  ), caption: [Análisis de la audición 2.]
)
== Audición 3.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [1],[Trombón],[Aerófonos de boquilla],
  ), caption: [Análisis de la audición 3.]
)
== Audición 4.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [1],[Flauta travesera],[Aerófonos de bisel],
  ), caption: [Análisis de la audición 4.]
)
== Audición 5.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [2],[Violín y piano],[Cordófonos frotados y percutidos],
  ), caption: [Análisis de la audición 5.]
)
== Audición 6.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [2],[Clave y violonchelo],[Cordófonos pulsados y frotados],
  ), caption: [Análisis de la audición 6.]
)
== Audición 7.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [1],[Órgano],[Aerófonos mixtos],
  ), caption: [Análisis de la audición 7.]
)
== Audición 8.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [2],[Clarinete y piano],[Aerófonos mixtos e cordófonos percutidos],
  ), caption: [Análisis de la audición 8.]
)
== Audición 9.
#figure(
  table(
    columns: 3,
    inset: 10pt,
    align: horizon,
    table.header([Número instrumentos],[Nombre],[Familia]),
    [3],[Piano, violín y trompa],[Cordófonos percutidos, frotados y aerófonos de boquilla],
  ), caption: [Análisis de la audición 9.]
)
= Reflexión acerca de las posibilidades tímbricas en la formación del alumnado.
La Educación tímbrica permite al alumnado desarrollar las habilidades de discriminación y categorización de instrumentos musicales, conocer las características que diferencian el timbre de cada instrumento, a la vez que desarrolla su oído y conoce estrategias que le permiten mejorarlo para futuras situaciones de discriminación. De esta manera, conseguimos que todo nuestro grupo clase mejore las mencionadas habilidades mediante situaciones reales de escucha y clasificación a través de audiciones. Este planteamiento va en línea con las tesis de #cite(form: "prose", <dewey_experiencia_2004>), que especifica que una metodología innovadora y motivadora consiste en la experimentación, por parte del alumnado, de prácticas relevantes que le permiten aprender del hecho cotidiano.
#show bibliography: set heading(numbering: "1.")
#bibliography(title: [Referencias], 
"bibliography.bib", style: "american-psychological-association")