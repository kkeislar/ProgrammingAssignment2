## JHU R Prog Week 2 Assignment
## Lexical Scoping: Cache Matrix and Inverse
## Kanti Keislar

## Creates a set of functions to set and get a matrix 'x' and its inverse

makeCacheMatrix <- function(x = matrix()) {

        s <- NULL
         
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list( set = set, get = get, setsolve = setsolve, getsolve = getsolve)
        
        
}


## Return a matrix that is the inverse of 'x'. Set if not yet set.

cacheSolve <- function(x, ...) {
        
        s <- x$getsolve()
        
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        
        data <- x$get()
        s <- solve(data)
        x$setsolve(s)
        s

}
