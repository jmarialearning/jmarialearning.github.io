#import "@preview/quadrille:0.1.0": *
#set document(
    title: [Actividad 1 Economía],
    author: "Jesús María Mora Mur",
    date: datetime.today(offset: auto)
)
#set page(
  paper: "a4",
  margin: 1in,
)
#set par(justify: true)
#set list(indent: 1.5em)
#set heading(numbering: "1.")
#set text(
    font: "Times New Roman",
    size: 12pt,
    hyphenate: auto,
    lang: "es"
)
#align(top+center,[
    #image("../../../img/logounir.png", width: 60%)
])
#align(horizon+center,text(19pt, hyphenate: false)[*Actividad 1. Análisis del mercado de la vivienda*])
#align(bottom+right, text(15pt)[
    Jesús María Mora Mur\
    Curso 2026-2027\
    Universidad Internacional de La Rioja\
    Métodos físicos para la economía\
    Grado en física\
])
#pagebreak()
#set page(numbering: "1")
#set par(leading: 1em)
#counter(page).update(1)
#set par(leading: 1.5em)
= Análisis de la demanda.
En el pódcast que escuchamos acerca de la vivienda, los primeros instantes de emisión arrojan diferentes datos acerca de la compraventa de viviendas en España. Se especifica que se realizaron 61886 operaciones de compraventa de vivienda en el mes de septiembre de 2024. El entrevistado (Javier Ruiz) achaca este aumento de la demanda a diferentes factores, a saber:
- La bajada del Euríbor, principal índice de referencia para la tramitación de hipotecas a tipo variable. Si este índice baja, los créditos se abaratan. Además, las perspectivas del índice siguen siendo bajistas, lo cual sigue aumentando la demanda.
- Además de la buena coyuntura para el préstamo hipotecario, la demografía española también afecta al mercado de la vivienda, en tanto en cuanto se deben absorber los flujos migratorios que inmigran al territorio nacional. Los buenos datos macroeconómicos y las perspectivas de crecimiento empujan a ciertos grupos de población extranjera a dejar su país de origen en busca de un futuro mejor. Estos flujos migratorios no hacen sino aumentar la demanda de vivienda.
== Curva inicial de demanda
#figure(
    graph(
    x:(-9,9), y:(-1,6), scale: auto,
    fn(x => -x, [$D_0$], stroke: red),
    x-label: "Viviendas demandadas",
    y-label: "Precio de cada vivienda",
    axes: "edge",
    grid: false,
    ticks: none,
    fn(x => -x+3, [$D_1$], stroke: auto)
),
caption:[Curva  de demanda inicial $D_0$ y afectada $D_1$.]
)
Esta curva permite identificar la demanda inicial, $D_0$ y la demanda afectada por los factores especificados, $D_1$. Como vemos $D_1$, queda _totalmente desplazada a la derecha_, lo cual demuestra un aumento de la demanda, coincidiendo con lo que se relata en la grabación.
= Análisis de la oferta.
- La inversión en construcción de obra nueva es menor que antaño. Comparando en porcentaje con respecto a Producto Interior Bruto, se invierte un 6%, cuando en los años previos a la crisis (2007) se invertía hasta un 12%.
- Al no construir obra nueva, las operaciones se realizan casi en su totalidad (9 de cada 10) con inmuebles de segunda mano.
- Ello convierte a la vivienda en un bien escaso.
== Curva de oferta.
#figure(
    graph(
    x:(-9,9), y:(-1,6), scale: auto,
    fn(x => x , [$S_0$], stroke: red),
    x-label: "Viviendas ofertadas",
    y-label: "Precio de cada vivienda",
    axes: "edge",
    grid: false,
    ticks: none,
    fn(x => x+3, [$S_1$], stroke: auto)
),
caption: [Curva de oferta inicial $S_0$ y afectada $S_1$.]
)
Esta curva permite identificar la oferta inicial, $S_0$ y la oferta afectada por los factores especificados, $S_1$. Como vemos $S_1$, queda _totalmente desplazada a la izquierda_, lo cual demuestra una disminución de la oferta, coincidiendo también con lo que se relata en la grabación.
= Análisis del equilibrio.
== Curvas desplazadas $S_1$ y $D_1$.
#figure(
    graph(
    x:(-9,9), y:(-1,6), scale: auto,
    fn(x => -x +3, [$D_1$], stroke: red),
    points((0,3,$E_1$), mark: "square", stroke: olive),
    x-label: "Viviendas",
    y-label: "Precio de cada vivienda",
    axes: "edge",
    grid: false,
    ticks: none,
    fn(x => x+3, [$S_1$], stroke: blue)
),
caption: [Curvas afectadas de oferta y demanda $S_1$ y $D_1$ junto con el punto de equilibrio $E_1$.]
)
Según lo que se ha comprobado en los gráficos, tenemos que la demanda actual $D_1$ es mayor que la inicial $D_0$. Por ello estamos en una situación de *exceso de demanda*. Ello provoca pérdidas y ganancias a diferentes sectores de la población. Es elemental comparar los dos puntos de equilibrio en caso de mostrarlos ($E_0$ y $E_1$), detectando como el equilibrio actual implica el mismo número de viviendas por un precio mayor. En otras palabras, en el equilibrio actual, el precio de la vivienda ha ascendido. Así pues:
- Todas aquellas personas que posean bienes inmuebles que fueran comprados de acuerdo con lo que muestran $S_0$ y $D_0$, en el supuesto de la salida al mercado de dichos bienes para su compraventa, obtendrían previsiblemente, ganancias, obviando las depreciaciones fruto de deterioros no habituales del bien.
- Todas aquellas personas en situación contraria (que buscan inmuebles en el mercado para hacerse con su propiedad), de elegir esta situación, con la oferta $S_1$ y la demanda $D_1$, en lugar de la generada con oferta $S_0$ y demanda $D_0$, harían frente a mayores gastos, si bien no constituirían dichos gastos una pérdida directa.
Considerando, en el supuesto analizado, una corriente liberal, el mercado se regularía espontáneamente, manteniendo los precios una tendencia alcista hasta el punto de equilibrio por un exceso de demanda. Esto puede tener consecuencias graves a nivel social, al ser inasumible una subida de precios para ciertos sectores de la población, impidiendo por ello el acceso al bien.
= Análisis de soluciones.
#text(highlight(fill: yellow)[Falta todavía proponer las soluciones de pensamiento de las corrientes liberales e intervencionistas.])\
En las economías mixtas, los estados intervienen ante eventuales fallos de mercado. A este respecto, la intervención puede hacerse aumentando la construcción de vivienda protegida o rebajando la carga impositiva en la compra de una primera residencia. La contrapartida de la reducción de los impuestos en la compraventa de viviendas radica en el menor ingreso de dinero en las arcas públicas. En concreto, tres son los impuestos principales que, directa o indirectamente, aumentan el precio de la vivienda, a saber:
- El Impuesto de valor añadido (IVA), regulado por la Ley 37/1992. En la compra de nuevas viviendas, el comprador soporta el IVA que el vendedor (habitualmente quien promueve) deberá ingresar a la Hacienda Pública. El púnto séptimo del artículo 91.1 de dicha ley regula el tipo en el 10%. Dicho tipo queda reducido al 4% para viviendas de promoción pública o protección oficial, de acuerdo con el artículo 91.2 de la ley.
- El Impuesto de Trasmisiones Patrimoniales, que viene regulado por el Real Decreto Legislativo 1/1993 y cuya competencia queda transferida a las comunidades autónomas por ser tributos cedidos. En la comunidad autónoma aragonesa, se maneja un tipo imponible entre el 8 y el 10%. Las viviendas de protección oficial están exentas de la liquidación de este impuesto.