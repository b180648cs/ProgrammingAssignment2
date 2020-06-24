
## functions that cache the inverse of a matrix



makeCacheMatrix <- function(x = matrix()) {
  
  inv<-NULL
  ## function to set matrix
  set<-function(matrix)
  {
    x<<-matrix
    inv<<-NULL
  }
  ## to get matrix
  get<-function()
  {
    x
    
  }
  ## to set the inverse
  inverse<-function(i)
  {
    inv<<-i
  }
  ##to get inverse
  getInverse<-functio()
  {
    inv
  }
  list(set=set,get=get,inverse=inverse,getInverse=getInverse)
 
}
  
 
  
  cacheSolve <- function(x, ...) {
    
    
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    ##  return the inverse if its already set
    if( !is.null(m) ) {
      message("getting cached data")
      return(m)
    }
    
    ## get the matrix from our object
    data <- x$get()
    
    ## calculate the inverse using solve
    m <- solve(data) %*% data
    
    ## set the inverse to the object
    x$inverse(m)
    
    ## Return the matrix
    m
    
  }
  