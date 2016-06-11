## chache the inverse of a matrix

## create a "matix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    cache<-NULL
    set<-function(matrix){
        m<<- matrix
        cache<<-NULL
    }
    get<- function(){
        m
    }
    cacheInverse<-function(solve){
        cache<<- solve
    }
    getInverse<- function(){
        cache
    }
    list(set=set,get=get,cacheInverse=cacheInverse,getInverse=getInverse)

}


## compute the inverse of the "matrix" object returned by the makeCacheMatrix funciton

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse<-x$getInverse()
    if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
    }
    data<-x$get()
    inverse<-solve(data)
    x$cacheInverse(inverse)
    
    inverse
}
