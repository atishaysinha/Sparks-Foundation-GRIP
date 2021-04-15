Study <- GRIP_Formatted_Datafile

Hours <- Study$Hours

Scores <- Study$Scores

#Variable Histograms
hist(Hours)
hist(Scores)

#Variable Boxplots
boxplot(Hours, data=Study, main="Hours")
boxplot(Scores, data=Study, main="Scores")

#Correlation between variables
cor(Hours, Scores)

#Linear Regression Model
pred_model <- lm(Scores ~ Hours, data=Study)
print(pred_model)

#Coefficients --> Score = 2.484 + 9.776(Hours)

#If student studies for 9.25 Hours/Day --> Score = 2.484 + 9.776(9.25) = 92.912
