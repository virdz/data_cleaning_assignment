## This script is to read, merge and filter data from a smartphone recorded while a experiment.

## initialize environment
setwd("D:\\Workspace/coursera/data cleaning/ProgrammingAssignment/")
library(dplyr)
rm(list = ls())

## read the data into particular DFs
#unzip("UCI HAR Dataset.zip")
test.x <- read.table("UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("UCI HAR Dataset/test/y_test.txt")
train.y <- read.table("UCI HAR Dataset/train/y_train.txt")
train.x <- read.table("UCI HAR Dataset/train/X_train.txt")
train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

activitylables<- read.table("UCI HAR Dataset/activity_labels.txt", sep = " ", header = F)
names(activitylables) <- c("activityID","activityLable")
featurenames <- read.table("UCI HAR Dataset/features.txt")
names(featurenames) <- c("featureIdx","featureName")

# Merges the training and the test sets to create one data set.

train <- data.frame(train.subject, train.y, train.x)
test <- data.frame(test.subject, test.y, test.x)
data <- union(train,test)
names(data)[1:2] <- c("subject", "activityID")
step1 <- data
rm(list = c(ls(pattern = "train"), ls(pattern = "test")))

# Extracts only the measurements on the mean and standard deviation for each measurement.
step2 <- data[,c(F,F,grepl("mean|std", featurenames$featureName))]

# Uses descriptive activity names to name the activities in the data set
data <- step3 <- merge(data, activitylables)

# Appropriately labels the data set with descriptive variable names.
names(data)[1:length(c(names(data)[1:2], as.character.factor(featurenames[[2]])))] <- c(names(data)[1:2], as.character.factor(featurenames[[2]]))

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
step4 <- aggregate(data[-c(1,2,564)], by = list(subject = data$subject, activityID = data$activityLable), FUN = mean)

# Output for submission
write.table(x = step4, file = "submission.txt", col.names = F)

