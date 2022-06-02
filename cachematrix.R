## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m = matrix() ) {

   #setthe inverse property	
    i <- NULL

  #set the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

   
    get <- function() {
    	## Return the matrix
    	m
    }

   #set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    # get the inverse of the matrix
    getInverse <- function() {
       
        i
    }

    # print a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



cacheSolve <- function(x, ...) {

   
    m <- x$getInverse()

    
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

  
    data <- x$get()

   
    m <- solve(data) %*% data

    #  inverse to the object
    x$setInverse(m)

   
    m
}
