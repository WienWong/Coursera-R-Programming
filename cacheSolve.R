
cacheSolve <- function(x, ...) {
    
    invmatri <- x$getinvmatri()
    
    if(!is.null(invmatri)) {
        message("getting cached inverse matrix")
        return(invmatri)
    }
    
    matrix <- x$get()
    
    invmatri <- solve(matrix, ...)
    
    x$setinvmatri(invmatri)
    
    invmatri
}


