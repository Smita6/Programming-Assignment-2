#
# Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## set the value of the matrix
i <- NULL
set <- function (y){
x <<- y
i <<- NULL
}

get <- function()x
##get the value of the matrix

setinverse <- function(solve)i <<- solve
##set the inverse of the matrix


getinverse <- function()i
##get the inverse of the matrix

list(set=set, get=get,
setinverse=setinverse,
getinverse=getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

i <- x$getinverse()
##get the inverse of the matrix

if(!is.null(i)){
message("getting cached data")
return(i)
##check if there is the matrix
##if not, get the inverse of the matrix
}

data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
##set the inverse of the matrix
i
}
