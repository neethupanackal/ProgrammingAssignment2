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
       getinv =  getinv()

}


## This function calculates and returns the inverse of a cacheable matrix. 
## The input cacheable matrix is created by makeCacheMatrix .
## If the inverse is already been calculated before, it retrieves from the cache.
## Else, it calculates the inverse, saves it in the cache and returns the inverse

cacheSolve <- function(x, ...) {
    
    ## Gets the inverse from the cache.
    matinv <- x$getinv()
    
    ## if inverse is not null, that means pre-calculated inverse is available
    if(!is.null(matinv)) {
        message("getting cached data")
    }
    ## Else, we do not have pre calculated inverse.
    ## Calculate the inverse using solve function and Set it in the cache.
    else { 
        matdata <- x$get()
        matinv <- solve(matdata, ...)
        x$setinv(matinv)
    }
    
    return(matinv)
}

