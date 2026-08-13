data <- data.frame(
  Emails_Opened = c(80,75,20,25,85,90,30,35,70,78,15,22),
  Clicks_Per_Email = c(5,4,1,2,6,5,2,1,4,5,1,2),
  Time_Spent = c(40,35,10,15,45,50,12,18,30,38,8,14)
)

data_scaled <- scale(data)

set.seed(123)

k2 <- kmeans(data_scaled, centers = 2, nstart = 25)
k3 <- kmeans(data_scaled, centers = 3, nstart = 25)
k4 <- kmeans(data_scaled, centers = 4, nstart = 25)

print(k2)
print(k3)
print(k4)

data$Cluster_K2 <- k2$cluster
data$Cluster_K3 <- k3$cluster
data$Cluster_K4 <- k4$cluster

print(data)

library(cluster)

sil2 <- silhouette(k2$cluster, dist(data_scaled))
sil3 <- silhouette(k3$cluster, dist(data_scaled))
sil4 <- silhouette(k4$cluster, dist(data_scaled))

cat("K = 2 Silhouette Score:", mean(sil2[,3]), "\n")
cat("K = 3 Silhouette Score:", mean(sil3[,3]), "\n")
cat("K = 4 Silhouette Score:", mean(sil4[,3]), "\n")

plot(sil2, main = "Silhouette Plot - K = 2")
plot(sil3, main = "Silhouette Plot - K = 3")
plot(sil4, main = "Silhouette Plot - K = 4")

