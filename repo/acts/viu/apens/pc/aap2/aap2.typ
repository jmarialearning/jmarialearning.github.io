#set document(
  title: [Actividad aplicativa 1 Aprendizaje y Enseñanza],
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
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad aplicativa 2. Rubrica de evaluación.*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de Valencia.\
  Aprendizaje y Enseñanza.\
  Máster del profesorado de Secundaria, Bachillerato y FP.
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
#outline()
#pagebreak()
#set par(leading: 1.5em)
= Rúbrica de evaluación.
Se propone una rúbrica en 4 niveles atendiendo a distintos ítems, a saber:
- Calidad del debate.
- Corrección en las conclusiones obtenidas.
- Corrección en la hipótesis realizada.
- Proceso seguido en los grupos base.
Se establecen los niveles en una tabla presentada a continaución. Considérese el nivel 4 el óptimo y el 1 el que implica la no consecución del objetivo. Más en detalle, se valoran los siguientes aspectos:
- El respeto a los turnos de palabra y la argumentación en base a la lógica.
- La coherencia de las conclusiones en base a la documentación.
- La coherencia de la hipótesis en base a algún argumento de naturaleza variada, conforme, eso sí, a la lógica.
- La colaboración en el equipo, en las acciones realizadas en forma grupal, verificando el trabajo de cada miembro del grupo.
No se considera, en este caso concreto, necesario evaluar la selección de la información de manera explícita. Sin embargo, los ítems listados permiten valorar ese aspecto al depender de lo especificado.
#pagebreak()
#set par(leading: 1em)
#set page(flipped: true,margin: 2cm)
#set text(10pt)
#table(
  columns: 5,
  align: center,
  table.cell(
    colspan: 5,
  )[*Rúbrica de evaluación*],
  [Ítem evaluado],[Nivel 4],[Nivel 3],[Nivel 2],[Nivel 1],
  table.cell(
    rowspan: 2,
    align: center+horizon
  )[Calidad del debate],
  [En el debate se han mantenido los turnos de palabra y se han respetado a los demás compañeros.],[El moderador o moderadora ha tenido que llamar al orden en alguna ocasión a algún miembro del grupo.],[En contadas ocasiones se ha llamado la atención a varios miembros del grupo por el agravio a los turnos de palabra.],[Se ha parado el debate por completo dada la imposibilidad de su celebración en lo que al respeto entre partes se refiere],
  [Los argumentos utilizados gozan de fundamentación correcta y documentada.],[Se utilizan argumentos falaces muy esporádicamente, modificándolos ante las ayudas del profesor],[Se recurre con frecuencia a argumentos falaces informales, lo cual quita calidad al debate.],[Se debe parar el debate por continuas falacias en las refuntaciones de las partes],
table.cell(
  align: center+horizon,
)[Corrección de las conclusiones],
[Las conclusiones son coherentes, se comunican de manera correcta y gozan de solidez.],[Las conclusiones son coherentes, pero no se comunican correctamente, dando lugar a lagunas.],[Las conclusiones no son coherentes o sólidas, fruto de errores de concepto que se resuelven con ayuda docente.],[Las conclusiones destacan por su pobreza e imposibilidad de generalización. Se detecta una clara falta de trabajo de investigación.],
table.cell(
  align: center+horizon,
)[Corrección de la hipótesis realizada],
[La hipótesis parte de las preguntas realizadas y su contenido queda fundamentado en base a ideas previas o conocimiento anterior siguiendo la lógica.],[La hipótesis utiliza las preguntas realizadas pero evita explicar las causas de su contenido y defendiéndola con falacias.],[La hipótesis no utiliza las preguntas y su circunscripción al tema es limitada.],[Siendo la circunscripción de la hipótesis al tema limitada, su redacción es incorrecta, utilizando falacias y argumentos impropios de la lógica.],
table.cell(
  align: center+horizon,
)[Proceso seguido en los grupos base],
[El grupo funciona correctamente, con todos sus miembros aportando en colaboración.],[El grupo debve hacer frente a dificultades, que soluciona mediante la práctica dialógica y, si se precisa, ayuda docente.],[El grupo llega a realizar el trabajo pero sin colaboración. En su lugar, se ve una mera asignación de tareas que dista del aprendizaje colaborativo],[El grupo se ha intervenido por el profesorado para salvaguardar el correcto funcionamiento de la clase, no obteniéndose conclusiones óptimas.]
)