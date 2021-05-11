#The Spark Foundation
#Task1 preduction using supervised ML



#OBJECTIVE
#To Predict the score of the student by no.of scores they studied
#And to find the score if the student study for 9.25 hrs
#Load the dataset
cat("\f")
getwd()
setwd("D:/datasets")
data=read.csv("scores.csv")
data1=na.omit(data)
print(data1)


#checking the missing values 
print(is.na(data1))


#summaries the data 
summary(data1)

#Create relationship models
relation=lm(Scores~Hours,data)
print(relation)


#summary of the relationship
summary(relation)


#predict the data for given values
relation<-lm(Scores~Hours,data)
a=data.frame(Hours=9.25)
result=predict(relation,a)
print(result)


#visualising regression graphically
#plot the chart
plot(data,pch=10,col="red",main="STUDENT_SCORES",cex=1,xlab="Hours in hr/day",ylab="Scores")
abline(relation)