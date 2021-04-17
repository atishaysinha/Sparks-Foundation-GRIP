#Name: Atishay Sinha

Study <- GRIP_Formatted_Datafile

Hours <- Study$Hours

Scores <- Study$Scores

#Storing the table and its variables within variables in R

#Variable Histograms
hist(Hours)
hist(Scores)

#Variable Boxplots
boxplot(Hours, data=Study, main="Hours")
boxplot(Scores, data=Study, main="Scores")

#Correlation between variables
cor(Hours, Scores)

#Checking assumptions before setting up/running linear model

#Linear Regression Model
pred_model <- lm(Scores ~ Hours, data=Study)
print(pred_model)

#Linear model set up and run

#Coefficients --> Score = 2.484 + 9.776(Hours)

#If student studies for 9.25 Hours/Day --> Score = 2.484 + 9.776(9.25) = 92.912

#Final results from the model after putting coefficient values into equation to generate prediction
