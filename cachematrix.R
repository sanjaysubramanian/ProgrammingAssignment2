## Redoing this assignment to obtain a verified certificate.
## NO changes in code. Adding documentation based on feedback received
##
## The following two functions here are for 
## [1] creating inverted matrix 
## [2] using inverted matrix with caching ability


## FUNCTION = makeCacheMatrix
## This function creates a matrix that can be cached and used as input to
## the cacheSolve() function that then sets and gets the cached inverted matrix
##
makeCacheMatrix <- function(xmat = matrix()) {
  inv <- NULL
  setinverse <- function(ymat) {
    xmat <<- ymat
    inv <<- NULL
  }
  getinverse <- function() xmat
  setmatinv <- function(matinverse) inv <<- matinverse
  getmatinv <- function() inv
  list(setinverse = setinverse, getinverse = getinverse, setmatinv = setmatinv, getmatinv = getmatinv)
}



## FUNCTION = cacheSolve
## This function calculates the inverse of the cacheable matrix returned 
## by makeCacheMatrix(). However if the inverse is already calculated 
## then this function returns the cached version of the matrix inverse.

cacheSolve <- function(xmat, ...) {
        ## Return a matrix that is the inverse of 'xmat'
  inv <- xmat$getmatinv()
  if(!is.null(inv)) {
    message("getting matrix inverse cached data")
    return(inv)
  }
  data <- xmat$getinverse()
  inv <- solve(data)
  xmat$setmatinv(inv)
  inv
}
