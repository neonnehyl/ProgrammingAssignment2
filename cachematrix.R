## Ppair of functions that cache the inverse of a matrix.
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
 set <- function (matrix) {
         m <<- matrix
         i <<- NULL
}

get <- function(matrix) {
        m
}
        
## Setting the inverse of matrix
        set_Inverse <- function(inverse){
                i <<- inverse
}
        
## Getting the inverse of matrix
        get_Inverse <- function(inverse){
                i
}
        
 list( set = set, 
        get=get,
      set_Inverse = set_Inverse,
      get_Inverse = get_Inverse)
        
}
      
            
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$get_Inverse()
        
if (!is.null(m)) {
        print("getting cached data")
        returm(m)
        
data <- x$get()
        
        m <- solver(data) %% data
        x$set_Inverse(m)
        m
}
