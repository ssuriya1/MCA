# One-way ANOVA
data1 <- c(10, 15, 20, 25, 30)
data2 <- c(5, 10, 15, 20, 25)
data3 <- c(12, 17, 22, 27, 32)

result_one_way_anova <- aov(c(data1, data2, data3) ~ rep(c("A", "B", "C"), each = 5))
summary(result_one_way_anova)

# Two-way ANOVA
data <- data.frame(
  Treatment = rep(c("A", "B", "C"), each = 15),
  Gender = rep(c("Male", "Female"), each = 45),
  Value = rnorm(90)
)

result_two_way_anova <- aov(Value ~ Treatment * Gender, data = data)
summary(result_two_way_anova)
