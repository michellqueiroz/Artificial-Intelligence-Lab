crossvalidation <- function(data, k=10) {
	resultado <-list()
	index <- sample(x=1:nrow(data), size=nrow(data)*0.9)
	resultado$train<-data[index,]
	resultado$test<-data[-index,]
	resultado
}	
