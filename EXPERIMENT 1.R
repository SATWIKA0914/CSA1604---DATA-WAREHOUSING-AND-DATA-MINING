# Q1: Data Partitioning

sales <- c(5, 10, 11, 13, 15, 35, 50, 55, 72, 92, 204, 215)

# Equal Frequency Partitioning
bin1 <- sales[1:4]
bin2 <- sales[5:8]
bin3 <- sales[9:12]

cat("Equal Frequency Bins:\n")
print(bin1)
print(bin2)
print(bin3)

# Equal Width Partitioning
width <- (max(sales) - min(sales)) / 3

equal_width <- cut(
  sales,
  breaks = c(5, 75, 145, 215),
  include.lowest = TRUE
)

cat("Equal Width Bins:\n")
print(equal_width)

# K-Means Clustering
set.seed(123)
cluster <- kmeans(sales, centers = 3)

cat("Cluster Assignment:\n")
print(cluster$cluster)

cat("Cluster Centers:\n")
print(cluster$centers)