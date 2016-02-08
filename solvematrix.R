rm(list = ls())

source("/Users/sanjay/mycode/git/ProgrammingAssignment2/cachematrix.R")
 
vall <- scan(file = "/Users/sanjay/mycode/git/ProgrammingAssignment2/symmatrix.txt", what = integer(), sep = ",")
x <- c(vall)
y <- matrix(x,nrow = 1000, ncol = 1000)

# Testing this function
m <- makeCacheMatrix(y)
m$getmatinv()
starttm <- proc.time()
cacheSolve(m)
endtm <- proc.time()
print(endtm-starttm)

starttm <- proc.time()
m$getmatinv()
endtm <- proc.time()
print(endtm-starttm)
