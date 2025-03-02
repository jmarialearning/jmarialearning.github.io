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
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad aplicativa 1. Situación de aprendizaje.*])
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
= Construcción de la situación de aprendizaje.
El desafío que se ha escogido es el siguiente:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[Identificar los diferentes aspectos relacionados con el consumo responsable, valorando sus repercusiones sobre el bien individual y el común, juzgando críticamente las necesidades y los excesos y ejerciendo un control social frente a la vulneración de sus derechos.]
)
Se escoge la asignatura de _Cultura Científica_ en 4º de la ESO en una clase de 20 personas. Se especifica a continuación cómo se articulará la situación de aprendizaje.\
La situación de aprendizaje que se crea tiene como objetivo concienciar del consumo responsable y del impacto de los diferentes estados de creación de un bien de equipo a nivel ambiental.\
== Sesión 1.
Se iniciará la situación de aprendizaje mediante una sesión en la que se describirá el proyecto que se va a realizar. En grupos base de 4 integrantes, se pedirá al alumnado que elija un objeto de entre una batería previamente seleccionada por el docente. La selección se realiza con el objeto de acotar los objetos para permitir que dicha investigación sea más sencilla. El docente ha de asegurarse que dicha información se encuentre en la red. En concreto, se pretende que el alumnado encuentre los siguientes conceptos:
- Dónde se ha ensamblado el objeto.
- Qué materiales, compuestos o elementos utiliza.
- Dónde se encuentran esos materiales. Intentaremos realizar la distinción entre compuestos naturales o sintetizados en laboratorio.
A partir de este análisis, pretendemos que el alumnado detecte cuáles son las trazas de los diferentes elementos necesarios para el objeto, que quedarán anotadas en un documento parecido al que se adjunta a tal efecto. // Adjuntar documento aquí.
== Sesión 2.
Después de lo realizado en la primera sesión, en la que se trabajaron los antecedentes y el conocimiento general del hilo conductor del proyecto, se entra en materia de análisis más compleja en la que se trabajarán los conceptos de física y química asociados al cuarto curso de la ESO. Partiremos, para empezar, de lo que el alumnado creó en la sesión anterior. Mediante una dinámica _mayéutica_ de inducción trabajaremos con el alumnado estos conceptos. El profesorado propondrá preguntas como:
- ¿Cómo llega el producto a las tiendas? ¿Qué vías o medios de transporte se ven involucrados?
Pretendemos después que el alumnado realice un análisis del impacto de los objetos desde que se comienzan a manufacturar hasta que llegan a nuestras ciudades. Realizaremos esto en grupos base de 4 miembros mediante una dinámica inductiva a través de preguntas.\
Deberá el alumnado escoger su objeto y la forma de transporte logístico nacional o internacional. Solicitaremos que el alumnado obtenga el consumo de combustible y el impacto en lo que a emisiones a la atmósfera respecta de dicho viaje. Además, solicitaremos al alumnado que estime los beneficios del viaje en el plano económico.\
Pretendemos, con esto, que el alumnado detecte por qué las empresas deslocalizan la producción en aras de mayores beneficios.
== Sesión 3.
En esta sesión, una vez trabajados estos conceptos, pretendemos que el alumnado reflexione acerca de diferentes posibilidades para consumir de forma responsable. Realizaremos una sesión en la que los grupos creados en el día anterior trabajarán diferentes formas de comprar de forma responsable, así como los beneficios de la compra en comercios de proximidad. Se propondrá un desafío como el que a continuación se expone:
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  text(font: "Times New Roman")[Supón que quieres comprar unos pantalones para una fiesta próxima. Puedes comprarlos por InterNET o en un comercio físico. Dos equipos deberéis articular un debate con posturas opuestas. En un caso, decidiréis y apostaréis por comprar en las plataformas de comercio en línea. En el otro, preferiréis acudir a una tienda física. Escoged cuidadosamente los argumentos e intentad prever qué se puede refutar en los mismos.]
)
Preparado el debate, se realizará y se concluirá de la siguiente manera. De forma individual se pedirá al alumnado que especifique cómo se puede mejorar el consumo de productos de proximidad y que ponga en común realizando la dinámica de 1-2-4 con el grupo base. Primero, se pone en común con la persona de codo y después con todo el grupo.\
Se especificarán las conclusiones obtenidas en gran grupo, en último término.
= Vinculación curricular de la situación.
Se vinculará, mediante tabla, las competencias, criterios y saberes básicos para la asignatura de _Cultura Científica_.
#set par(leading: 1em)
#table(
  columns: 1,
  align: horizon,
  table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 2*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Identificar, localizar y seleccionar información, contrastando su veracidad, oragnizándola y evaluándola críticamente para resolver preguntas relacionadas con las ciencias y con su impacto en la vida cotidiana y en el desarrollo de la sociedad_],
  [2.1. Resolver cuestiones y profundizar en aspectos relacionados con los saberes del ámbito de la ciencia localizando, seleccionando, 
organizando y analizando críticamente la información de distintas fuentes citándolas con respeto por la propiedad intelectual.\
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 3*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Interpretar y transmitir información y datos científicos, contrastando previamente su veracidad, y argumentar sobre ellos utilizando diferentes 
formatos y utilizando lenguaje verbal o gráfico apropiado, para adquirir y afianzar conocimientos y analizar conceptos y procesos del entorno 
social y cultural_],
  [3.1. Analizar conceptos y procesos relacionados con los saberes científicos interpretando información en diferentes formatos (modelos, 
gráficos, tablas, diagramas, fórmulas, esquemas, símbolos, páginas web...), manteniendo una actitud crítica, obteniendo conclusiones y 
formando opiniones propias fundamentadas. \
3.2. Facilitar la comprensión y análisis de opiniones propias fundamentadas y de información relacionada con los saberes del ámbito de las 
ciencias, transmitiéndola de forma clara y rigurosa utilizando la terminología y el formato adecuados (modelos, gráficos, tablas, vídeos, 
informes, diagramas, fórmulas, esquemas, símbolos o contenidos digitales).\ 
3.3. Analizar y explicar fenómenos científicos representándolos mediante el diseño y la realización de modelos y diagramas, utilizando, cuando 
sea necesario, los pasos del diseño de ingeniería (identificación del problema, exploración, diseño, creación, evaluación y mejora. 
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 4*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Utilizar el razonamiento y el pensamiento computacional, para resolver problemas o dar explicación a procesos de la vida cotidiana relacionados con la ciencia, analizando críticamente las respuestas y soluciones y reformulando el procedimiento, si fuera necesario._],
  [4.1. Resolver problemas o dar explicación a procesos científicos utilizando conocimientos, datos e información aportados, el razonamiento lógico, el pensamiento computacional o recursos digitales. 
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 5*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Utilizar de forma crítica, eficiente y segura plataformas digitales y recursos variados, tanto para el trabajo individual como en equipo, para 
fomentar la creatividad, el desarrollo personal y el aprendizaje individual y social, mediante la consulta de información, la creación de 
materiales y la comunicación efectiva en los diferentes entornos de aprendizaje._],
  [5.2. Trabajar de forma versátil con medios variados, tradicionales y digitales, en la consulta de información y la creación de contenidos, 
seleccionando y empleando con criterio las fuentes y herramientas más fiables y desechando las menos adecuadas para la mejora del aprendizaje propio y colectivo.
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 6*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Utilizar las estrategias propias del trabajo colaborativo que permitan potenciar el crecimiento entre iguales como base emprendedora de una 
comunidad científica crítica, ética y eficiente, para comprender la importancia de la ciencia en la mejora de la sociedad, las aplicaciones y 
repercusiones de los avances científicos, la preservación de la salud y la conservación sostenible del medio ambiente._],
  [6.1. Establecer interacciones constructivas y coeducativas emprendiendo actividades de cooperación e iniciando el uso de las estrategias 
propias del trabajo colaborativo, como forma de construir un medio de trabajo eficiente en la ciencia.
],
//
table.cell(
    align: center,
    fill: blue.lighten(60%),
  )[*Competencia Específica 7*],
  table.cell(
    align: center,
    fill: blue.lighten(85%),
  )[_Analizar los efectos de determinadas acciones sobre la salud, el medio ambiente natural y social y el patrimonio cultural, basándose en los 
fundamentos científicos, para promover, adoptar y valorar hábitos que mejoren la salud individual y colectiva, eviten o minimicen los impactos 
medioambientales negativos, sean compatibles con un desarrollo sostenible y permitan mantener y mejorar el patrimonio cultural._],
  [7.1. Relacionar con fundamentos científicos la preservación de la biodiversidad, la conservación del medio ambiente, la protección de los 
seres vivos del entorno, el desarrollo sostenible, la calidad de vida y el patrimonio cultural.\
7.2. Proponer y adoptar hábitos sostenibles analizando de una manera crítica las actividades propias y ajenas y basándose en los propios 
razonamientos, conocimientos adquiridos e información disponible.\
7.3. Evaluar los efectos de determinadas acciones individuales sobre el organismo y el medio natural y social y proponer hábitos saludables y 
sostenibles basados en los conocimientos adquiridos y la información disponible.
],
)
Además de las competencias y criterios, podemos definir también los saberes básicos para la programación, a saber:
- Bloque D: Ciencia y futuro: contribución a los ODS.
- Bloque B: Ciencia y comunicación.
- Bloque C: La repercusión de la ciencia.
En lo referente a las competencias clave y al perfil de salida podemos nombrar los diferentes descriptores operativos, a saber:
- Competencia en Comunicación Lingüística: descriptores CCL1, CCL2, CCL3, CCL5.
- Competencia STEM: descriptores STEM2, STEM4.
- Competencia Digital: descriptores CD1, CD2, CD3.
- Competencia Personal, Social y Aprender a Aprender: descriptores CPSAA1, CPSAA3, CPSAA5.
- Competencia Ciudadana: descriptores CC3, CC4.
- Competencia Emprendedora: descriptores CE1, CE3.