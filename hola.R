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
 
 
 
 #Estructuras de control
 
 #la instruccion repeat inicia un ciclo infinito que no parara
 #hasta que se llame un break
 
 x0 <- 1
 tol <- 1e-8
 repeat {
   x1 <- CalculaEstimado(x0)
   if(abs(x1-x0) < tol) {
     break
   }else{
     x0 <- x1
   }
 }
 
 #se utiliza next para no hacer una iteracion en un ciclo
 #nos brincamos una iteracion
 
 for(i in 1:100){
   if(i<=20){
     next
     #evita hacer las primeras 20 iteraciones
   }
 }
 
 
 
 #CREACION DE FUNCIONES
 suma2 <- function(x,y){
   x + y
 }
 View(suma2)
 suma2(1,2)
 
 
 mayor10 <- function(x){
   x[x>10]
 }
 
 mayor10(1:20)
 mayor10(runif(100,5,15))
 
 
 
 mayorque <- function(x,n){
   x[x>n]
 }
 
 mayorque(1:10,3)
 
 
 promedioCol <- function(x, quitar.NA=TRUE) {
   nc <- ncol(x)
   medias <- vector("numeric",nc)
   for(i in 1:nc){
     medias[i] <- mean(x[,i],na.rm=quitar.NA)
     #mean es para calcular promedios
   }
   medias
 }
 
 mean(c(1,2,3,NA))
 mean(c(1,2,3,NA),na.rm=T)
 
 
 promedioCol(c(1,2,3,NA))
 promedioCol(as.matrix(c(1,2,3,NA)))
 
 
 
 #EVALUACION PEREZOSA
 #NO SE CALCULARA UNA EXPRESION HASTA QUE SU VALOR SEA NECESARIO
 
 f <- function(a,b){
   a^2
 }
 
 f(2,1)
 f(2)
 f(2,NA)
 
 f <- function(a,b){
   print(a)
   prin(b)
 }
 
 f(2)
 
 
 #arguumento ...
 #indica que hay un num varia..b.le de argumentos q usualmente
 #son pasados a otras funciones
 #se usa cuando hay una serie de argumentos en la funcion
 #original y no quieres escribirlos todos en una sub funcion
 
 myplot <- function(x,y,type="l",...){
   plot(x,y,type=type, ...)
 }
 
 #tambien se ocupa cuando el num de argumentos no puede ser conocidox anticipado
 
 args(paste) #pegas distintas cadenas de texto, no siempre vamos a saber cuantas cadenas son
 args(cat)
 
 ?paste
 
 #despues de usar ... al colocar un argumento debera ser nombrado y no podra nombrarsele parcialmente
 args(paste)
 paste("a","b",sep="")
 
 
 
 
 
 #SCOPING RULES
 
 lm
 lm <- function(x){x*x} #estamos creando un nuevo valor de lm
 lm
 rm(lm)  #rm remueve lm de la memoria, cuando hacemos esto, lm regresa a su ambiente original
 lm
 
 
 search() #cuando se menciona un objeto en r, va a seguir este orden para buscarlo
  
 library(ggplot2) #cambiamos el orden de los paquetes
 search()
 
 
 
 #MBITO LEXICOLOGICO
 
 hacer.potencia <- function(n){
   potencia <- function(x){
     x^n
   }
   potencia
 }
 
 cubica <- hacer.potencia(3)
 cuadrada <- hacer.potencia(2)
 cubica(3)
 cuadrada(3)
 
 #entorno de uuna funcion
 ls(environment(cubica))
 get("n",environment(cubica))
 ls(environment(cuadrada))
 get("n",environment(cuadrada))
 
 
 
 #estatico vs dinamico
 y <- 10
 f <- function(x){
   y <- 2
   y^2+g(x)
 }
 g <- function(x){
   x*y
 }
 #cuanto vale f(3)
 f(3)
 
 
 #ESTANDARES DE ESCRITURA
 
 #fechas y tiempo
 x <- as.Date("1970-01-01")
 x
 unclass(x)
 unclass(as.Date("1970-01-02"))
 
 
 date()
 as.POSIXct.date()
 
 x <- date()
 x
 as.POSIXct(x)
 
 
 
 
 #clase 28/sep/16    || o
 #funciones de ciclo
 #ciclos internos, sin necesidad de for
 
 lapply     # internal, lo resuelven en una base de c y lo regresan
