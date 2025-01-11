#set document(
  title: [Actividad aplicativa 1 Sociedad],
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
#set text(
  font: "Arial",
  size: 12pt,
  hyphenate: auto,
  lang: "es"
)
#align(top+center,[
  #image("../../img/logoviu.png", width:70%)
])
#align(horizon+center,text(18pt, hyphenate: false)[*Actividad aplicativa 1. Infografía estilos parentales*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de Valencia.\
  Sociedad, Familia y Educación.\
  Máster del profesorado de Secundaria, Bachillerato y FP.
])
#pagebreak()
#outline()
#set page(numbering: "1")
#set par(leading: 1.5em)
#counter(page).update(1)
= Infografía.
Se han escogido los estilos *autorizativo* e *indlugente* partiendo de la clasificación de #cite(<musitu2004consecuencias>, form: "prose").
= Resumen del texto científico.
Se utilizará el texto de #cite(<villarejo_estilos_2020>, form: "prose")
= Ejemplo de alumnado en clase.

#bibliography("refs.bib", style: "american-psychological-association")