## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( b = matrix() ) {

   #set the inverse property	
    a <- NULL

  #set the matrix
    set <- function( matrix ) {
            b <<- matrix
            a <<- NULL
    }

   
    get <- function() {
    	# Return the matrix
    	b
    }

   #set the inverse
    setInverse <- function(inverse) {
        a <<- inverse
    }

    # get the inverse 
    getInverse <- function() {
       
        a
    }

    # printing list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



cacheSolve <- function(x, ...) {

   
    b <- x$getInverse()

    
    if( !is.null(b) ) {
            message("get cache")
            return(b)
    }

  
    data <- x$get()

   
    b <- solve(data) %*% data

    #  inverse to the object
    x$setInverse(b)

   
    b
}
