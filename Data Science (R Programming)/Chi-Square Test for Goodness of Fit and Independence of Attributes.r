# Creating observed and expected frequency tables for Goodness of Fit
observed <- c(35, 45, 60)
expected <- c(0.3, 0.4, 0.3)  # Expected frequencies should sum to 1

# Chi-Square test for goodness of fit
chi_square_goodness_of_fit <- chisq.test(observed, p = expected)

# Print the results for Goodness of Fit
cat("Chi-Square Test for Goodness of Fit:\n")
print(chi_square_goodness_of_fit)

# Creating a contingency table for Independence of Attributes
table_data <- matrix(c(10, 20, 15, 25, 30, 40, 35, 45), ncol = 2)

# Chi-Square test for independence of attributes
chi_square_independence <- chisq.test(table_data)

# Print the results for Independence of Attributes
cat("Chi-Square Test for Independence of Attributes:\n")
print(chi_square_independence)

