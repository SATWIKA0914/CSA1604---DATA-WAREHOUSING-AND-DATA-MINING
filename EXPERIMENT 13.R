# Q13: Data Partitioning and Smoothing

x <- c(5, 10, 11, 13, 15, 35, 50, 55, 72)

# Equal Frequency Bins
bin1 <- x[1:3]
bin2 <- x[4:6]
bin3 <- x[7:9]

cat("Original Bins:\n")
print(bin1)
print(bin2)
print(bin3)

# Smoothing by Bin Means
mean_bin1 <- mean(bin1)
mean_bin2 <- mean(bin2)
mean_bin3 <- mean(bin3)

smooth_mean <- c(
  rep(mean_bin1, 3),
  rep(mean_bin2, 3),
  rep(mean_bin3, 3)
)

cat("Smoothing by Bin Means:\n")
print(smooth_mean)

# Smoothing by Bin Boundaries
smooth_boundary <- c(
  5, 11, 11,
  13, 13, 35,
  50, 50, 72
)

cat("Smoothing by Bin Boundaries:\n")
print(smooth_boundary)

# Histogram
hist(
  x,
  main = "Histogram of Data",
  xlab = "Values",
  ylab = "Frequency"
)