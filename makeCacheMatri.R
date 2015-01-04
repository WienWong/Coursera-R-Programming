
makeCacheMatri <- function(x = matrix()) {
    
    invmatri <- NULL
    
    set <- function(y) {
        x <<- y
        invmatri <<- NULL
    }
    
    get <- function() {
        x
    }
    
    setinvmatri <- function(invmatri) {
        invmatri <<- invmatri
    }
    
    getinvmatri <- function() {
        invmatri
    } 
    
    list(set = set, 
         get = get,
         setinvmatri = setinvmatri,
         getinvmatri = getinvmatri)
    
} 



# aMat <- makeCacheMatri( matrix(1:4, nrow=2, ncol=2) )
# 
# cacheSolve(aMat)
# 
# aMat <- makeCacheMatri( matrix(5:8, nrow=2, ncol=2) )
# 
# aMat <- makeCacheMatri(diag(3))
# 
# cacheSolve(aMat)
# 
# cacheSolve(aMat)
