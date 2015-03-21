## This R script implements a caching of a matrix and its inverse.
## The cached values can be retrived in subsequent operations and avoids recalculation.



## THis function helps Getting or setting a matrix and its inverse to/from the cache.
## This expects an invertible matrix as input.
## This function returns a list containing the subfunctions get, set, getinv and setinv

makeCacheMatrix <- function(x = matrix()) {
    
    matinv <- NULL
    ## Saves new matrix to the cache and resets its inverse
    set <- function(y) {
        x <<- y
        matinv <<- NULL
    }
    
    ## Retrieves the matrix saved in cache.
    get <- function() x
    
    ## Save the matrix inverse to the cache.
    setinv <- function(inv) matinv <<- inv
    
    ## Retrieves the matrix inverse saved in cache.
    getinv <- function() matinv
  
    ## Retuns a list of subfuntions 
    list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
