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
        
## list of functions in Cache Matrix
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
