
A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)


mean(A)
mean(B)

median(A)
median(B)

range(A)
range(B)


diff(range(A))
diff(range(B))


cat("Class A:\n")
cat("Mean =", mean(A), "\n")
cat("Median =", median(A), "\n")
cat("Range =", diff(range(A)), "\n\n")

cat("Class B:\n")
cat("Mean =", mean(B), "\n")
cat("Median =", median(B), "\n")
cat("Range =", diff(range(B)), "\n")


boxplot(A, B,
        names = c("Class A", "Class B"),
        main = "Comparison of Class A and Class B",
        ylab = "Exam Scores")