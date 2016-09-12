#Clase del 25/08/16

#Crear Vectores
x <- vector(mode="numeric", length = 5L)
x

#Crear Vectores con la funcion c
x <- c(0.5, 0.6)
x
class(x)

x <- c(TRUE, FALSE)
class(x)

x <- c(TRUE, FALSE,T,F)
x
class(x)

x <- 5:10
x
class(x)

x <- 10:0
x

x <- c(1+2i,5,3+9i,-4-5i)
x
class(x)

x <- c("a","b","c","d")
x
class(x)

x <- c("a","b","c","d",e)
x
class(x)


#Mezcla de Objetos en un Vector
y <- c(1.7, "a") #caracter
y
class(y)

y <- c(TRUE,2) #numérico
y
class(y)

y <- c("a",TRUE) #caracter
y
class(y)

y <- c(TRUE, 10L, 8.5, 1+1i)
y
class(y)


#Orden de Coacción/cohersión explícita
#character
#complex
#numeric
#integer
#logical


#Coerción ecplícita
z <- 0:6
class(z)
z

as.numeric(z)
as.logical(z)
as.character(z)

z <- c(1+2i, 3+4i, 8, 0+3i)
as.logical(z)

z <- c(1+2i, 3+4i, 8+0i, 0+3i)
as.logical(z)

z <- c(1+2i, 3+4i, 8, 0+0i)
as.logical(z)

z <- c("Programación","Actuarial","III")
as.numeric(z)
as.logical(z)
as.complex(z)

#nos dice que es un valor faltante, no disponible.

#LISTAS (es como un vector, pero de vectores y cada uno tiene su propia clase)
x <- list(1,"a",TRUE,1+4i,1:100)
x
class(x)

#MATRICES
m <- matrix(nrow=2,ncol=3)
m

dim(m)
attributes(m)




#MATRICES

m <- matrix(nrow=2,ncol=3)
m

dim(m)
attributes(m)

#Cambio de dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m


#Crear una matriz con datos
m <- matrix(1:6,3,2)
m


m <- matrix(1:6,3,2,T)
m

m <- matrix(1:6,3,3,T)
m
class(m)
str(m)


dim(m) <- c(2,5)

#Agregar elementos a una matriz
x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

#Pega filas
m1 <- rbind(m,x)
m1

#Pega Columnas
m2 <- cbind(m,x)
m2

m1 <- rbind(m,y)
m1

m2 <- cbind(m,y)
m2


#Tambien se puede solamente poniendo cbind(...) o rbind(...) sin la asignacion (<-); 
#la diferencia es que con asignacion se guarda en la memoria y sin la asignacion se tendria q volver
#a llamar a la funcion


#la funcion vector, todos sus elementos son de la misma clase


#FACTORES
x <- factor(c("si","no","si","si","no","si","no"))
x
table(x)
unclass(x)

#levels sirve para cambiar el orden de los niveles
x <- factor(c("si","no","si","si","no","si","no"),levels=c("si","no"))
x
unclass(x)


x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)


#VALORES FALTANTES
#NA es un valor faltante, un valor vacio
#NAN significa que no es un no numero, no numerico generalmente aparece en una operacion matematica cuando se indefine
#todo nan es un na, pero no todo na es un nan

x <- c(1,2,NA,10,3)
is.na(x) #identifica cuales son los valores faltantes
is.nan(x)  #identifica cuales son los valores faltantes no numericos

x <- c(1,2,NAN,10,3)
is.na(x)
is.nan(x)

x <- c(1,2,NaN,10,3)
is.na(x)
is.nan(x)


#DATA FRAMES
#Permite almacenar, similar a una lista solo que aqui cada fila o columna puede tener una distinta clase
#Conjunto de listas, la unica condicion es q todas las listas tengan la misma longitud

x <- data.frame(Erick = 1:4, Lori= c(T,T,F,F))
x

x <- data.frame(Erick = 1:4, Lori= c(T,T,F,F)).
row.names(x) <- c("Primero","Segundo","Tercero","Cuarto")
x
nrow(x)
ncol(x)
attributes(x)

names(x) <- c("Yarely","Karen")  #Cambiar los nombres de las columnas
x


#Los nombre no son exclusivos de los data frames
x <- 1:3 #NULL
names(x)
names(x) <- c("Hugo","Paco","Luis")
x

x <- list(a=1:10,b=100:91,c=51:60)
x
names(x) <- c("Seq1","Seq2","Seq3")
x

