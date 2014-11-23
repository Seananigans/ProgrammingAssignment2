## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
    invMat<- NULL #Sets the inverse matrix 
    set<- function(newValue){
        x <<- newValue #method that sets newValue as the input matrix
        invMat<<- NULL #method that sets the inverse matrix = NULL to show 
                                                #invMat hasn't been solved.
    }
    get <- function() x #Method that returns the original matrix
    setInv <- function(inverse) invMat<<- inverse
    getInv <- function() invMat #Method that returns the inverse matrix
    list( set = set, get = get,
          setInv = setInv,
          getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
    invMat <- x$getInv() #retrieves state of variables x and invMat
    if(!is.null(invMat)) { #checks to see if invMat is null and returns it if it isn't
        message("getting cached data")
        return(invMat)
    }
    data <- x$get() #retrieves x
    invMat <- solve(data,...) #solves for inverse of x
    x$setInv(invMat) #sets inverse of x equal to invMat
    invMat #returns invMat
}
