# Matrix algebra examples 

# 1. Creating a vector 
a = c(1,2,3) # this is a column vector

# 2. Creating a matrix 
A = matrix(
  c(4, 1, 1,
    1, 6, 4, 
    1, 4, 9), 
  nrow = 3, byrow = T)
B = matrix(
  c(10, 1, 0,
    1, 3, -2, 
    0, -2, 5), 
  nrow = 3, byrow = T)

# 3. multiplication 
A*B # element-wise multiplication
A%*%B # matrix multiplication
A%*%a # matrix * vector

# 4. transpose 
t(A)
t(a)

# 5. trace and determinant
sum(diag(A))
det(A)

# 6. inverse 
solve(A)

# 7. eigen-decomposition
y = eigen(A) 
y$values # eigenvalues
y$vectors # eigenvector matrix

# 8. singular-value decomposition
y = svd(A)
y$u # left singular vectors
y$d # signular values
y$v # right singular vectors


