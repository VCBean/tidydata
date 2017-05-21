## Read in data; assumes test and train directories
## are in the working directory
library(plyr)
library(reshape2)
xtest <-read.table(".\\test\\X_test.txt") 
ytest <-read.table(".\\test\\y_test.txt")
subjecttest <-read.table(".\\test\\subject_test.txt")
xtrain <-read.table(".\\train\\X_train.txt")
ytrain <-read.table(".\\train\\y_train.txt")
subjecttrain <-read.table(".\\train\\subject_train.txt")
activity_labels <-read.table("activity_labels.txt")
features <-read.table("features.txt")

##Rename test and train columns with features
names(xtest) <- features[,2]
names(xtrain) <- features[,2]

##Rename ytest and ytrain column to "activity"
ytest <- rename(ytest, c("V1" = "activity"))
ytrain <- rename(ytrain, c("V1" = "activity"))

##Rename subjecttest and subjecttrain column to "subject"
subjecttest <- rename(subjecttest, c("V1" = "subject"))
subjecttrain <- rename(subjecttrain, c("V1" = "subject"))

##Merge subject, activity, and data for test and train data
testdata <- data.frame(subjecttest, ytest, xtest)
traindata <- data.frame(subjecttrain, ytrain, xtrain)

##Merge test and train data
alldata <- rbind(testdata, traindata)

##Change activity column to factor and make factors descriptive
alldata$activity <- as.factor(alldata$activity)
alldata$activity <- revalue(alldata$activity, c("1" = "walking", "2" = "walking_upstairs",
                        "3" = "walking_downstairs", "4" = "sitting", "5" = "standing", "6" = "laying"))

##Change column names to lower case and replace dots
names(alldata) <- tolower(names(alldata))
names(alldata) <- gsub("\\.", "", names(alldata))

##Extract mean and standard deviation columns
meanstddata <- data.frame(alldata[,1:2], alldata[, grepl("mean", names(alldata))], 
                          alldata[, grepl("std", names(alldata))])

##Change subject column to factor
meanstddata$subject <- as.factor(meanstddata$subject)

#Create a dataset with the average of each variable for each activity and each subject
meltdata <- melt(meanstddata, id.vars=1:2, measure.vars = 3:88) 
tidied <- dcast(meltdata, subject + activity ~ variable, mean)

#Replace "bodybody" in variable names with "body"
gsub("bodybody","body",names(tidied))

write.table(tidied, file = "Tidied_Data.csv", sep = ",")

##read.table("Tidied_Data.csv", header = TRUE, sep = ",") ##To read tidied dataset
