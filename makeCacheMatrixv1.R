makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #assigns Null value for inverse value in local environment
  set <- function(y) { 
    x <<- y #sets global value for x
    inv <<- NULL #assigns Null value for inverse value in global environment
  }
  get <- function() x 
  setinv <- function(inverse) inv <<- inverse #sets the global value for inv 
  getinv <- function() inv #gets the inverse of the input matrix
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}