# 02 - Simple Linear Regression ------------------------------------------------

# Generating data for plot to visualize residuals
set.seed(4)
sub <- sample(1:50, 10)
cars2 <- cars[sub,]
fit1 <- -8 + 3*cars2$speed
fit2 <- 9 + cars2$speed

plot(cars2$speed, cars2$dist, xlab = "Speed", ylab = "Distance",
     main = "Two potential regression lines")
abline(-8, 3)
abline(9, 1, col = "blue")

par(mfrow=c(1,2))

plot(cars2$speed, cars2$dist, xlab = "Speed", ylab = "Distance",
     main = "Residuals for y = -8 + 3x")
abline(-8, 3)
segments(cars2$speed, fit1, cars2$speed, cars2$dist, col = "red")

plot(cars2$speed, cars2$dist, xlab = "Speed", ylab = "Distance",
     main = "Residuals for y = 9 + 1x")
abline(9, 1, col = "blue")
segments(cars2$speed, fit2, cars2$speed, cars2$dist, col = "red")

par(mfrow=c(1,1))

# Fitting a simple linear regression model
fit <- lm(dist ~ speed, data = cars)
summary(fit)

plot(cars$speed, cars$dist, xlab = "Speed", ylab = "Distance")
abline(fit)

# Residuals
fit$residuals
sqrt(sum(fit$residuals^2)/(50-2))
summary(fit)$sigma

# Inference
summary(fit)

confint(fit, level = 0.95)

new.speed <- data.frame(speed = 23.5)
predict(fit, new.speed)
predict(fit, new.speed, interval = "prediction", level = 0.95)
predict(fit, new.speed, interval = "confidence", level = 0.95)

# Coefficient of determination
summary(fit)
cor(cars$speed, cars$dist)^2

# Residual plots
plot(fit, which=c(2,1))

library(MASS)

plot(forbes$pres, forbes$bp)

fit2 <- lm(bp ~ pres, data = forbes)
plot(fit2, which=c(2,1))

fit3 <- lm(bp ~ log(pres), data = forbes)
plot(fit3, which=c(2,1))

