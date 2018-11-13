distEuclidean <- function(a, b) {
	soma <- 0
	for (i in 1:length(a)) {
		soma <- soma + (a[i]-b[i])*(a[i]-b[i])
	}
	sqrt(a)
}

distEuclidean2 <- function(a, b) {
	sqrt(sum((a-b)*sum(a-b)))
}

knn <- function(data, novo, k) {
	data <- fread("../besta.csv")
	distancias = c()

	rotulo <- ncol(data)
	data <- matriz[, -c(rotulo)]

	rs <- length(unique(rotulo))
	rotulo <- sort(rotulo)[1:rs]
	
	for (i in 1:nrow(data))
		distancias[i] <- distEuclidean(novo, data[i,])

	distancias <- sort.list(distancias)[1:k]

	#ocorrencias = matrix(0, 1, n)
	ocorrencias = integer(rs)

	for (i in 1:k) {
		pos <- distancias[i]
		ocorrencias[rotulo] = ocorrencias[rotulo] + 1 
	}

	#quando ordena perde a relação. sort.list retorna os parametros

}