m <- matrix(1:4,2,2)
m
attributes(m)
dimnames(m)
 dimnames(m) <- list(c("fil1","fil2"),c("col1","col2"))
 m
 

 m <- matrix(nrow=1:5,ncol=1:6)
 m
 
 m <- matrix(nrow=5,ncol=6)
 m
 dimnames(m) <- list(c(1,2,3,4,5),c("A","B","C","D","E","F"))
 m
 
 m <- matrix(NA,5,6)
 m
 dimnames(m) <- list(c(1:5),c("A","B","C","D","E","F"))
 m
 
 
 
 #read.table (Lectura de Datos)
 getwd()
 setwd("C:/Users/EILEEN/Desktop/Programación Actuarial lll") #session,  set working directory
 data <- read.csv("Datos_S&P.csv")
 data
 data <- read.table("Datos_S&P.csv",T,",")
 data
 
 data <- read.table("Datos_S&P.csv",F,",")
 data
 
 
 
 #Applay
 getwd()
 setwd("C:/Users/EILEEN/Desktop/Programación Actuarial lll") #session,  set working directory
 data <- read.csv("Datos_S&P.csv")
 data
 data <- read.table("Datos_S&P.csv",T,",",nrows=100)
 clases <- sapply(data,class)
 data <- read.table("Datos_S&P.csv",T,",",colClasses=clases)
 view(data)
 data
 clases
 
 
 
 #USO DE dput y dget
 y <- data.frame(a=1,b="a")
 y
 dput(y)  #Está describiendo a y
 dput(y,file="y.R")   # Esta guardando el objeto en el archivo y, formato r
 nueva.y <- dget("y.R")
 nueva.y
 y
 
 x <- "Programación Actuarial III"
 y <- data.frame(a=1,b="a")
 dump(c("x","y"),file="data.R")  # se pone entre comillas para pegar el onbeto x y no programacion actuarial ...
 rm(x,y)
 source("data.R")
 x
 y
 
 head(airquality)
 
 
 x <- head(airquality)
 dump(c("x"),file="headairqualityEileen.R")
 rm(x)
 source("headairqualityEileen.R")
 x
 
 
 
 
 con <- url("http://www.fcfm.buap.mx/","r")
 x <- readLines(con,7)
 x

 #Subcnjuntos, se utiliza el corchete sencillo para la extraccion de elementos, generalmente para dataframe
 x <- c("a","b","c","c","d","e")
 x
 x[1]   #se extraen los elementos 1 del vector x
 x[2]
 x[1:4]  #Se extrae una secuencia de elementos de x
 x[x>"b"]
 
 u <- x =="c"
 u
 x[u]
 
 
 #Subcnjuntos de listas
 x <- list(foo=1:4,bar=0.6)
 x
 x[1] #se extrae el primer elemento de la lista, este elemento es una lista que contiene una secuencia
 x[[1]]   #se extrae el primer elemento de la lista, este elemento es la secuencia en sí
 x$bar #se extrae un elemento por nombre
 x[["bar"]] 
 x["bar"]
 
 #la diferencia entre un corchete y 2 corchetes es q el primero extrae unna lista y el segundo lo extrae como secuencia
 #el primero conserva la clase de lo q esta sacando, el segundo conservala clase del elemnto
 #ambos tienen la capacidad de resolver operaciones
 # $ se parece al doble corchete, no puede resolver operaciones
 
 x <- list(foo=1:4,bar=0.6,baz="Hola")
 x[c(1,3)]
 
 x[[c(1,3)]] 
 
 
 x <- list(foo=1:4,bar=0.6,baz="Hola")
 name <- "foo"
 x[[name]]
 x$name
 x$foo
 
 
 #Se pueden extraer elementos de los elementos extraidos
 x <- list(a=list(10,12,14),b=list(3.14,2.81))
 x[[c(1,3)]] 
 x[[1]][[3]]
 x[[c(2,1)]]#primer elemento del segundo objeto
 
 #Extraccion de objetos de una matriz
 x <- matrix(1:6,2,3)
 x
 x[1,2] 
 x[2,1]
 x[1,]
 x[,2]
 
 x <- matrix(1:6,2,3)
 x
 x[1,2] #el resultado es un vector
 x[1,2,drop=FALSE] #con drop=false, se mantiene la dimension y el resultado sera una matriz
 
 x <- matrix(1:6,2,3)
 x
 x[1,] #si dejamos solamente el espacio el resultado sera solamente un valor
 x[1, ,drop=FALSE] #con drop=false, el resultado sera una matriz
 
 
 x <- list(aardvark=1:5)    #R puede encontrar el nombre de algunos objetos de manera
 x$a                        #parcial con $, tambien podria hacerlo con doble corchete,
 x[["a"]]                   #pero necesitariamos decir de forma explicita que queremos una coincidencia parcial
 x[["a",exact=FALSE]]       # solo funciona con el doble corchete, con uno no funciona
 
 
 #REMOVER VALORES FALTANTES
 airquality[1:6,] #exraelas primeras 6 filas y como tiene  , vacio, entonces son las filas completas
 completos <- complete.cases(airquality) #si  el registro de airquality esta completo devuelve TRUE, sino False
 completos
 airquality[completos,]  #extrae los valores completos, se le pone , para que ponga la fila completa, sin coma marca error
 airquality[completos,][1:6,]#extrae los datos completos de las primeras 6 filas
 airquality[1:6,][completos,]
 
 
 #OPERACIONES VECTORIZADAS
 x <- 1:4; y <- 6:9       #al poner una condicion el resultado es un verctor de logicos
 x+y
 x>2
 x>=2
 y ==8            #si necesito hacer una evaluacion logica del = , tengo que poner doble igual
 x*y             #hace multiplicacion uno a uno
 x/y
   
 
 #OPERACIONES CON MATRICES
 x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2) #rep repite un numero (10) una cierta cantidad de veces (4)
 x; y
 x*y
 x/y
 x%*%y      # &*% significa multiplicacion de matrices, todad¡s las demas operaciones son uno a uno
 
 
 
 #ESTRUCTURAS DE CONTROL
 
 #Permiten manejar el flujo de la ejecucion de un programas,
 #las estructuras mas comunes son if,else ; for; while ; repeat; break; next; return
 #if, else   probar una condicion
 #for, ejecuta un ciclo un determinado num de veces
 # while,  ejecuta un ciclo mientras se cumpla una condicion
 #repeat, ejecuta un ciclo infinito
 #break, termina la ejecucion de un ciclo
 #next, salta una iteracion de un ciclo
 #return, sale de una funcion (dar un resultado)
 
 
 #if-else
 # if(<condicion>){ instrucciones  } else
 #   if(<condicion1>)  {instrucciones}
 
 #for
 #  for(i in 1:10) {print(i) instrucciones}
 #se parece mas al for each, toman una variable y le asignaran valores sucesivos de un vector
 #los ciclos for se utilizan principalmente para realizar iteraciones con los elementos de un objeto
 
 
 for(i in 1:10) {print(i) }
 
 
 #crear una matriz de 2x3 con los numeros del 1 al 6 y luego imprimir x separado los elementos de de cada fila
 #el primer elemento de la primera fila, luego el segundo y asi
 x <- c("a","b","c","d")
 for(i in 1:4) {print(x[i]) }
 for(i in seq_along(x)) {print(x[i]) }  #no se sabe la longitud del objeto
 for(letra in x) {print(letra) }
 for(i in 1:4) print(x[i])  #si se trata de una sola instruccion se pueden omitir las llaves
 
 x <- matrix(1:6,2,3)
 x
 for (i in seq_len(nrow(x))) {
   for (j in seq_len(ncol(x))) { print(x[i,j]) }
 }
 
 #con seq_along todos los elementos de un vector los va mostrando secuencialmente
 #con seq_len  es una secuencia de un tamaño en particular

 
 
 
 #CLASE 12/SEP/16

 
 #CICLOS WHILE
 #Inician probando una condicion, si esta es verdadera, ejecutaran una serie de comandos
 #alterminarlos se vuelve a poner a prueba
 
 #a veces se evalua mas de una condicion
 z <- 5
 while (z>=3 && z<=10) {
   print(z)
   moneda <- rbinom(1,1,0.5)
   if (moneda==1) {#Caminata Aleatoria
     z <- z+1
   } else {
      z <- z-1
    }
 }
 
 #las condiciones se evaluan de izquierda a derecha
 
 
 #crear un vector donde le vayamos agregando mas entradas
 z <- 5
 caminata <- vector("numeric")
 while (z>=3 && z<=10)  {
   print(z)
   caminata <- c(caminata,z)
   moneda <- rbinom(1,1,0.5)
   if (moneda==1) {#Caminata Aleatoria
     z <- z+1
   } else {
     z <- z-1
   }
 }
 plot(caminata)
 caminata
 
 
 
 #
 z <- 5
 caminata <- vector("numeric")
 while (z>=3 && z<=10)  {
   print(z)
   caminata <- c(caminata,z)
   moneda <- rbinom(1,1,0.5)
   if (moneda==1) {#Caminata Aleatoria
     z <- z + 0.5
   } else {
     z <- z - 0.5
   }
 }
 plot(caminata)
 caminata
 str(caminata)
 
 #el type en plot es para eltipo de grafico, en este caso 1 es linea
 plot(caminata, type="l")
 
 