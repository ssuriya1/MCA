# Define a function to be integrated
f <- function(x) x^2 + 1

# Define integration limits
a <- 0
b <- 2

# Perform numerical integration using trapezoidal rule
n_intervals <- 4
trapezoidal_integral <- integrate(f, lower = a, upper = b, subdivisions = n_intervals)

# Perform numerical integration using Simpson's 1/3 rule (automatic method selection)
simpson_13_integral <- integrate(f, lower = a, upper = b, subdivisions = n_intervals)

# Print the results
cat("Trapezoidal Rule Integral:", trapezoidal_integral$value, "\n")
cat("Simpson's 1/3 Rule Integral:", simpson_13_integral$value, "\n")
