
x3 <- 0
x10 <- 0

for(i in 1:100 ) {
  z <- 5
  #caminata <- vector("numeric")
  while (z>=3 && z<=10) {
    #print(z)
    moneda <- rbinom(1,1,0.5)
    if (moneda==1) {#Caminata Aleatoria
      z <- z+1
    } else {
      z <- z-1
    }
  }
  

  if (z<3) {
    x3 <- x3+1
  }
  
  if (z>10) {
    x10 <- x10+1
  }
}

 x3
 x10
 

