#set document(
  title: [Actividad aplicativa 1 Complementos],
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
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad aplicativa 1. Diseño de una propuesta LOMLOE y actividades CTS*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2024-2025.\
  Universidad Internacional de Valencia.\
  Complementos para la formación disciplinar de Física y Química.\
  Máster del profesorado de Secundaria, Bachillerato y FP.
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1.5em)
#counter(page).update(1)
= Tarea 1: diseño de una propuesta didáctica a partir del texto histórico.
El texto escogido para el trabajo en esta sesión es un texto de Galileo Galilei y su aportación en la mecánica clásica en contraposición a la concepción aristotélica.\
Sabemos que Aristóteles consideraba que al dejar caer un objeto, este caía más rápido según fuese más masivo. Veamos cómo lo explica el propio Aristóteles en su tratado _Física_, así como en _Sobre el cielo_ y _Acerca de la generación y la producción_.
En su libro _Física_, especifica Aristóteles diferentes nociones de mecánica. Entre ellas destacamos:
+ Existen dos tipos de movimiento, a saber: _violento_ o _antinatural_, generado _ad hoc_ y cesado cuando el agente deja de causarlo y _natural_, producido por aquellos entes que se mueven por su propia naturaleza (e.g. animales).
+ Aristóteles especifica que los objetos caen a una velocidad proporcional a su peso e inversamente proporcional a la densidad del fluido donde están inmersos.
En lo que se refiere a estas teorías hubo ya distintos personajes que las testaron, llegando a concluir que eran incorrectas. Galileo fue el primero que consiguió erradicar ese pensamiento comprobando que la masa del cuerpo no afecta a la velocidad de caída. Tiró dos bolas, una 10 veces más masiva que la otra desde una misma altura, unidas por una cuerda. Teóricamente llegó a comprender que lo afirmado por Aristóteles era falso. Simon Stevin y Jan Cornets de Groot comprobaron que Galileo tenía razón tirando dos bolas de diferente masa desde una torre y comprobando que llegaban al mismo momento. En palabras del propio Stevin:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[Vamos a tomar (tal como Jan Cornets de Groot, diligente investigador de los misterios de la Naturaleza, y yo hemos hecho) dos bolas de plomo, una de ellas diez veces más grande y pesada que la otra, y las dejaremos caer juntas desde una altura de 30 pies de alto y esto nos mostrará, que la bola más ligera no se adelanta diez veces a la pesada, sino que caen juntas al mismo tiempo en el suelo. (...) Esto nos permitirá comprobar que Aristóteles estaba equivocado.]
)
Como vemos, la física aristotélica quedó desterrada al concluir estos experimentos. Sin embargo, Aristóteles detectó ciertas cuestiones que su teoría sabe explicar. Supongamos el siguiente caso:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[Sea una pluma con masa $m_1 = 1 space.nobreak.narrow upright(g) $. Sea también una bola  con masa $m_2 = 10 space.nobreak.narrow upright("kg")$. Si las dejamos caer de forma libre desde la misma altura, ¿cuál caerá antes?]
)
La experiencia nuestra nos dicta que la bola caerá antes, lo cual concuerda con lo que Aristóteles dijo y nos transporta a la edad Media. Dicha experiencia no se equivoca *en este caso*. ¿Qué estamos considerando de forma errónea? Es evidente que alguien miente. ¿Quién?\
En esta actividad se solicita investigar acerca del fenómeno de la caída de objetos detectando qué ocurre en el caso propuesto para que se cumpla lo que Aristóteles definió. Para ello, se proporcionan varias preguntas:
- ¿De qué depende que un objeto caiga al suelo si se deja libre? Pretendemos que el alumnado especifique diferentes variables, entre ellas: la masa generadora del campo gravitatorio y la resistencia del aire.
- ¿Esas relaciones de dependencia sirven en todo el _cosmos_? Sí son de utilidad en todo el _cosmos_. Ocurre que la Tierra está rodeada por una atmósfera gaseosa. No ocurre esto en todos los cuerpos.
- Comprueba, intuitivamente, si las relaciones son directa o inversamente proporcionales. Genera una fórmula que describa cómo cambiaría la velocidad en función del tiempo para los objetos en caída libre.
Como pista, se explicita que David Scott, en el transcurso de la misión lunar Apollo 15, realizó el experimento de Stevin, que se grabó en #link("https://jmarialearning.github.io/repo/acts/viu/comp/aap1/hammer.gif",)[vídeo].
#figure(caption: "Dave Scott tirando una pluma y un martillo en la Luna.",image("hammer.gif", format: "gif",))
- ¿Qué ocurre en la Luna para que pase esto? En la Luna no hay atmósfera, por lo que el aire no resiste a la caída.
== Vinculación curricular.
Se vincula con el currículo aragonés, más en detalle con el segundo curso de la etapa de Bachillerato, en la asignatura de Física.\
Se trabajan los siguientes criterios de evaluación, asociados a las competencias específicas:\
#set par(leading: 1em)
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.1*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Utilizar las teorías, principios y leyes que rigen los procesos físicos más importantes, considerando su base experimental y desarrollo matemático en la resolución de problemas, para reconocer la Física como una ciencia relevante implicada en el desarrollo de la tecnología, de la economía, de la sociedad y la sostenibilidad ambiental._]),
  [1.1. Reconocer la relevancia de la Física en el desarrollo de la ciencia, tecnología, la economía, la sociedad y la sostenibilidad ambiental, empleando adecuadamente los fundamentos científicos relativos a esos ámbitos.],
)
//
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.2*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Adoptar los modelos, teorías y leyes aceptados de la Física como base de estudio de los sistemas naturales y predecir su evolución para inferir soluciones generales a los problemas cotidianos relacionados con las aplicaciones prácticas demandadas por la sociedad en el campo tecnológico, industrial y biosanitario._]),
  [2.1. Analizar y comprender la evolución de los sistemas naturales, utilizando modelos, leyes y teorías de la Física.\
2.2. Inferir soluciones generales a problemas generales a partir del análisis de situaciones particulares y las variables de que dependen.\
2.3. Conocer aplicaciones prácticas y productos útiles para la sociedad en el campo tecnológico, industrial y biosanitario, analizándolos en base a los modelos, las leyes y las teorías de la Física.
],
)
// 
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.5*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Aplicar técnicas de trabajo e indagación propias de la Física, así como la experimentación, el razonamiento lógico-matemático y la cooperación, en la resolución de problemas y la interpretación de situaciones relacionadas, para poner en valor el papel de la Física en una sociedad basada en valores éticos y sostenibles._]),
  [5.3. Valorar la Física, debatiendo de forma fundamentada sobre sus avances y la implicación en la sociedad desde el punto de vista de la ética y de la sostenibilidad.],
)
// 
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Competencia Específica CE.F.6*]),
  table.cell(align: left,fill: blue.lighten(85%),[_Reconocer y analizar el carácter multidisciplinar de la Física, considerando su relevante recorrido histórico y sus contribuciones al avance del conocimiento científico como un proceso en continua evolución e innovación, para establecer unas bases de conocimiento y relación con otras disciplinas científicas._]),
  [6.1. Identificar los principales avances científicos relacionados con la Física que han contribuido a las leyes y teorías aceptadas actualmente en el conjunto de las disciplinas científicas, como las fases para el entendimiento de las metodologías de la ciencia, su evolución constante y su universalidad.],
)
En lo que respecta a los saberes básicos, vemos principalmente una referencia al bloque A:
#table(
  columns: 1,
  table.cell(align: center, fill: blue.lighten(60%),[*Saber Básico A: Campo Gravitatorio*]),
  table.cell(align: left,fill: blue.lighten(85%),[_La gravitación es una de las cuatro fuerzas o interacciones fundamentales del Universo conocidas hasta ahora, siendo en este curso el primer momento en el que se realiza su estudio formal desde el punto de vista de las fuerzas y de los campos. Así, se puede presentar el concepto de campo gravitatorio como aquel que permite encajar las piezas sueltas de la mecánica clásica relacionadas con la cinemática, la dinámica y la energía, vistas en cursos anteriores, dando respuesta matemática a afirmaciones que hasta ahora habían quedado sin una respuesta formal._]),
  table.cell(align: center,fill: gray.lighten(60%),[_Conocimientos, destrezas y actitudes._]),
  [Determinación, a través del cálculo vectorial, del campo gravitatorio producido por un sistema de masas. Efectos sobre las variables cinemáticas y dinámicas de objetos inmersos en el campo.],
)
#set par(leading: 1.5em)