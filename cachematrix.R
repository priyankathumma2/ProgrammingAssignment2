### The below functions are used to create a special object that stores a matrix and caches its inverse. The first function, makeCacheMatrix creates a special “matrix”.
## this will be done by creating the functions "makeCacheMatrix" and "cacheSolve

## this function creates a special "matrix" object that can cache its inverse

 
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          in <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## The below function computes the inverse of the special matrix returned by makecachematrix.
## returned by makeCacheMatrix above
## if the inverse has already been calculated (and the matrix has not changed),
## then the cacheSolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
          
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
} 
        ## Return a matrix that is the inverse of 'x'



