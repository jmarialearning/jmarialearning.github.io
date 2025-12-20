#set document(
  title: [Laboratorio Teoría de Campos],
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
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad de laboratorio*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur.\
  Curso 2025-2026.\
  Universidad Internacional de La Rioja.\
  Teoría de campos.\
  Grado en Física.
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
#set par(leading: 1.5em)
= Ejercicio 1
#show link: underline
Se encuentra la resolución en este enlace: https://trinket.io/glowscript/70b35cd77599
= Ejercicio 2
== Caso elástico
Para el caso elástico, en la animación se ve como la bola roja rebota, perdiendo ligera velocidad, que gana la otra partícula. La apreciación es casi imperceptible por la diferencia de masas entre las partículas.
== Caso inelástico
En este caso, la bola roja no puede mover a la azul, pero al no conservarse la energía cinética, no rebota la bola roja, sino que se incrusta en la azul, quedando después inmóviles las dos esferas.
= Ejercicio 3
En este caso la bola roja incrementa su posición inicial vertical pero no lleva la misma dirección que la otra esfera. Sin embargo, al colisionar no se aprecia diferencia con la colisión anterior. Modificando las masas, queda claro que el modelo no es realista, al no modificar la bola B su posición vertical.
= Ejercicio 4
La función `norm()` retorna un vector unitario en la dirección y sentido del que entre como argumento. En este caso, hablamos de el vector `rrel`. Por otro lado el método `.dot()` computa el producto escalar entre el momento del centro de masas de cada esfera y el unitario de la distancia relativa. Cuando el choque es elástico vemos que al momento lineal se le restan 2 sustraendos. Esto depende del coeficiente de restitución. El sustraendo no es más que un vector en la dirección y sentido de `rrel` con módulo igual a la proyección en el eje que une los centros del momento lineal de la partícula.
= Ejercicio 5
Se puede deducir esto por que en el código el 2 queda sustituido por la expresión $(1+"e")$, donde $"e"$ es el _coeficiente de restitución_. Como en un choque inelástico $"e" = 1$, entonces se puede escribir un factor 2, tal y como vemos en las mencionadas líneas.\
Por otro lado, en el histograma vemos la distribución de Maxwell-Boltzmann. Sabemos que esta distribución corresponde a la función dependiente de la velocidad:
$ f(v) = 4 pi (frac(m,2 pi k T))^frac(3,2) dot v^2 e^frac(-m v^2,2k T) $
Donde $T$ es la temperatura absoluta y $k$ es la constante de Boltzmann. Es, entonces, comprobable que cuanto más aumente la temperatura, menos pronunciada será la curva. En otras palabras, a mayor temperatura, el máximo de partículas que alcanzan una velocidad determinada se alcanza a una velocidad más alta.
#figure(
  image("maxwell.png"),
  caption: "Ejemplo de distribución de Maxwell-Boltzmann a diferentes velocidades. Nótese la dependencia del máximo con la velocidad."
)
