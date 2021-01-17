
# Getting and Cleaning Data Course Project

#Set your working directory
setwd("D:/Coursera/R/Course_3")

# Downloading the data
if(!file.exists("data")){dir.create("data")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,dest="dataset.zip", mode="wb")
unzip("dataset.zip", exdir = "data")

# Extract only the measurements on the mean and standard deviation for each measurement. 
features <- read.csv("./data/UCI HAR Dataset/features.txt", sep="", header=FALSE)
features_to_keep_row <- grep("mean()|std()|meanFreq()", features$V2)
features_to_keep <- grep("mean()|std()|meanFreq()", features$V2, value=TRUE)

# Appropriately label the data set with descriptive variable names. 
features_to_keep <- gsub('-mean','Mean',features_to_keep)
features_to_keep <- gsub('-std','StandardDeviation',features_to_keep)
features_to_keep <- gsub('^t','Time',features_to_keep)
features_to_keep <- gsub('^f','Frequency',features_to_keep)
features_to_keep <- gsub('Mag','Magnitude',features_to_keep)
features_to_keep <- gsub('GyroJerk','AngularVelocity',features_to_keep)
features_to_keep <- gsub('AccJerk','LinearAcceleration',features_to_keep)
features_to_keep <- gsub('Acc','Acceleration',features_to_keep)
features_to_keep <- gsub('[-()]','',features_to_keep)

# Merge the training and the test sets to create one data set.

# Reading in the training data sets and binding them together
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
Y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[features_to_keep_row]
train <- cbind(subject_train, Y_train, X_train)

# Reading in the test data sets and binding them together
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
Y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[features_to_keep_row]
test <- cbind(subject_test, Y_test, X_test)

#joining the training and the test data
all_data <- rbind(train, test)
colnames(all_data) <- c("Subject", "Activity", features_to_keep)

# Use descriptive activity names to name the activities in the data set
# (I am using the list of activity labels)
all_data[, 2] <- read.table("./data/UCI HAR Dataset/activity_labels.txt")[all_data[, 2], 2]

# Create a second, independent tidy data set with the average of each variable for each activity and each subject.
mean_data<-aggregate(. ~Subject + Activity, all_data, mean)
mean_data<-mean_data[order(mean_data$Subject,mean_data$Activity),]
write.table(mean_data, file = "tidydata.txt",row.name=FALSE)
