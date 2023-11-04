# Define known data points
x_values <- c(1, 2, 4, 5)
y_values <- c(3, 5, 9, 11)

# Define the point at which to interpolate
x_interpolate <- 3

# Perform Newton's forward interpolation
newton_forward_interpolation <- approxfun(x_values, y_values, method = "linear")
y_interpolated_forward <- newton_forward_interpolation(x_interpolate)

# Perform Newton's backward interpolation
newton_backward_interpolation <- approxfun(x_values, y_values, method = "linear", f = 1)
y_interpolated_backward <- newton_backward_interpolation(x_interpolate)

# Print the results
cat("Interpolated Value using Newton's Forward Interpolation at x =", x_interpolate, ":", y_interpolated_forward, "\n")
cat("Interpolated Value using Newton's Backward Interpolation at x =", x_interpolate, ":", y_interpolated_backward, "\n")