?match.fun   
 
 
 x <- list(a=1:5,b=rnorm(10000))  #crea una lista de dos elementos, el primero una secuencia
 lapply(x,mean)                   # elsegundo genera 10000 valores aleatorios(normales) de una normal estandar
 # saca 2 resultados, el promedio de cada elemento de la lista x
 
 
 x <- list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))  #d=10 num aleatorios con dist nrmal, media 2 y desv estandar 1
 lapply(x,mean)
 
 #convierte al vector en una lista
 x <- 1:4   #secuencia de num, se recibe el primer elemento es 1, el segundo 2 y asi
 lapply(x,runif)  #runif fenera numeros aleatorios con distribucion uniforme entre 0 y  uno
 #para 1 genera un num aletorio para el 2 2 y asi
 
 
 x <- 1:4  #x <- list(a=1,b=1:2,c=1:3)
 lapply(x,runif,max=15,min=5)
 
 
 #sapply simpifica el resultado de apply (en vectores, matriz o lo mismo q apply)
 x <- list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
 lapply(x,mean) #devuelve un vector
 sapply(x,mean)
 
 
 x <- 1:4
 lapply(x,runif,max=15,min=5)  #son iguales porque el tamaño es distinto
 sapply(x,runif,max=15,min=5)
 
 
 #apply
 #evaluar una funcion, funciona de manera mas general
 str(apply)    #llama a la estructura de apply
 
 x <- matrix(rnorm(200),20,10)
 x
 #margen es un argumento de apply
 apply(x,2,mean)  #promedia por columna xq son las variables, las filas son observcioes
 #indice uno filas, indice 2 columnas
 
 
 #sumasy medias de dim de una matriz, tenemos algunos atajos
 #rowSums=apply(x,1,sum)
 #rowMeans=apply(x,1,mean)
 #...
 
 
 x <- matrix(rnorm(200),20,10)
 apply(x,1,quantile,probs=c(0.25,0.75))
 
 
 # los asteriscos es xq lo puso en "arrehlos, 2 x 2 x10
 a <- array(rnorm(2*2*10),c(2,2,10))  #un arreglo d dim 1 es un vector, de 2 es una matriz
 a      # mas de 2 se puede decir q ya es un arreglo
 apply(a,c(1,2),mean) #se aplica sobre 1 y 2, es el prom de los a1s de las 10 hojas, el b1s, etc
 
 
 
 #Mapply
 #apply multivariante, con mas d 1 variable
 
 str(mapply)
 
 list(rep(1,4),rep(2,3),rep(3,2),rep(4,1)) #4 elementos, el primero es el num 1 repetido4 veces y asi
 mapply(rep,1:4,4:1)
 #son equialentes
 
 #Vectorizar una funcion
 noise <- function(n,mean,sd){  #sd es desvicion estantar
   rnorm(n,mean,sd)
 }
 
 noise(1,5,2)
 noise(1:5,1:5,2)
 noise(5,1,2)
 
 
 mapply(noise,1:5,1:5,2)  #las 2 secuencias deben ser de mismo tamaño
 
 # mapply aplicar de manera vextorizada los elementos de una funcion
 
 
 #tapply
 str(tapply)
 
 x <- c(rnorm(10),runif(10),rnorm(10,1))
 x
 f <- gl(3,10)  # gl genera niveles, f es un factor de niveles
 f
 tapply(x,f,mean)
 tapply(x,f,mean,simplify=F) #simplify los simplifica a un vector
 
 
 
 ?gl
 
 #29/sep/16
 #SPLIT
 str(split)
 ?split
 
 x <- c(rnorm(10),runif(10),rexp(10))
 f <- gl(3,10)
 f
 split(x,f)  #separaen bloques los datos, y hace una lista de cada bloque
 
 lapply(split(x,f),mean)
 
 #split en data frame
 library(datasets)
 head(airquality)
 
 

 #de airquality separarlo por mes
 s <- split(airquality,airquality$Month)
 lapply(s,function(x) colMeans(x[,1:3]))  #este tipo de funcion se llama nonima, no xq no tenga nombre no se puedeutilizar
 
 sapply(s,function(x) colMeans(x[,1:4],na.rm=T))
 
 
 #SPLIT A MAS DE UN NIVEL
 x <- rnorm(10)
 f1 <- gl(2,5)
 f2 <- gl(5,2)
 f1
 f2
 interaction(f1,f2)
 x
 str(split(x,list(f1,f2)))
 
 
 
 #03/10/16
 #Manejo de errores
 
 log(-1)  #log de un num negativo no existe, solo lo guarda como nan, no detiene el codigo
 
 imprimeMSJ <- function(x){
   if(x>0)
     print("x es mayor que 0")
   else
     print("x es menor o igual a 0")
   invisible(x)
 }
 imprimeMSJ(1)
 imprimeMSJ(NA) #no sabe si es T o F, detiene el codigo
 
 imprimeMsj2 <- function(x){
   if(is.na(x))
     print("x es un  valor faltane")
   else if(x>0)
     print("x es mayor que 0")
   else
     print("x es menor que 0")
   invisible(x)
 }
 
 x <- log(-1)
 imprimeMsj2(x)
 
 
 #existen funciones para depurar
 
 #traceback
 mean(x)
 traceback()
 lm(y)
 
 
 
 opctions(error=recover)
 ?Error
 ?options
 
 read.csv("perritosgay")
 
 
 
 install.packages("swirl")
 library("swirl")
 swirl()
 
 #hacer hasta la seccion 6
 
 
 #05/10/16
 #SIMULACION
 
 str(str)
 str(lm)
 str(ls)
 x <- rnorm(100)
 str(x)
 summary(x)
 
 f <- gl(40,10)
 f
 str(f)
 summary(f)
 
 str(airquality)
 m <- matrix(rnorm(100),10,10)
 m
 str(m)
 
 s <- split(airquality, airquality$Month)
 s
 str(s)
 
 
 x <- rnorm(10)
 x
 
 y <- rnorm(10, 50, 5)
 y
 
 summary(x)
 summary(y)
 
 set.seed(1) #semilla 1, a todos les genera los mismos num aleatorios
 rnorm(5)
 
 set.seed(2)
 rnorm(5)
 
 set.seed(1)
 rnorm(5)
 
 
 normal1 <- rnorm(10000)
 normal2 <- rnorm(10000, 10, 5)
 hist(normal1)  #grafica un histograma de los valores
 summary(normal1)
 
 hist(normal2)
 summary(normal2)
 
 rpois(10,1)
 poisson1 <- rpois(10000,1)
 poisson2 <- rpois(10000, 10)
 hist(poisson1)
 hist(poisson2)
 ppois(2,2)
 ppois(4,2)
 ppois(6,2)
 hist(rpois(10000,2))
 
 x0 <- ppois(0,2)
 x0
 x1 <- ppois(1,2) - ppois(0,2)
 x1
 x2 <- ppois(2,2) - (x0 + x1)
 x2
 x3
 
 x <- vector("numeric")
 for(i in 0:13){
   y <- ppois(i,2)
   sum <- y + y
   z <- y - sum
   x <- c(x,z)
   x
 }
 x
 
 
 for(i in 0:13){ print(dpois(i,2))}
 
 
 hist(runif(10000,10,20))
 
 set.seed(20)
 x <- rnorm(100)
 e <- rnorm(100,0 ,2)
 y <- 0.5 + 2*x + e
 y
 
 plot(x,y)
 
 
 z <- 0.5 + 2*x
 plot(x,z)
 plot(z,y)  #plot grafico de dispersion
 
 
 #06/octubre/16
 #si se reduce el error se vuelve casi una linea recta
 
 set.seed(10)
 x <- rbinom(100,1,0.5)
 x
 e <- rnorm(100,2)
 y <- 0.5 + 2*x + e
 summary(y)
 plot(x,y,main="Modelo Lineal", col="dark red")
 
 ?plot
 
 
 
 set.seed(1)
 x <- rnorm(100)
 log.mu <- 0.5 + 0.3*x
 mu <- exp(log.mu)
 y <- rpois(100,mu)
 summary(y)
 plot(x,y,main="Modelo Poisson", col="forestgreen")
 