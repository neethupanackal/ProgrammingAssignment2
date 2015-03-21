## Put comments here that give an overall description of what your
## functions do

## THis function helps Getting or setting a matrix and its inverse to/from the cache.
## This accepts an invertible matrix as input.
makeCacheMatrix <- function(x = matrix()) {
    matinv <- NULL
    set <- function(y) {
        x <<- y
        matinv <<- NULL
    }
    get <- function() x
    
    setinv <- function(inv) matinv <<- inv
    
    getinv <- function() matinv
  
    list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
