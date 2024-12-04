#set document(
  title: ["Actividad aplicativa 1 Complementos"],
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
#outline(
  indent:auto
)
#pagebreak()
#set heading(numbering: "1.")
#set page(numbering: "1")
#set par(leading: 1.5em)
#counter(page).update(1)
= Diseño de una propuesta didáctica a partir del texto histórico.
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
La experiencia nuestra nos dicta que la bola caerá antes, lo cual concuerda con lo que Aristóteles dijo y nos transporta a la edad Media. Dicha experiencia no se equivoca *en este caso*.\
En esta actividad se solicita investigar acerca del fenómeno de la caída de objetos detectando qué ocurre en el caso propuesto para que se cumpla lo que Aristóteles definió. Para ello, se proporcionan varias preguntas:
- ¿De qué depende que un objeto caiga al suelo si se deja libre?
- ¿Esas relaciones de dependencia sirven en todo el _cosmos_?
- Comprueba, intuitivamente, si las relaciones son directa o inversamente proporcionales. Genera una fórmula que describa cómo cambiaría la velocidad en función del tiempo para los objetos en caída libre.
Como pista, se explicita que David Scott, en el transcurso de la misión lunar Apollo 15, realizó el experimento de Stevin, que se grabó en vídeo.
#figure(caption: "Dave Scott tirando una pluma y un martillo en la Luna.",image("hammer.gif", format: "gif",))
- ¿Qué ocurre en la Luna para que pase esto?