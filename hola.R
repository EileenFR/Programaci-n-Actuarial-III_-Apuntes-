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

