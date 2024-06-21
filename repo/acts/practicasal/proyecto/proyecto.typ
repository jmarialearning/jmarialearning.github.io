#set document(
  title: ["Proyecto de prácticas de mención de Audición y Lenguaje"],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto)
)
#set par(
  justify: true,
)
#show figure.caption: emph
#set text(
  font: "Times New Roman",
  size: 12pt,
  hyphenate: auto,
  lang: "es",
  
)
#set page(
  paper: "a4",
  margin: (left: 3cm, right: 3cm, top: 3cm, bottom: 3cm)
)
#align(top+center,[
  #image(
    "../img/logoUZ.png",
    width: 80%
  )
])

#align(horizon+center, text(20pt, hyphenate: false)[
  *Proyecto de prácticas de mención de Audición y Lenguaje*
])
#align(bottom+right,text(18pt)[
  Jesús María Mora Mur.\
  Curso 2023-2024.\
  Universidad de Zaragoza.\
  Centro educativo: CEIP Pedro I\
  Tutora del colegio: Eva Les Gran.\
  Tutora de la Universidad: Charo Tobeña Arasanz.
])
#pagebreak()
#outline(
  indent: auto
)
#pagebreak()
#set heading(numbering: "1.")
#set page(numbering: "1")
#set par(leading: 1.5em)
#counter(page).update(1)
= Planteamiento y justificación de la propuesta a desarrollar. <littera>
El proyecto que se ha desarrollado en estas prácticas se ha realizado con dos alumnos de sexto curso de educación primaria para el área de lengua. Estos dos estudiantes tienen unas casuísticas que se detallan en la @Destinatarios[sección] del presente documento. Ante una carencia observada en la comprensión inferencial de las situaciones se ha decidido proponer tres actividades de inferencias en dos sesiones de intervención, gradadas en dificultad, de forma que exista un modelo de soporte de la autonomía, en el que el maestro guía y son los estudiantes los que contestan sin mucha ayuda. Sin embargo, esto se ha flexibilizado para adecuar el contenido nuevo a los estudiantes.\
Cabe destacar que ante las carencias observadas en la estructuración de la frase, se han introducido intervenciones en este aspecto tanto a nivel oral como escrito.\
Según el estudio de #cite(<rios_gallardo_estimulacion_2015>, form: "prose"), cuando hay discapacidad intelectual, es posible adquirir aprendizajes y conseguir que perduren por largo tiempo. Por ende, se propone trabajar contenido nuevo con ellos. Por otro lado, hemos de tener en cuenta que cuanto más corta sea la frase que queremos que se infiera (en este caso), mejores resultados obtendremos #cite(<tavares_sanchez-monge_efectos_2016>).\
La discapacidad auditiva profunda con la cual trabajamos ha de ser tenida en cuenta también para diseñar las intervenciones. Tal y como especifican #cite(<santiago_pardo_impacto_2021>, form: "prose"), las mayores carencias de los alumnos con discapacidad auditiva suelen estar en la morfosintáxis y no en el vocabulario. Sin embargo, nuestro caso tuvo una implantación muy tardía y además es árabe, con lo que el vocabulario también se ve afectado. La falta de una detección precoz supone un problema, según especifican #cite(<jane_checa_importancia_2011>, form: "prose"). Por otro lado, la falta de vocabulario en estudiantes con incorporación tardía al sistema educativo es clara, así como sus dificultades para adquirir diferentes componentes lingüísticos #cite(<ahmed_azzouz_estudio_2017>).
= Objetivo general y específicos. 
== Objetivo general.
Nos marcamos el siguiente objetivo como _general_:
- Adquirir los principios de una comprensión no literal de las situaciones.
== Objetivos específicos.
Detallando el objetivo general, se proponen los siguientes, más _específicos_:
- Deducir qué ha ocurrido en una situación vistas las consecuencias.
- Deducir sentimientos o emociones a partir de una imagen.
- Comprender el concepto de _campo semántico_ y aplicarlo para clasificar palabras.
= Destinatarios. <Destinatarios>
Los destinatarios son dos alumnos de sexto curso de Educación Primaria, cuyos diagnósticos especificamos a continuacion.
+ J., alumno con discapacidad intelectual leve. (317)
+ M. , alumno con hipoacusia profunda. (CIE-11: AB51.1 y XK9J)
En lo que se refiere al alumno con hipoacusia, es habitual que con esa identificación sea complicado acceder a la palabra hablada, más si cabe teniendo en cuenta la nacionalidad árabe del chico. Sin embargo, el niño ha conseguido acceder al habla y lee mecánicamente. La cuestión que genera dificultad no es la mecánica de la lectoescritura y el habla, sino la comprensión que es capaz de realizar a partir de los procesos mecánicos. Se detecta que es poca y difícil, pues aun con la presencia de un doble implante coclear con rehabilitación en el SEDEA y la utilización de equipos de FM, las carencias en vocabulario del niño son más que aparentes. Es ciertamente costoso que el alumno exprese diferentes cuestiones cotidianas o que expanda su vocabulario en tanto en cuanto las dificultades para con la discriminación auditiva son más que palpables.\
Por otro lado, el alumno con discapacidad intelectual presenta dificultades palpables en la integración de la información en memoria, así como la gestión de su memoria de trabajo y ciertos aprendizajes motores. La discapacidad intelectual leve que presenta le provoca dificultades para que la información permanezca almacenada, pero la buena estimulación que realiza la familia y el gran contexto de aprendizaje que tiene le permiten tener más vocabulario y por tanto más conexiones neuronales, que permiten un aprendizaje más profundo que con M.\
Los dos estudiantes tienen sendas ACS con curso destino siendo el tercero de Educación Primaria.\
== Vinculación curricular.
Se expone a continuación la vinculación curricular de la propuesta realizada, atendiendo a la ORDEN ECD/1112/2022, de 18 de julio, por la que se aprueban el currículo y las características de la evaluación de la Educación Primaria y se autoriza su aplicación en los centros docentes de la Comunidad Autónoma de Aragón.
=== Área de Lengua Castellana y Literatura.
#table(
  columns: 1,
  table.cell([*Criterios de calificación asociados a la CE.LCL.2*], align: center, fill:blue.lighten(60%)),
  table.cell([_Comprender e interpretar textos orales y multimodales identificando el sentido general y la información más relevante, valorando con ayuda aspectos formales y de contenido básicos para construir conocimiento y responder a diferentes necesidades comunicativas._], fill:blue.lighten(85%)),
  [2.1. Comprender el sentido de textos orales y multimodales sencillos, reconociendo las ideas principales, los mensajes explícitos y los mensajes implícitos más sencillos, y progresando, de manera acompañada, en la valoración crítica del contenido y de los elementos no verbales elementales.],
  table.cell([*Criterios de calificación asociados a la CE.LCL.3*], align: center, fill:blue.lighten(60%)),
  table.cell([_Producir textos orales y multimodales con coherencia, claridad y registro adecuados para expresar ideas, sentimientos y conceptos; construir conocimiento; establecer vínculos personales; y participar con autonomía y una actitud cooperativa y empática en interacciones orales variadas._], fill:blue.lighten(85%)),
  [3.1. Producir textos orales y multimodales coherentes, con planificación acompañada, ajustando el discurso a la situación comunicativa y utilizando recursos no verbales básicos.\
3.2. Participar en interacciones orales espontáneas o regladas, respetando las normas básicas de la cortesía lingüística e iniciándose en estrategias de escucha activa.],
table.cell([*Criterios de calificación asociados a la CE.LCL.4*], align: center, fill:blue.lighten(60%)),
  table.cell([_Comprender e interpretar textos escritos y multimodales, reconociendo el sentido global, las ideas principales y la información explícita, y realizando con ayuda reflexiones elementales sobre aspectos formales y de contenido, para adquirir y construir conocimiento y responder a necesidades e intereses comunicativos diversos._], fill:blue.lighten(85%)),
  [4.1. Leer de manera silenciosa y en voz alta textos escritos y multimodales sencillos, identificando el sentido global y la información relevante e integrando, de manera acompañada, la información explícita.\
4.2. Analizar, de manera acompañada, el contenido y aspectos formales y no verbales elementales de textos escritos y multimodales, valorando su contenido y estructura e iniciándose en la evaluación de su fiabilidad.],
table.cell([*Criterios de calificación asociados a la CE.LCL.5*], align: center, fill:blue.lighten(60%)),
  table.cell([_Producir textos escritos y multimodales, con corrección gramatical y ortográfica básicas, secuenciando correctamente los contenidos y aplicando estrategias elementales de planificación, redacción, revisión y edición para construir conocimiento y dar respuesta a demandas comunicativas concretas._], fill:blue.lighten(85%)),
  [5.1. Producir textos escritos y multimodales sencillos y coherentes, en distintos soportes, seleccionado el modelo discursivo que mejor responda a cada situación comunicativa, iniciándose en el uso de las normas gramaticales y ortográficas más sencillas y progresando, de manera acompañada, en la movilización de estrategias sencillas, individuales o grupales, de planificación, redacción, revisión y edición.],
  table.cell([*Criterios de calificación asociados a la CE.LCL.9*], align: center, fill:blue.lighten(60%)),
  table.cell([_Reflexionar de forma guiada sobre el lenguaje a partir de procesos de producción y comprensión de textos en contextos significativos, utilizando la terminología elemental adecuada para iniciarse en el desarrollo de la conciencia lingüística y mejorar las destrezas de producción y comprensión oral y escrita._], fill:blue.lighten(85%)),
  [9.2. Revisar y mejorar los textos propios y ajenos y subsanar algunos problemas de comprensión lectora, de manera acompañada, a partir de la reflexión metalingüística y usando la terminología básica adecuada.],
)
En lo que se refiere a los saberes básicos:
#table(
  columns: 1,
  table.cell([*B. Comunicación.*], align: center, fill:blue.lighten(60%)),
  table.cell([_Conocimientos, destrezas y actitudes._], align: center, fill: gray.lighten(50%)),
  table.cell([*B.1. Saberes comunes.*\
    - Estrategias para la coherencia y la cohesión.
    - Elementos básicos de contenido (tema, fórmulas fijas, léxico) y forma (estructura, formato, título e imágenes).]),
