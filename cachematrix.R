## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The following function will do the following:
## (a) set the entries of the matrix
## (b) get the entries of the matrix.
## (c) set the entries of the inverse
## (d) get the entries of the inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## The following function will do the following:
## (a) it takes the list calculated by the previous function.
## (b) checks if the inverse is already computed, if so populates it from the data.
## (c) else computes the inverse and prints it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
