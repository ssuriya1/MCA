# Define a differential equation
dy_dx <- function(x, y) -2 * x * y

# Define initial values
x0 <- 0
y0 <- 1
h <- 0.1  # Step size

# Euler's method
euler <- function(x, y, h) {
  y_new <- y + h * dy_dx(x, y)
  return(list(x_new = x + h, y_new = y_new))
}

# Euler's modified method
euler_modified <- function(x, y, h) {
  y_prime <- y + h * dy_dx(x, y)
  y_new <- y + 0.5 * h * (dy_dx(x, y) + dy_dx(x + h, y_prime))
  return(list(x_new = x + h, y_new = y_new))
}

# Runge-Kutta method (4th order)
runge_kutta <- function(x, y, h) {
  k1 <- h * dy_dx(x, y)
  k2 <- h * dy_dx(x + 0.5 * h, y + 0.5 * k1)
  k3 <- h * dy_dx(x + 0.5 * h, y + 0.5 * k2)
  k4 <- h * dy_dx(x + h, y + k3)
  y_new <- y + (1/6) * (k1 + 2 * k2 + 2 * k3 + k4)
  return(list(x_new = x + h, y_new = y_new))
}

# Perform iterations using each method
n_iterations <- 10
results_euler <- list()
results_euler_modified <- list()
results_runge_kutta <- list()

for (i in 1:n_iterations) {
  results_euler[[i]] <- list(x = x0, y = y0)
  results_euler_modified[[i]] <- list(x = x0, y = y0)
  results_runge_kutta[[i]] <- list(x = x0, y = y0)

  for (j in 1:(n_iterations - 1)) {
    results_euler[[i + 1]] <- euler(results_euler[[i]]$x, results_euler[[i]]$y, h)
    results_euler_modified[[i + 1]] <- euler_modified(results_euler_modified[[i]]$x, results_euler_modified[[i]]$y, h)
    results_runge_kutta[[i + 1]] <- runge_kutta(results_runge_kutta[[i]]$x, results_runge_kutta[[i]]$y, h)
  }
}

# Print the results
cat("Euler's Method Results:\n")
print(results_euler)

cat("Euler's Modified Method Results:\n")
print(results_euler_modified)

cat("Runge-Kutta Method Results:\n")
print(results_runge_kutta)
