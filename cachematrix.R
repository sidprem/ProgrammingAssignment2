## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## takes in a matrix and creates a list of functions taht compute the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <= function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## solves the matrix and stores it in cache if it already doesn't exist
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)){
    message("getting inverse matrix")
    return(m)
  }
  data <- x$get
  m <- solve(data, ...)
  x$getsolve(m)
  m
}
