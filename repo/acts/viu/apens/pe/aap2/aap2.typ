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
$ m_"azufre" = %_frac(m,m) dot.op m_"fuel" $
Aplicamos, pues, la ley de Lavoisier según lo especificado:
$ frac(M_"S",M_"SO"_2) = frac(m_"S",m_"SO"_2) arrow m_"SO"_2 = frac(M_"SO"_2,M_"S") dot.op m_"S" $
A partir de aquí, pasamos a moles la masa de dióxido para aplicar la _Ecuación de los gases ideales_ para obtener el volumen:
$ p dot.op V = n dot.op R dot.op T arrow V = frac(n dot.op R dot.op T,p) $
Obteniendo el volumen de dióxido emitido.
=== Estrategia 2.
Consideremos la reacción de oxidación del azufre:
$ "S" + "O"_2 arrow "SO"_2 $
Vemos, por estequiometría de la reacción que por cada mol de azufre que reacciona, tenemos que se genera un mol de dióxido. Así pues, sabemos que reaccionan:
$ m_"azufre" = %_frac(m,m) dot.op m_"fuel" $
lo cual, en moles, es:
$ m_"azufre" space.thin "g"_"S" dot.op frac(1 space.thin "mol" "S", 32 space.thin "g"space.thin "S") = "n"_"azufre" $
Procederemos con la _Ecuación de los gases ideales_:
$ p dot.op V = n dot.op R dot.op T arrow V = frac(n dot.op R dot.op T,p) = frac(n dot.op R dot.op T,p) $
== Análisis de resultados.
Las dos estrategias concluyen las mismas cuestiones, con sentido y relevancia física. Además, dichas estrategias demuestran la correcta enunciación de las magnitudes intervinientes en el problema y su dependencia para con la solución. Las expresiones literales son resueltas en el apartado anterior, pasando un análisis dimensional con éxito. Además, nos damos cuenta como, para el caso límite, no habría existido masa de azufre, no existiendo por consguinete moles de azufre, moles de dióxido y, por ende, volumen de azufre.
=== Estrategia 1.
$ m_"azufre" = 0,7% dot.op 21 space.hair "tm" = 0,147 space.hair "tm"_"azufre" equiv 147 space.hair "kg"_"azufre" $
Aplicamos la Ley de Lavoisier:
$ m_"SO"_2 = frac(64 space.thin frac("g"_"SO"_2,"mol"),32 space.thin frac("g"_"S","mol")) dot.op 147000 space.thin "g"_"azufre" = 294000 space.thin "g"_"SO"_2 equiv 294 space.thin "kg"_"SO"_2 $
Pasando los gramos a moles, aplicamos la _Ecuación de los gases ideales_:
$ 294000 space.thin "g"_"SO"_2 dot.op frac(1 space.thin "mol" "SO"_2, 64 space.thin "g"space.thin "SO"_2) = 4593,75 space.thin "mol" $
$ V = (4593,75 space.thin "mol" dot.op 0,082057 space.thin frac("atm" dot.op "L", "mol" dot.op "K") dot.op 373,15 space.thin "K")/(730 space.thin "mmHg" dot.op frac(1 space.thin "atm", 760 "mmHg")) approx 146439 space.thin "L" equiv 146,4 space.thin "m"^3 $
=== Estrategia 2.
$ m_"azufre" = 0,7% dot.op 21 space.hair "tm" = 0,147 space.hair "tm"_"azufre" equiv 147 space.hair "kg"_"azufre" $
Pasamos los gramos a moles y por estequiometría extrapolamos a dióxido de azufre:
$ 147000 space.thin "g"_"S" dot.op frac(1 space.thin "mol" "S", 32 space.thin "g"space.thin "S") = 4593,75 space.thin "mol" $
Aplicamos a partir de aquí la _Ecuación de los gases ideales_:
$ V = (4593,75 space.thin "mol" dot.op 0,082057 space.thin frac("atm" dot.op "L", "mol" dot.op "K") dot.op 373,15 space.thin "K")/(730 space.thin "mmHg" dot.op frac(1 space.thin "atm", 760 "mmHg")) approx 146439 space.thin "L" equiv 146,4 space.thin "m"^3 $
== Perspectivas abiertas.
La situación planteada es sustancialmete complicada. Sin embargo, se puede plantear una nueva línea de investigación, considerando que se queda parte del fuel o del azufre sin quemar. Eliminamos así una capa de simplificación en tanto en cuanto obligamos al alumnado a tener en cuenta conceptos de cinética química y reactivo limitante, entre otras cuestiones.