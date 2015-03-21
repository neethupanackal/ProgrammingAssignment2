## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


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
