## This code is aim to save your calculation time for inverse matrices  
## makeCacheMatrix will save your matrices and cacheSolve will inverse your matrices if it had been stored in cache

## Input your matrix to save it in Cache
## Save makeCacheMatrix(your matrix) to a variable for later use. Eg: MyMatrix

makeCacheMatrix <- function(x = matrix()) {
ma  <- NULL
setma <- function(){
  x <<- y
  ma <<- NULL
}
getma <- function() x
setinverse <- function(inverse) ma <<- inverse
getinverse <- function() ma
list(setma = setma, getma = getma,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Type cacheSolve(MyMatrix) to get the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ma <- x$getinverse()
  if (!is.null(ma)) {
    message("getting cache data")
    return(ma)
  }
  dat <- x$getma()
  ma <- solve(dat,...)
  x$setinverse(ma)
  ma
}
