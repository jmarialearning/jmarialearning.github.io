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
Se crea el problema como investigación atendiendo a las siguientes cuestiones:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[Una central quema fuel para conseguir electricidad con un porcentaje de $0,70 space.thin %$ en azufre. Si la central quema 21 toneladas de fuel y todo el azufre se convierte en $"SO"_2$, ¿qué volumen de $"SO"_2$ se va a emitir a la atmósfera con unas condiciones de $100 space.hair degree "C"$ y $730 space.thin "mmHg"$?]
)
Transformado, el enunciado queda como sigue:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[_¿Cuánto contamina una central térmica que funciona con fuel?_]
)// Preguntar esto... ¿Cómo se redacta el problema?
== Interés de la situación.
El interés de la situación aflora ante las siguientes apreciaciones:
- _Sostenibilidad_ y _contaminación_: según lo que se especifica en el propio enunciado. Hemos de saber si la emisión de $"SO"_2$ a la atmósfera es contaminante o inocua.
- _Problemas de salud_ derivados de su presencia en el aire.
- _Impacto medioambiental_ de la posible lluvia ácida derivada de la presencia de gases en la atmósfera.
- _Necesidad de transición energética_ a energías totalmente renovables.
- Cuestiones económicas en lo referente a los combustibles.
La magnitud que vamos a cuantificar para considerar la pregunta es el _volumen_ de azufre emitido al día. Por otro lado, el $"SO"_2$ se comporta como un gas ideal y reacciona completamente.
== Estudio cualitativo.
Tenemos una central que emite azufre, fruto de impurezas en el fuel que se quema. En lo respectivo a los casos límite, tenemos que si la riqueza fuese del 0% no habria contaminación al no haber emisiones
== Construcción de la hipótesis.
Se considera que la emisión de dióxido de azufre viene dada por el volumen de fuel, temperatura y presión de salida, de la riqueza de azufre.
== Estrategias de resolución.
=== Estrategia 1.
Usamos la Ley de Lavoisier en el caso, a saber:
$ frac(M_"S",M_"SO"_2) = frac(m_"S",m_"SO"_2) $
donde $M$ representa las masas moleculares y $m$ las masas de cada elemento o compuesto. Se obtienen los moles de $"SO"_2$ y se calcula su volumen mediante la _Ecuación de los Gases Ideales_.
=== Estrategia 2.
Se utiliza la estequiometría para obtener el número de moles de $"SO"_2$ para proceder análogamente a la estrategia 1 a partir de dicho dato. Tenemos la reacción:
$ "S" + "O"_2 arrow "SO"_2 $
Con lo que sabemos que por cada mol de azufre tenemos un mol de $"SO"_2$ expulsado. Particularizando esta cuestión para las toneladas de fuel quemadas, considerando la riqueza de azufre en el fuel tendremos los moles de azufre que se convertirán en dióxido.
== Resolución.
=== Estrategia 1.
Hemos de obtener primeramente la masa de azufre, considerando la riqueza en el fuel:
$ m_"fuel" = %_frac(m,m) dot.op m_"azufre" $
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