[*B.2. Comunicación e interacción oral:*\
    - Pronunciación y entonación adecuadas.
    - Construcción y comunicación de conocimiento mediante la planificación y producción acompañada de textos orales y multimodales sencillos.
    - Estrategias de identificación e interpretación del sentido global del texto y de integración de la información explícita de textos sociales orales y multimodales sencillos.],
[*B.3. Comprensión lectora:*\
    - Lectura compartida y expresiva con entonación y ritmo progresivamente adecuados al nivel cognitivo.
    - Elementos gráficos y paratextuales progresivamente complejos que favorecen la comprensión antes, durante y después de la experiencia lectora.
    - Estrategias básicas de comprensión del sentido general y de integración de manera acompañada de la información explícita de textos de fuentes documentales diversas en procesos de comprensión y producción de textos escritos.],
[*B.4. Producción escrita:*
    - Presentación cuidada y aplicación de las normas ortográficas básicas.
    - Cuidado en la presentación de las producciones escritas.
    - Modelos y estrategias elementales, individuales o grupales, de planificación, redacción, revisión y edición de textos escritos y multimodales sencillos, en diferentes soportes, con distintos propósitos comunicativos.],
table.cell([*D. Reflexión sobre la lengua y sus usos en el marco de propuestas de producción y comprensión de textos orales, escritos o multimodales*], align: center, fill:blue.lighten(60%)),
  table.cell([_Conocimientos, destrezas y actitudes._], align: center, fill: gray.lighten(50%)),
  table.cell([- Aproximación a la lengua como sistema con distintos niveles: sonidos y letras, palabras, oraciones y textos. Observación y comparación de unidades comunicativas básicas.
    - Procedimientos elementales de adquisición de vocabulario. Similitudes y diferencias de forma y significado entre palabras de la misma familia léxica o semántica.
    - Los signos de puntuación como mecanismos para organizar el texto escrito y para expresar la intención comunicativa.])
)
= Descripción de las actividades realizadas.
Las actividades se han realizado teniendo en cuenta que se introduce contenido nuevo para los estudiantes. Así pues, se ha buscado gradarlas en dificultad con el objetivo de permitir una progresión de los aprendizajes que pretendemos se alcancen en la intervención.
== Actividad 1.
En la primera actividad se han propuesto una serie de estímulos para trabajar las comprensiones inferenciales y la estructuración de la frase. Se ha preparado para ello un _Genially_ en el que se han visualizado diferentes estímulos visuales, para permitir un mejor trabajo con el alumnado con discapacidad auditiva. He aquí una imagen de los estímulos:
#figure(
  image(
  "img/infer1.png",
  width: 100%
),
caption: "Ejemplo de la primera actividad"
) <figura1>
=== Objetivos. 
Los objetivos de la sesión son los siguientes:
- Comprender e integrar la metodología de la intervención.
- Reconocer diferentes elementos cotidianos y denominarlos correctamente.
- Caracterizar atributos de ciertos objetos.
- Reconocer atributos comunes a distintos objetos.
=== Desarrollo de la sesión.
En primer lugar, se explicó qué se iba a realizar ese día y la forma de trabajar de la intervención. Una vez se aseguró la comprensión de las órdenes, se comenzó la actividad. Había 8 estímulos, cuatro para cada estudiante. Se presentaban varias opciones para responder a la pregunta _¿Qué necesito?_. Todas las preguntas, como la que vemos en la @figura1[figura], tienen varias respuestas correctas.\
Se pedían varias cuestiones:
+ Marcar correctamente qué se necesita para cada acción.
+ Realizar una frase del tipo _Para_ [...] _necesito_ [...]. Se da esta plantilla para facilitar la estructura, objeto principal de esta escritura y verbalización.
+ Enumerar todos los elementos que aparecen en la transparencia (acción y opciones), justificar por qué se han elegido o dejado y comprobar si hay algunos elementos que compartan propiedades comunes. 
La dificultad que supone la presencia en el aula de dos niveles de vocabulario, comprensión y expresión oral y escrita ha supuesto un desafío claro. Esta cuestión se ha intentado solventar haciendo partícipe a los dos estudiantes en cada estímulo, preparando preguntas adecuadas a las diferentes cuestiones que se pretenden trabajar con cada uno de ellos.\
En lo que al desarrollo de la sesión se refiere, esta siguió el planteamiento previsto. No es, eso sí, menos cierto que visto el comportamiento en una observación anterior se optó por reducir la intensidad de esta primera actividad temiendo que no surtiese el efecto deseado. El comportamiento mencionado (pasivo y con dificultades serias en el procesamiento de la información) demostró ser coyuntural, no mostrándose tal conducta en la sesión de intervención. Así pues, se adecuó la intervención sucesiva en consecuencia.\
En líneas generales, los estudiantes respondieron correctamente a los estímulos y pudieron generar las frases requeridas. He aquí la producción de M.:
#figure(
  image(
  "img/mo.png",
  width: 100%
),
caption: "Frases producidas por M."
) <m>
También tenemos la producción de J.:
#figure(
  image(
  "img/jo.png",
  width: 100%
),
caption: "Frases producidas por J."
) <j>
Podemos ver aquí que J. es más desorganizado y ha tenido múltiples problemas para seguir la estructura de la frase. En otro orden de cosas, M. organiza correctamente las frases y mantiene la estructuración cual el modelo. Cuando interpelamos a J. acerca de por qué no ha seguido la estructura relata que pretendía escribir la pregunta _¿Qué necesito?_ y la respuesta correspondiente. Así, modificamos con los correspondientes signos de interrogación.\
Por último, vemos carencias en morofosintaxis en M., como apuntábamos en la @littera[sección], según #cite(<ahmed_azzouz_estudio_2017>, form: "prose"). Nótese la incorrección \*una pasta, las dificultades en la escritura del vocablo _almohada_, la incorrección \*una comida y la no inclusión de un _se_ pronominal en \*lavar los dientes. Estos fallos se categorizan en diferentes errores:
- Sustantivos contables e incontables.
- Valores del se. Verbos pronominales.
- Fonema /l/ en posición inversa. 
Con respecto al último es curioso cuanto menos la dificultad en alumnado árabe, por lo común del artículo de presentación de sustantivos _al_ en esta lengua. Es posible explicar esto por sus dificultades auditivas.
== Actividad 2.
En esta segunda actividad, desarrollada en una sesión distinta se trabajó la diferencia entre comprensión literal e inferencial en tanto en cuanto, la comprensión literal es explícita en un texto o imagen, mientras que la inferencial no. Trabajaremos desde la oralidad a partir de imágenes.
=== Objetivos.
- Distinguir entre lo que se ve y lo que se intuye en una imagen. 
- Deducir acciones a partir de lo que se ve en una imagen.
- Describir detalladamente las imágenes propuestas.
=== Desarrollo de la sesión.
Se utilizó un corto espacio de tiempo para explicar en qué iba a consistir la sesión. Las preguntas son de dos tipos:
- Preguntas tipo _ojo_: visibles explícitamente al mirar la imagen.
- Preguntas tipo _lupa_: no visibles explícitamente pero deducibles a partir de las acciones que se ven en las imágenes.
#figure(
  image(
  "img/infer2.png",
  width: 100%
),
caption: "Ejemplo de la segunda actividad: preguntas explícitas"
) <figura2>
#figure(
  image(
  "img/infer3.png",
  width: 100%
),
caption: "Ejemplo de la segunda actividad: preguntas deducibles"
) <figura3>
Se volvieron a introducir diferentes estímulos (imágenes) para poder trabajar de forma alterna con los dos estudiantes. Además, se pidieron varias cuestiones:
+ Dar una respuesta correcta a la pregunta.
+ Justificar con detalle esa respuesta.
+ Describir la imagen que se veía en pareja.
La sesión transcurrió sin problemáticas de ningún tipo. Los alumnos comprendieron y realizaron correctamente las preguntas sobre las situaciones, tanto las explícitas como las deducibles. Cabe destacar que en las últimas hubo que proponer diferentes apoyos visuales para que el alumno con hipoacusia comprendiese qué es lo que pretendíamos. Además, hubo algunas en las que se dieron opciones o se recondujo una respuesta incorrecta, así como dar pistas acerca de dónde mirar. En cualquier caso quedaron cumplidos los objetivos de la sesión.\
Para la descripción fue necesario dar un patrón después de obtener discursos desorganizados de forma autónoma.
== Actividad 3.
En la tercera actividad, se preparó otro Genially en el que se preguntaba a qué se hacía referencia en una frase. Esto supone una actividad compleja para nuestro alumnado, que se propone después de dos actividades gradadas en dificultad convenientemente. Seguimos trabajando de forma oral.
=== Objetivos.
- Explicitar el objeto del que se habla.
- Comprender la información implícita en diferentes frases
=== Desarrollo de la sesión.
Después de explicar en qué iba a consistir la actividad, se introdujo el primer estímulo, con esta forma:
#figure(
  image(
  "img/infer4.png",
  width: 100%
),
caption: "Ejemplo de la tercera actividad"
) <figura4>
Hubo varios de estos estímulos en la actividad para los cuales se requiere:
+ Dar el objeto correcto.
+ Especificar por qué se ha escogido.
+ Definir por qué no se escogieron los otros.
+ Denominar todos los objetos y describirlos.
+ Dirimir si algunos objetos tienen atributos comunes
+ En su caso, especificar qué tienen los objetos en común.
Nótese la imperiosa necesidad de aumentar el vocabulario de los dos sujetos de intervención, siendo procedente introducir en la medida de lo posible nuevo vocabulario, sobre todo en M.\
La sesión se desarrolló sin problemas, aunque hubo que ayudar a los estudiantes en ciertos momentos para que obtuviesen las respuestas a todas aquellas cuestiones requeridas. Sin embargo, los estudiantes respondieron bien a las inferencias y se recurrió poco a la ayuda visual. Para permitir un mejor acceso a la información, se ayudó con gestos para que el niño con hipoacusia comprendiese qué se pedía.\
Con respecto a la categorización semántica, veamos un ejemplo con la siguiente transparencia:
#set text(hyphenate: false)
#figure(
  image(
  "img/infer5.png",
  width: 100%
),
caption: "Las tres posibles respuestas (barco, avión y helicóptero) son medios de transporte"
) <figura5>
#set text(hyphenate: auto)
Pretendemos que nos diga el alumnado lo que precisamente viene a especificar en su pie la @figura5[figura]. Podríamos hilar más fino (diciendo por ejemplo que todos esos medios pueden ser de transporte público), pero no es competencia de la intervención propuesta.
= Conclusiones.
A la vista del desempeño de los estudiantes en la intervención y la comparación entre las primeras observaciones de comprensión inferencial y la última tarea, se detecta una evolución positiva en nuestro estudiantado en lo que a la comprensión inferencial se refiere. Así pues, se considera que la intervención ha sido beneficiosa en el alumnado. La intervención transversal en el vocabulario y en su expansión también ha tenido cierta extrapolación al repertorio espontáneo de nuestro alumnado. Sin embargo, la estructuración de la frase no ha tenido excesivo efecto fuera de nuestra intervención.\
En suma, podemos considerar la intervención efectiva. Como limitaciones, quizá han existido errores de temporalización que no han permitido aprovechar al máximo la intervención. Además, podemos sumar también el hecho del final de curso que propicia cierto cansancio y hastío en nuestro alumnado. Esto se ha intentado evitar siguiendo una dinámica motivante, que salga de la rutina (puesto que también lo hacen en otras áreas) y que utilice nuevos elementos como la tecnologia digital y la interacción con ella.
#bibliography(
  "fuentes.bib",
  title: "5. Referencias.",
  style: "american-psychological-association"
)