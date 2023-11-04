# Define known data points
x_values <- c(1, 2, 4, 5)
y_values <- c(3, 5, 9, 11)

# Define the point at which to interpolate
x_interpolate <- 3

# Perform Lagrange interpolation
lagrange_interpolation <- approxfun(x_values, y_values)
y_interpolated <- lagrange_interpolation(x_interpolate)

# Print the result
cat("Interpolated Value at x =", x_interpolate, ":", y_interpolated, "\n")
