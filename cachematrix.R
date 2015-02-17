## This functions will cache the inverse of a matrix

## This function will set the value of inverse matrix using a given funtion

makeCacheMatrix <- function(y = matrix()){
	inv <- NULL
	set <<- function(x){
	y<<-x
	inv <<- NULL
	}
	get <- function()y
	setInverse <- function(inverse) inv<<- inverse
	getInverse <- function()inv
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This function will return the inverse of a matrix. The function skips the com## putation of the inverse matrix if it has been already computed.

catchSolve <- function(y, ...){

	inv <-y$getInverse()
	if (!is.null(inv)){
		message("Getting the cached data")
		return(inv)
	}
	data <- y$get()
	inv <- solve(data)
	y$setInverse(inv)
	inv
}
