
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
      	x <<- y
            inv <<- NULL
      }
      get <- function() x
      setinv <- function(inverse) inv <<- inverse
      getinv <- function() inv
      list(set = set, get = get, setinv = setinv, getinv = getinv)
}

The above function uses the set and get pair to first get the inverse of the matrix and then set's the value in a environment different from it's own
The setinv function sets the inverse of the matrix and then the getinv gets the inverse if it's already stored. In case it's not already stored, the value is computed and then returned.
This way if we want to compute the inverse multiple times we can avoid it doing again and again.


cacheSolve <- function(x = matrix) {
	inverse <- solve(x)
	return(inverse)
}

This message find's the inverse of the matrix using solve function
