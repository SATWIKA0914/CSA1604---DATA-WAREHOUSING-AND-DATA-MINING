# Q5: Diabetes Data Visualization

data <- read.csv(file.choose())

# Display first few records
print(head(data))

# Scatter Plot
plot(
  data$Age,
  data$BloodPressure,
  main = "Blood Pressure vs Age",
  xlab = "Age",
  ylab = "Blood Pressure",
  pch = 19
)

# Create Age Groups
data$AgeGroup <- cut(
  data$Age,
  breaks = c(0, 30, 50, 100),
  labels = c("Young", "Middle Age", "Old")
)

# Calculate Average Blood Pressure
avg_bp <- aggregate(
  BloodPressure ~ AgeGroup,
  data = data,
  mean
)

print(avg_bp)

# Bar Chart
barplot(
  avg_bp$BloodPressure,
  names.arg = avg_bp$AgeGroup,
  main = "Average Blood Pressure by Age Group",
  xlab = "Age Group",
  ylab = "Average Blood Pressure"
)