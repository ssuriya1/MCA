# Create a Latin Square design
latin_square <- matrix(c(3, 2, 1, 2, 1, 3, 1, 3, 2), nrow = 3)
latin_square_design <- as.table(latin_square)

# Perform Fisher's Exact Test on the Latin Square design
fisher_exact_test <- fisher.test(latin_square_design)

# Print the results
cat("Fisher's Exact Test for Latin Square Design:\n")
print(fisher_exact_test)
