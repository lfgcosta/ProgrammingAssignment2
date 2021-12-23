## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL ##Set the i to a NULL for future placeholder  
  set <- function(y) { ##function to set the vector X to new vector Y and reset the the i to NULL
    x <<- y
    i <<- NULL 
  }
  get <- function() x #retirn the vector x
  setinverse <- function(inverse) i <<- inverse ##set the i to inverse
  getinverse <- function() i ##return the inverse i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse) ##return the vector containing all functions defined
}
  
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
  
 ## Return a matrix that is the inverse of 'x'

