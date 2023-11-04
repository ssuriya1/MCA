# Define the coefficient matrix and right-hand side vector
A <- matrix(c(2, 1, 1, 1, 3, 2, 2, 4, 3), nrow = 3)
b <- c(7, 8, 18)

# Solve using Gauss elimination
x_gauss <- solve(A, b)

# Solve using Gauss-Jacobi method
x_jacobi <- solve(A, b, method = "Jacobi")

# Solve using Gauss-Seidel method
x_seidel <- solve(A, b, method = "Seidel")

# Print the results
cat("Solution using Gauss Elimination:\n")
print(x_gauss)

cat("Solution using Gauss-Jacobi Method:\n")
print(x_jacobi)

cat("Solution using Gauss-Seidel Method:\n")
print(x_seidel)
