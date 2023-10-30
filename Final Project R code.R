#Loading libraries, reading in the dataset
library(tidyverse)
library(car)
dataset <- read_csv("D:/world-happiness-report-2021.csv")


#description of all of the variables
boxplot(dataset$"Ladder score")
hist(dataset$"Ladder score")
mean(dataset$"Ladder score")
median(dataset$"Ladder score")
range(dataset$"Ladder score")
quantile(dataset$"Ladder score")
qqnorm(dataset$`Ladder score`, main = "Normal QQ plot Ladder score")



boxplot(dataset$"Logged GDP per capita")
hist(dataset$"Logged GDP per capita")
mean(dataset$"Logged GDP per capita")
median(dataset$"Logged GDP per capita")
range(dataset$"Logged GDP per capita")
quantile(dataset$"Logged GDP per capita")
qqnorm(dataset$`Logged GDP per capita`, main = "Normal QQ plot for Logged GDP per capita")



Sboxplot(dataset$"Social support")
hist(dataset$"Social support")
mean(dataset$"Social support")
median(dataset$"Social support")
range(dataset$"Social support")
quantile(dataset$"Social support")
qqnorm(dataset$`Social support`)

boxplot(dataset$"Healthy life expectancy")
hist(dataset$"Healthy life expectancy")
mean(dataset$"Healthy life expectancy")
median(dataset$"Healthy life expectancy")
range(dataset$"Healthy life expectancy")
quantile(dataset$"Healthy life expectancy")
qqnorm(dataset$`Healthy life expectancy`)


boxplot(dataset$"Freedom to make life choices")
hist(dataset$"Freedom to make life choices")
mean(dataset$"Freedom to make life choices")
median(dataset$"Freedom to make life choices")
range(dataset$"Freedom to make life choices")
quantile(dataset$"Freedom to make life choices")
qqnorm(dataset$`Freedom to make life choices`)


boxplot(dataset$"Generosity")
hist(dataset$"Generosity")
mean(dataset$"Generosity")
median(dataset$"Generosity")
range(dataset$"Generosity")
quantile(dataset$"Generosity")
qqnorm(dataset$Generosity, main = "Normal QQ line for Generousity")


boxplot(dataset$"Perceptions of corruption")
hist(dataset$"Perceptions of corruption")
mean(dataset$"Perceptions of corruption")
median(dataset$"Perceptions of corruption")
range(dataset$"Perceptions of corruption")
quantile(dataset$"Perceptions of corruption")
qqnorm(dataset$`Perceptions of corruption`, main = "Normal QQ line for Perception of corruption")


#We now look at the code corresponding to the research questions:

#REASERCH QUESTION 1
correlation <- cor(dataset$"Logged GDP per capita", dataset$"Ladder score", use = "complete.obs", method = "pearson")
cat("Pearson Correlation Coefficient:", correlation, "\n")
# Create a scatter plot
plot(dataset$"Logged GDP per capita", dataset$"Ladder score", 
     xlab = "Log GDP per capita", ylab = "Happiness Score",
     main = "Relationship between GDP per capita and Happiness Scores", 
     col = "blue", pch = 20, cex = 0.6)

# Add a linear regression line
fit <- lm(dataset$"Ladder score" ~ dataset$"Logged GDP per capita", data = dataset)
abline(fit, col = "red", lwd = 2)
correlation




#REASERCH QUESTION 2
median_corruption <- median(dataset$"Perceptions of corruption", na.rm = TRUE)
low_corruption <- dataset[dataset$"Perceptions of corruption" <= median_corruption,]
high_corruption <- dataset[dataset$"Perceptions of corruption" > median_corruption,]
t_test <- t.test(low_corruption$"Generosity", high_corruption$"Generosity", var.equal = TRUE)
print(t_test)

var(low_corruption)
var(high_corruption)




#REASERCH QUESTION 3
model <- lm(dataset$"Ladder score" ~ dataset$"Logged GDP per capita" + dataset$"Social support" + dataset$"Healthy life expectancy" + dataset$"Freedom to make life choices" + dataset$"Generosity" + dataset$"Perceptions of corruption", data = dataset)
summary(model)
qqnorm(model$residuals, main = "QQnorm for the residuals")
vif(model)
reduced_model <- step(model)
summary(reduced_model)
