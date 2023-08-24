## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	j <- NULL
	set_function <- function(temp) {x <<-temp
						j <<-NULL}
	get_function <- function() {x}
	set_inverse_function <- function(inverse_element) {j <<- inverse_element}
	get_inverse_function <- function() {j}
	list (set_function = set_function, get_function = get_function, 
		set_inverse_function = set_inverse_function, get_inverse_function=get_inverse_function)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		j <- x$get_inverse_function()
		if (!is.null(j)){return(j)}
		d <- x$get_function()
		j <- solve(d, ...)
		x$set_inverse_function(j)
		j
}
