# Q10: Water Dataset Linear Regression

# If water.csv is provided
water <- read.csv(file.choose())

# Display data
print(head(water))

# Linear Regression
model <- lm(
  mortality ~ hardness,
  data = water
)

# Display Model Summary
print(summary(model))

# Plot Relationship
plot(
  water$hardness,
  water$mortality,
  main = "Mortality vs Water Hardness",
  xlab = "Water Hardness",
  ylab = "Mortality",
  pch = 19
)

# Add Regression Line
abline(model)

# Predict Mortality when Hardness = 88
new_data <- data.frame(hardness = 88)

prediction <- predict(
  model,
  newdata = new_data
)

cat("Predicted Mortality for Hardness = 88:\n")
print(prediction)