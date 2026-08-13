data <- data.frame(
  Age = c(22,25,35,42,28,45,30,50,23,38),
  Income = c(25000,30000,60000,80000,40000,90000,50000,100000,28000,70000),
  Time_Spent = c(10,15,30,40,20,45,25,50,12,35),
  Clicked = c(0,0,1,1,1,1,0,1,0,1)
)

model <- glm(Clicked ~ Age + Income + Time_Spent,
             data = data,
             family = binomial())

prob <- predict(model, data, type = "response")

prediction <- ifelse(prob >= 0.5, 1, 0)

result <- data.frame(
  Actual = data$Clicked,
  Probability = prob,
  Predicted = prediction
)

print(result)

cm <- table(Actual = data$Clicked, Predicted = prediction)

print(cm)

accuracy <- mean(prediction == data$Clicked)

cat("Accuracy =", accuracy)

