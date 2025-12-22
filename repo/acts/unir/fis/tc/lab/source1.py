Web VPython 3.2

### Que está haciendo este bloque de código
#### Genera el canvas y las gráficas de momento y energía cinética
canvas(background=color.white)
g1 = graph(xtitle="t",ytitle="momentoParticula",width=400,height=200)
fpA = gcurve(color=color.red)
fpB = gcurve(color=color.blue)
fpT = gcurve(color=color.green)
g2 = graph(xtitle="t",ytitle="K",width=400,height=200)
fKA = gcurve(color=color.red)
fKB = gcurve(color=color.blue)
fKT = gcurve(color=color.green)

### Que representan estos parámetros?
#### Representan la masa, el radio y el coeficiente de restitución para el choque.
m0 = 0.05
R = 0.01
e = 0.5


ballA = sphere(pos=vector(-4*R,0,0),radius=R, color=color.red,make_trail=True)
ballB = sphere(pos=vector(0,0,0),radius=R, color=color.blue,make_trail=True)

### Que magnitudes de las esferas se definen aquí abajo
#### Se definen la masa y el momento de las particulas
ballA.m = m0
ballB.m = m0
ballA.p = ballA.m*vector(0.05,0,0)
ballB.p = ballB.m*vector(0,0,0)

t = 0
dt = 0.001
contact = False

while t<4:
  rate(1000)
  
  rrel = ballB.pos - ballA.pos ###

### ¿Qué condición que se representa en este "if"? ¿Para qué se utiliza la varibale "contact"?
#### El módulo de la posición relativa entre esferas debe ser menor o igual a 2 radios para saber que ha habido colisión.
#### La variable contact se actualiza al final del bucle para que solo se ejecute la condicional una vez y no haya rebotes.
  if mag(rrel)<=2*R & contact == False: 
    mtot = ballA.m + ballB.m
    ptot = ballA.p + ballB.p
    
    ### ¿Qué transformación de sistema de coordenadas se hace aquí?
    #### Pasamos los momentos lineales con respecto a cada partícula para que estén referidos al Centro de Masas.
    pcmA = ballA.p-ptot*ballA.m/mtot 
    pcmB = ballB.p-ptot*ballB.m/mtot
    
    ### ¿Qué se hace aquí? ¿Qué tiene que ver con los momentos en el sistema centro de masas?
    #### Estamos actualizando el momento lineal después de la colisión. Según el coeficiente de restitución variará, aunque con signo opuesto al anterior al choque.
    pcmA = -e*pcmA
    pcmB = -e*pcmB
    
    ### ¿Y qué transformación se hace ahora aquí?
    #### Se deshace el cambio para volver a referir todo a cada partícula, en lugar de al centro de masas.
    ballA.p = pcmA+ptot*ballA.m/mtot 
    ballB.p = pcmB+ptot*ballB.m/mtot
    
    contact = True
    
 
  ### ¿Qué actualizamos aquí?
  #### La posición del cada particula. 
  ballA.pos = ballA.pos + ballA.p*dt/ballA.m
  ballB.pos = ballB.pos + ballB.p*dt/ballB.m
  
### ¿Qué "ploteamos"?
#### El momento lineal en el eje x de cada partícula
  fpA.plot(t,ballA.p.x)
  fpB.plot(t,ballB.p.x)
  
  ### ¿Qué se calcula y plotea aquí?
  #### Se calculan las energías cinéticas
  fpT.plot(t,ballA.p.x + ballB.p.x) #Suma de momentos lineales
  KA = mag(ballA.p)**2/(2*ballA.m)
  KB = mag(ballB.p)**2/(2*ballB.m)
  KT = KA+KB # Energía total
  fKA.plot(t,KA)
  fKB.plot(t,KB)
  fKT.plot(t,KT)
  
  t = t + dt ### Que tiene que ver esta linea con el blucle while?
  #### Se va aumentando el tiempo antes de evaluar nuevamente el while. Si es t < 4 el while se ejecutará. Si no, no.