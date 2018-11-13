entropia <- function(p1,p2) {

	x <- p1+p2
	y <- p1/x
	z <- p2/x
	ent <- (y)*log2(y) + (z)*log2(z)
	ent <- ent*-1
	ent

}

passos p/ carregar no ambiente R

setwd()
source("etpia.r")
calc <- entropia(9,5)

