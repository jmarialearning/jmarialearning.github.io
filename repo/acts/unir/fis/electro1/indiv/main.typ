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
= Ejercicio 5
Un campo $accent(F, arrow)$ electrostático es irrotacional, esto es:
$ accent(nabla,arrow) times accent(F, arrow) = accent(0,arrow) $
Al comprobar vemos que esta condición se cumple haciendo el determinante siguiente:
$ mat(delim: "|", accent(i, hat), accent(j, hat), accent(k, hat); frac(style: "skewed", partial, partial x), frac(style: "skewed", partial, partial y), frac(style: "skewed", partial, partial z);y z - x, x z - y, x y - z) = accent(0, arrow) $
Todo campo irrotacional tiene una función escalar, llamada _potencial_, tal que:
$ accent(E, arrow) = accent(nabla, arrow) V $
Calcularemos $V$ resolviendo las siguientes EDPs formando un sistema:
$ cases(
  frac(partial V, partial x) = y z - x,
  frac(partial V, partial y) = x z - y,
  frac(partial V, partial z) = x y - z
) $
Resolvemos para $V$, integrando y variando las constantes:
$ integral (y z - x) d x = x y z - frac(x^2,2) + cal(C)_1 (y,z) $
$ integral (x z - y) d y = x y z - frac(y^2,2) + cal(C)_2 (x,z) $
$ integral (x y - z) d z = x y z - frac(z^2,2) + cal(C)_3 (x,y) $
Se deducen las constantes, quedando el potencial de la forma que sigue:
$ V (x,y,z) = x y z - frac(x^2,2) - frac(y^2,2) - frac(z^2,2) $
Podemos comprobar la corrección de la expresión aplicando el gradiente. Obtendremos el campo inicial.
= Ejercicio 6
Al tener varias cargas puntuales podemos aplicar el principio de superposición:
$ V_"total" = V_1 + V_2 + V_3 = frac(k q_1, r_"1A") + frac(k q_2, r_"2A") + frac(k q_3, r_"3A") $
$ V_"total" = 8.99 dot 10^9 space frac("N" dot "m"^2, "C"^2) (frac(7 dot 10^"-4", sqrt(15)) space frac("C", "m") - 2 dot 7 dot 10^"-4" space frac("C", "m")) = -1.1 dot 10^"-7" space frac("N" dot "m", "C") $
= Ejercicio 7
Si las esferas están conectadas entre sí, el potencial de cada una de ellas debe ser igual, es decir $V$. Igualando potenciales y dividiendo por $k$:
$ frac(q_1, r_1) = frac(q_2, r_2) $
Como los radios de las esferas son iguales, sus cargas también deben serlo.
= Ejercicio 8
Separaremos en dos condensadores, uno con cada dieléctrico. El punto de separación es $r$. Aplicando la ley de Gauss, sabemos que:
$ E = frac(Q_"condensador", 4 pi r^2 epsilon_0) $
para cada condensador. Sabemos también que $Delta V = integral.cont E dot d r$. Por ende,
$ Delta V_"C1" = frac(Q_1, 4 pi epsilon_0) dot limits(integral)^r_R_1 frac(1, r^2) space.thin d r = frac(Q_1, 4 pi epsilon_0) dot (frac(1,r) - frac(1, R_1)) $
$ Delta V_"C2" = frac(Q_2, 4 pi epsilon_0) dot limits(integral)^(R_2)_r frac(1, r^2) space.thin d r = frac(Q_2, 4 pi epsilon_0) dot (frac(1,R_2) - frac(1, r)) $
Además sabemos que $C = frac(style: "horizontal", Q, Delta V)$. Por otro lado, según especifica el problema $frac(1, C_"eq", style: "horizontal") = frac(1, C_1, style: "horizontal") + frac(1, C_2, style: "horizontal")$. Esto nos lleva a obtener la capacidad del condensador, que queda regida por la expresión siguiente:
$ C_"eq" = frac(4 pi epsilon_0, frac(1, r_2) - frac(1, r_1)) $
= Ejercicio 9
