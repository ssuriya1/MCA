# defining data in the vector
x <- c(1:25)
# defining row names and column names
rown <- c("row_1", "row_2", "row_3", "row_4", "row_5")
coln <- c("col_1", "col_2", "col_3", "col_4", "col_5")
# creating matrix
m <- matrix(x, nrow = 5, byrow = TRUE,
            dimnames = list(rown, coln))
# print matrix
print(m)
# print class of m
class(m)
