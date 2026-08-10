# Q6: Linear and Multiple Regression

data <- read.csv(file.choose())

# Linear Regression
linear_model <- lm(
  Outcome ~ Glucose,
  data = data
)

cat("Linear Regression Summary:\n")
print(summary(linear_model))

# Plot Linear Regression
plot(
  data$Glucose,
  data$Outcome,
  main = "Linear Regression",
  xlab = "Glucose",
  ylab = "Outcome",
  pch = 19
)

abline(linear_model)

# Multiple Regression
multiple_model <- lm(
  Outcome ~ Glucose + BloodPressure + BMI + Age,
  data = data
)

cat("Multiple Regression Summary:\n")
print(summary(multiple_model))