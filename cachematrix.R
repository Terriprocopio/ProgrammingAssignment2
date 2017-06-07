## The goal of this project is to write a matrix function that includes a sub-set to inverse the matrix.
## Part two will cache the inverse of the matrix.

## Function creates a matrix and includes a sub-set to inverse the matrix.

## Main Cache Matrix function
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL

## Sub-set to inverse the matrix in the main function
        set <- function(matrix) {
                x <<- matrix
                i <<- NULL
}
        
## Function to return the matrix stored in the main function
        get <- function() x
        
## Store the value for the inverse in the main function        
        setInverse <- function(inverse)
                i <<- inverse
        
## Get the inverse matrix stored in the main function
        getInverse <<- function() i
        
## List of functions in Cache Matrix
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
        
}


## Cache function to compute inverse of MakeCache Function if i does not have a value

cacheSolve <- function(x, ...) {
        
## Verify if the value i in getInverse exists; if yes, return message and value i
        i <-x$getInverse()
        if(!is.null(i)) {
                message("getting cache data")
                return(i)
        }
        
## Or else run cache to return inverse 
        matrix <- x$get()
        i <- solve(matrix,...)
        x$setInverse(i)
        i
}
