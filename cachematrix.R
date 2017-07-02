## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setminverse <- function(minverse) i <<- minverse
        getminverse <- function() i
        list(set = set, get = get,
             setminverse = setminverse,
             getminverse = getminverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getminvers()
        if(!is.null(i))
        {
                message("getting cached data")
                return(i)
        }
        i <- solve(x$get())
        x$setminverse(i)
        i
}
