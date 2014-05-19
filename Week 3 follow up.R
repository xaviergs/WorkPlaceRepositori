################## LOOP FUNCTIONS
### lapply. Always returns a list
x <- list(a = 1:5, b = rnorm(10))
y <- lapply(x,mean)
# equivalent to (for calculations)
mean(x$a)
mean(x$b)

# another example
x <- list(a=1:4, b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
y <- lapply(x,mean)

# using runif to create a list of random numbers based on the passed vector
x <- 1:4
y <- lapply(x,runif)

# using runif attributes and passing them through lapply (...)
x <- 1:4
y <- lapply (x, runif, min = 0, max = 10)

# anonymous functions
# extracting first column of each one
x <- list(a = matrix(1:4,2,2), b = matrix(1:6,3,2))
y <- lapply(x, function(elt) elt[,1])
z <- lapply(x, function(elt) elt[nrow(elt),ncol(elt)])

### sapply. Simplifies the result whenever is possible
x <- list(a=1:4, b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
y <- lapply(x,mean)
y2 <- sapply(x,mean)





