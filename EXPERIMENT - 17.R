age<-c(23,25,28,30,32,35,38,40,42,45,47,50,52,55,58,60,62,65)
fat<-c(15,18,20,22,24,25,27,29,31,33,34,36,38,40,42,44,45,47)

c(mean(age),median(age),sd(age))
c(mean(fat),median(fat),sd(fat))

par(mfrow=c(2,2))
boxplot(age)
boxplot(fat)
plot(age,fat,pch=19)
qqnorm(age);qqline(age)
