# Initialize an empty list to represent the dynamic matrix
dynamic_matrix <- list(1:200)

# Function to add a row to the dynamic matrix
add_row <- function(matrix, values) {
  matrix[length(matrix) + 1] <- list(values)
  return(matrix)
}

# Function to retrieve a value from the dynamic matrix
get_value <- function(matrix, row, col) {
  if (length(matrix) < row || length(matrix[[row]]) < col) {
    return(NA)  # Return NA if the row or column is out of bounds
  }
  return(matrix[[row]][col])
}
print(dynamic_matrix)
