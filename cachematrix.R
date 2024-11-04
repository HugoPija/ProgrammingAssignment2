## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Programming Assignment 2 - Programming in R - Coursera
# Creates a special matrix that can cache its inverse.
# 'X' is the matrix to analyse. 

makeCacheMatrix <- function(x = matrix()) {

# Set initial values for inverse and current matrix
     IM <- NULL
     oldMat <<- X
     
# Define useful bridge functions
   
     get <- function() X
     setIM <- function(invmat) IM <<- invmat
     getIM <- function() IM
     
# Create "matrix" list
     
     list(oldMat = oldMat, get = get, setIM = setIM, getIM = getIM)
}


## Write a short comment describing this function
# This function computes the inverse of the matrix returned by makeCacheMatrix.R
# If the inverse has been calculated, and the matrix has not changed, it uses
# the cached inverse. If not, it computes the inverse and saves it to the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

# Assign existing inverse
     
     IM <- X$getIM()
     
# Check is that inverse is null and the current matrix is different from
# previous one
     
     if(!is.null(IM) && all(X$get()==X$OldMat)) {
          message("Getting cached inverse")
          return(IM)
     }
     
# Compute and print the inverse
     
     mat2inv <- X$get()
     IM <- solve(mat2inv, ...)
     X$setIM(IM)
     IM
}
