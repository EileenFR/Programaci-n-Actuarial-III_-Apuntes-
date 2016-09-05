getwd()
setwd("C:/Users/EILEEN/Desktop/Programación Actuarial lll") #session,  set working directory
data <- read.csv("Datos_S&P.csv")
data

data <- read.table("Datos_S&P.csv",T,",")
data

data <- read.table("Datos_S&P.csv",F,",")
data
a <- ncol(data)
a
b <- nrow(data)
b

for (i in 1:a) for (j in 1:b ) { if data.class(data(col=i,row=j)) = numeric then c= "Numero"}


?data.class
