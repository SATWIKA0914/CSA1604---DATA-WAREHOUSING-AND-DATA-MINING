# Q9: Calculate Q1 and Q3

age <- c(
  18, 20, 21, 23, 25,
  27, 30, 32, 35, 40
)

Q1 <- quantile(age, 0.25)
Q3 <- quantile(age, 0.75)

cat("First Quartile (Q1):\n")
print(Q1)

cat("Third Quartile (Q3):\n")
print(Q3)