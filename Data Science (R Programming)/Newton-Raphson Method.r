# Define a function and its derivative
f <- function(x) x^3 - 2*x - 5
f_prime <- function(x) 3*x^2 - 2

# Implement the Newton-Raphson method
x0 <- 1  # Initial guess
tolerance <- 1e-6
max_iterations <- 100
x <- x0

for (i in 1:max_iterations) {
  x <- x - f(x) / f_prime(x)
  if (abs(f(x)) < tolerance) {
    break
  }
}

result_newton_raphson <- x

# Print the result
cat("Approximated Root:", result_newton_raphson, "\n")
