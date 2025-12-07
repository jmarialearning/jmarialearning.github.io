#set document(
  title: [Actividad individual Electromagnetismo I],
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
  size: 11pt,
  hyphenate: auto,
  lang: "es"
)
#align(top+center,[
  #image("/repo/acts/unir/img/logounir.png", width:70%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad Individual*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2025-2026.\
  Universidad Internacional de La Rioja.\
  Electromagnetismo I.\
  Grado en Física.
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
#set par(leading: 1.5em)
= Ejercicio 1
Hemos de considerar la fuerza debida a $q_1$ y $q_2$ sobre $q_3$. Sobre la horizontal sabemos que las fuerzas llevan un ángulo de:
$ alpha = arctan frac(0.3,0.4) $
en valor absoluto. Es trivial detectar que al tener $q_1$ y $q_2$ la misma carga y estar a la misma distancia del origen, las componentes verticales de la fuerza se anularán entre sí. Además, la componente horizontal de la fuerza será la misma para $q_1$ que para $q_2$. Así pues,
$ accent(F, arrow)_y = frac(2 dot k dot Q dot q ,r^2) dot arctan frac(0.3,0.4) = 0.92 space "N" $
= Ejercicio 2
Llamaremos eje $y$ al generado por la recta perpendicular a la superficie encerrada por el anillo. Asimismo, el eje $x$ será el paralelo al radio del anillo.\
Por simetría del anillo las componentes en el eje $x$ quedarán anuladas entre sí, teniéndose en cuenta únicamente las componentes en el eje $y$. Como el anillo está cargado con densidad lineal de carga $lambda$, sabemos que:
$ d q = lambda dot d accent(l, arrow) $
Por ende, sabemos que la fuerza en el eje $y$ se calculará integrando, según sigue:
$ accent(F_y, arrow) = integral.cont frac(k dot q dot lambda dot d accent(l, arrow), d^2) dot cos alpha $
Donde $alpha$ es el ángulo entre la fuerza y el eje $y$. Sabemos que su coseno es igual a: $ cos alpha =frac(a,d) $
Por ende, sustituimos y obtenemos una expresión para la fuerza que se ejerce sobre $q$:
$ accent(F_y, arrow) = integral.cont frac(k dot q dot lambda dot d accent(l, arrow), d^3) dot a = frac(k dot q dot lambda dot 2pi R a,d^3) $
= Ejercicio 3
Para calcular el campo eléctrico utilizaremos la ley de Gauss:
$ Phi = integral.cont accent(E, arrow) dot.c d accent(S, arrow) = accent(E, arrow) dot 4 pi a^2 $
Sabemos que, por la ley de Gauss:
$ Phi = frac(q_"enc", epsilon_0) $
Despejando el campo eléctrico:
$ accent(E, arrow) = frac(q_"enc",epsilon_0 dot 4 pi a^2) $
= Ejercicio 4
Aplicamos el Teorema de Gauss al cilindro exterior:
$ Phi = integral.cont accent(E, arrow) dot d accent(S, arrow) = accent(E, arrow) dot 2 pi R l $
Donde $l$ es la longitud del cilindro. Sabiendo que:
$ accent(E, arrow) dot 2 pi R l = frac(q_"enc", epsilon_0) $
Despejamos $accent(E, arrow)$. La carga será $rho dot 4 pi R^2 l$. Despejamos:
$ accent(E, arrow) dot 2 pi R l = frac(rho 4 pi R^2 l, epsilon_0) $