## Put comments here that give an overall description of what your
## functions do
rm(list = ls())
## Write a short comment describing this function

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


## Write a short comment describing this function

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
