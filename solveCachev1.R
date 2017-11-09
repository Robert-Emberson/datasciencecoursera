cacheSolve <- function(x, ...) {
  inv <- x$getinv() #gets inverse value of matrix from local environment
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv) #Gets the local value of inv if it's already calculated
  }
  data <- x$get() #if no cached, then gets the local value for the matrix
  inv <- solve(data, ...) #finds inverse value of matrix, assigns to local inv
  x$setinv(inv) #sets the global inverse value
  inv #prints inverse value
}