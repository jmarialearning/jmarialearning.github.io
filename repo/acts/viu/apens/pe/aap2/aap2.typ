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
=== Estrategia 2.
En este caso tenemos un MRU en el que el sonido recorre dos veces la profundidad del pozo. Manteniendo el mismo convenio de signos, con la posición final del sonido positiva, tenemos que:
$ arrow(r_"finp") = arrow(v_s) dot.op t $
Sabemos que en el tiempo medido el sonido sale de la fuente, rebota y es captado por el micrófono. Así nuestro tiempo de caída es la mitad del que medimos, pues el sonido no varía la velocidad y se desplaza en línea recta.
$ arrow(r_"finp") = arrow(v_s) dot.op frac(t,2) $
Para un tiempo $t = 1.135 space.thin "s"$ tenemos que la profundidad del pozo son $arrow(r_"finp") = 385.9 space.thin "m"$
== Análisis de resultados.
Los resultados tienen sentido físico, pero la hipótesis no había considerado que el sonido también tiene una velocidad, finita, y desde luego, no despreciable. Quizá la segunda forma de resolver es mejor, pues podemos utilizar equipos informáticos para calcular cuándo se recibe la onda sonora y se disminuye el error, si bien no es nulo.\
En otro orden de cosas, no hemos de olvidar que dichas profundidades sirven para calcular el volumen de grava para el pozo. Extruyendo el círculo de radio conocido para la altura obtenida el volumen de grava que se obtiene es:
- Estrategia 1: $V = pi dot.op r^2 dot.op h = pi dot.op (0.35 space.thin "m")^2 dot.op 385.4 space.thin "m" = 148.3 space.thin "m"^3 equiv 148.3 dot.op 10^3 space.thin "L"$
- Estrategia 2: $V = pi dot.op r^2 dot.op h = pi dot.op (0.35 space.thin "m")^2 dot.op 385.9 space.thin "m" = 148.5 space.thin "m"^3 equiv 148.5 dot.op 10^3 space.thin "L"$
== Perspectivas abiertas.
El problema restringe sustancialmente el abordaje de situaciones más complejas pues la situación es ya, por si misma, compleja. Cabe poca posibilidad de realizar una situación más compleja. Es cierto que se podrían considerar las imperfecciones del pozo, pero la afección al resolución del problema será mínima. Los conceptos en los que se puede profundizar son los movimientos rectilíneos y el análisis vectorial y dimensional del problema.