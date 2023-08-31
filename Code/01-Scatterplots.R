# 01 - Scatterplots and Regression ---------------------------------------------

library(alr4)
library(MASS)
library(scatterplot3d)

plot(salary$ysdeg, salary$salary)

plot(salary$ysdeg, salary$salary, 
     xlab = "Years since highest degree earned", 
     ylab = "Salary (dollars per year)", 
     main = "Here is the main title")

plot(salary$ysdeg, salary$salary, 
     xlab = "Years since highest degree earned", 
     ylab = "Salary (dollars per year)", 
     col = salary$rank)

plot(salary$ysdeg, salary$salary, 
     xlab = "Years since highest degree earned", 
     ylab = "Salary (dollars per year)", 
     col = c("cyan", "darkred", "goldenrod")[salary$rank],
     pch = c(1, 3, 5)[salary$rank])
legend("topleft", legend = c("Ast.", "Assoc.", "Prof."), pch = c(1, 3, 5), col = c("cyan", "darkred", "goldenrod"))

plot(log(forbes$pres), forbes$bp)

pairs(salary[,4:6])

scatterplot3d(salary[,4:6])
