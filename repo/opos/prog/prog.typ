#set document(
  title: [Programación didáctica Oposiciones 2027],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto),
)
#set page(
  paper: "a4",
  margin: 3cm,
)
#set par(justify: true)
#set heading(numbering: "1.")
#show bibliography: set heading(numbering: "1.")
#set list(
  indent: 1.5em,
) // Para que aparezcan metidas
#set enum(
  indent: 1.5em,
) // Para que aparezcan metidas
#set text(
  font: "Liberation Sans",
  size: 11pt,
  lang: "es",
  hyphenate: auto,
)
#align(top+center,[#image("../img/logo-gobierno-aragon.svg", width: 70%)])
#align(horizon+center,text(size: 19pt, hyphenate: false)[*Programación didáctica*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur\
  *Fecha*\
  *Nombre del ciclo*\
  *Nombre del módulo*\
  Acceso al Cuerpo de Prfoesores de Enseñanza Secundaria
])
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)
#set par(leading: 1.5em)
#outline()
#pagebreak()
= Contextualización de la programación.
== Contextualización legal.
La presente programación didáctica se sustenta en la normativa expuesta a continuación:
=== Normativa estatal.
- Ley Orgánica 2/2006, de 3 de mayo, de Educación#cite(<leyOrganicaAntigua>, form: none), modificada por la Ley Orgánica 3/2020, de 29 de diciembre#cite(<leyOrganica>, form: none).
- Ley Orgánica 3/2022, de 31 de marzo, de ordenación e integración de la Formación Profesional#cite(<leyOrganicaFP>, form: none).
- Real Decreto 659/2023, de 18 de julio, por el que se desarrolla la ordenación del Sistema de Formación Profesional#cite(<realDecretoFP>, form: none).
=== Normativa autonómica.
- Decreto
- Orden
- Currículo

#bibliography("refs.yml", style: "american-psychological-association")