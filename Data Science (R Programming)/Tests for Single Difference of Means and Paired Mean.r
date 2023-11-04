# Load the iris dataset
data(iris)

# Perform a one-sample t-test
t.test(iris$Sepal.Length, mu = 5.0)

# Load the mtcars dataset
data(mtcars)

# Subset data for automatic and manual transmission cars
auto_mpg <- mtcars$mpg[mtcars$am == 0]
manual_mpg <- mtcars$mpg[mtcars$am == 1]

# Perform a two-sample t-test
t.test(auto_mpg, manual_mpg)

# Hypothetical dataset of test scores before and after intervention
before_scores <- c(80, 75, 90, 70, 85)
after_scores <- c(85, 78, 92, 75, 88)

# Perform a paired t-test
t.test(before_scores, after_scores, paired = TRUE)
