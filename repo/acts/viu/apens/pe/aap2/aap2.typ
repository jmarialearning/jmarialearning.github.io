#set document(
  title: [Actividad aplicativa 2 Aprendizaje y Enseñanza Física y Química],
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
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad aplicativa 2. Problema como investigación.*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de Valencia.\
  Aprendizaje y Enseñanza de la física y química.\
  Máster del profesorado de Secundaria, Bachillerato y FP.
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
#outline()
#pagebreak()
#set par(leading: 1.5em)
= Creación del problema como investigación.
Se crea el problema como investigación atendiendo a las siguientes cuestiones
== Interés de la situación.
El interés de la situación nace de conocer cuánta grava necesitamos para tapar por completo un pozo de profundidad indeterminada. Podemos conocer, evidentemente las dimensiones del ojo, circular, pero desconocemos la profundidad, como se ha especificado.
== Estudio cualitativo.
Tenemos un pozo cilíndrico cuyas medidas son:
- Profundidad: indeterminada.
- Radio del ojo circular: 35 centímetros.
Necesitamos cegarlo y se ha considerado la grava por su capacidad de drenaje. 
== Construcción de la hipótesis.
- La profundidad puede calcularse tiempo que tarde un objeto en llegar abajo únicamente, además de la velocidad del sonido en el aire.
== Estrategias de resolución.
=== Estrategia 1.
Realizaremos en esta estrategia una aproximación a través del movimiento. Podemos dejar caer una piedra desde arriba, esperar a que caiga, contando el tiempo y cuando oigamos el golpe en el suelo, parar el cronómetro. Sabemos que la caída libre de la piedra es:
$ arrow(r_f)=frac(1,2) dot.op arrow(g) dot.op t^2 $
Además sabemos que el sonido llega a nuestra posición siguiendo un MRU con una velocidad de $arrow(v)=340 space.thin frac("m","s")$. Así pues, hemos de conocer cuánto tarda el sonido en llegar desde que tiramos la piedra.
=== Estrategia 2.
Similar a la estrategia 1 pero solamente utilizando sonido. Podemos emitir un sonido mediante un altavoz y captar la vuelta mediante un micrófono. Si la intensidad sonora jugase un papel en el problema, esto sería imposible de realizar por la capacidad de absorción del pozo. Sin embargo, el sonido, intenso o débil, se mueve a la misma velocidad, por lo que podemos mandar una onda sinusoidal a 440 hercios, comenzar a contar y detectar cómo se recibe la onda mediante un microfono unidireccional hipocardioide. El sonido habría recorrido el doble de la altura del pozo, permitiendo el cálculo de la altura conociendo la velocidad.
== Resolución.
=== Estrategia 1.
Inicia nuestra piedra la caída libre con posición inicial nula. Así, sabemos que:
$ arrow(r_"finp")=frac(1,2) dot.op arrow(g) dot.op attach(t,tr: 2,br: "caída") $
Por otro lado, sabemos que en $t = attach(t,br: "caída")$ se produce un MRU cuya posición inicial es $arrow(r_0) = arrow(r_"finp")$. Considerando que la base de nuestro sistema de referencia es la parte de arriba del pozo, la posición final será 0. De esta manera:\
$ 0 = arrow(r_"finp") + arrow(v_"s") dot.op t_"sonido" $ y $ t_"sonido" + t_"caida" = t_"medido" $
Sustituimos $t_"sonido"$ por $t_"medido" - t_"caida"$ en la segunda ecuación para generar un sistema de dos ecuaciones con dos incógnitas como el que sigue:
$ cases(
  arrow(r_"finp") = -arrow(v_s) dot.op (t_"medido"- t_"caida")\
  arrow(r_"finp")=frac(1,2) dot.op arrow(g) dot.op attach(t,tr: 2,br: "caída")
) $
Igualando, tenemos que:
$  -arrow(v_s) dot.op (t_"medido"- t_"caida") = frac(1,2) dot.op arrow(g) dot.op attach(t,tr: 2,br: "caída") $
Resolviendo para $t_"caida"$, obtenemos un valor de:
$ t_"caida" = frac(v_s plus.minus sqrt(v_s^2-2g v_s t),g) $
Lo cual arroja dos resultados para $t_"caida"$. Uno implicará que dicha magnitud es negativa, lo cual descartaremos por no tener sentido físico.
Para un tiempo medido $t_"medido" = 15 space.thin "s"$, obtenemos unos datos de tiempo de caída de:
$ t_"caida" = 8,86 space.thin "s" $
lo cual nos permite conocer la profundidad del pozo, siendo esta de:
$ arrow(r_"finp") = 385.4 space.thin "m" $
== Análisis de resultados.
== Perspectivas abiertas.