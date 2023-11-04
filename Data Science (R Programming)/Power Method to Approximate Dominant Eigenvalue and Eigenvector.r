# Define a matrix
A <- matrix(c(6, 2, 1, 1, 3, 1, 2, 4, 3), nrow = 3)

# Power method to approximate the dominant eigenvalue and eigenvector
power_method <- function(A, iter = 1000) {
  n <- nrow(A)
  x <- rep(1, n)

  for (i in 1:iter) {
    y <- A %*% x
    x <- y / max(y)
  }

  lambda_max <- max(y)
  return(list(lambda_max = lambda_max, eigenvector = x))
}

result_power_method <- power_method(A)

# Print the results
cat("Approximated Dominant Eigenvalue:", result_power_method$lambda_max, "\n")
cat("Approximated Dominant Eigenvector:\n")
print(result_power_method$eigenvector)
