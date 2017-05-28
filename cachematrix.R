## In this assignment we are storing the inverse of matrix in cache in order to   
## optimize the code

## This function perform multiple task including set the matrix value, provide the matrix value
## Set the inverse of matrix in cache and provide the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {

Cache <-NULL
Inverse <-NULL

#For changing the matrix #

setMatrix <-function(y)
{
  x<<-y
  Cache <<-NULL
  inverse <- NULL
}


#For obtaining the matrix #
getMatrix <- function()
{
  x
}
 
#Storing the inverse of matrix#
SetInverse <- function(sol)
{
Cache <<- sol
}
 
#Getting the inverse of matrix #
getInverse <-function()
{
  Cache
}

list(setMatrix=setMatrix, getMatrix=getMatrix, SetInverse=SetInverse, getInverse=getInverse)
}


#This function calculate the inverse of matrix, first it will check whether it is already# 
#calculated if yes then it will return that otherwise calculate it#

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
       if(!is.null(inverse))
       {
         message('Inverse of Matrix from cache')
         return(inverse)
         
       }
       Mat <- x$getMatrix()
       inverse <- solve(Mat)
       x$SetInverse(inverse)
       inverse
}
