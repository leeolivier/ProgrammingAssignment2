## function that creates a special matrix object that
# can cache it's inverse


makeCacheMatrix <- function(x = matrix()) {
  i<- NULL
  set <- function (y){
    x<<-y
    i<<-NULL
  }

get <- function(){
  x
}
  setinverse<-function(inverse){
  i<<-inverse
}

getinverse<- function(){
  i
}
  list(set=set,
       get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}
##function creates a numerical vector. set and get value 
# of vector and mean

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    i
  }
  data<-x$get()
  i<-solve(data,...)
  x$setinverse(i)
  i
}
