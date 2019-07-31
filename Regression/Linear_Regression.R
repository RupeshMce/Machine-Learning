setwd("/home/whirldata/Documents/Python_Task/Machine_Learning/Regression")

library(ggplot2)

df<-read.csv("dataset.csv")

head(df)

names(df)<-c("gender","age","head_size","weight_grams")

head(df)


ggplot(df, aes(x=head_size, y=weight_grams)) + geom_point()

scatter.smooth(x=df$head_size, y=df$weight_grams, main="head_size ~ weight_grams")  # scatterplot

cor(df$head_size,df$weight_grams)

linearMod <- lm(head_size ~ weight_grams, data=df)  # build linear regression model on full data

print(linearMod)

summary(linearMod)
