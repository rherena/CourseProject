setwd("~/Data/datasciencecoursera/GettingAndCleaningData/CourseProject")
library(downloader)

library(dplyr)
library(reshape2)

ziplink <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## checks if main data was downloaded
if(!file.exists("./UCI HAR Dataset")){
        download(ziplink,dest="projectdataset.zip",mode = "wb")
        unzip("projectdataset.zip",exdir = "./")
        }




### sets dir
testdir <- "./UCI HAR Dataset/test/"
traindir <- "./UCI HAR Dataset/train/"
basedir <- "./UCI HAR Dataset/"
### gets names of activities
activitylabelslink <- paste(basedir,"activity_labels.txt", sep = "")
### names of activities and applys column names
featureslink <- paste(basedir,"features.txt", sep = "")




testsubjectlink <- paste(testdir,"subject_test.txt", sep = "")
testxlink <- paste(testdir,"X_test.txt", sep = "")
testylink <- paste(testdir,"y_test.txt", sep = "")

trainsubjectlink <- paste(traindir,"subject_train.txt", sep = "")
trainxlink <- paste(traindir,"X_train.txt", sep = "")
trainylink <- paste(traindir,"y_train.txt", sep = "")


### reads in activity labels and feature lables. 
activitylabels <- read.table(activitylabelslink, header = FALSE)
colnames(activitylabels) <- c("activity","nameoflabel")

### gets feature names
features <- read.table(featureslink, header = FALSE)
colnames(features) <- c("NumberLocation","FeatureMeasurement")
## creates two new columns to get mean() and std() values.
features$measuredvalue = as.character(lapply(strsplit(as.character(features$FeatureMeasurement), split="-"), "[", 1))
features$measuretype = as.character(lapply(strsplit(as.character(features$FeatureMeasurement), split="-"), "[", 2))
### put into dplyr tbl_df frame


### extracts the names of the columns that are req'd and full list.
featuresnames <- tbl_df(features)
featuresnames <- filter(featuresnames, measuretype == "mean()" |  measuretype == "std()")

colnamesnum <- as.numeric(featuresnames$NumberLocation)
colnamestext <- as.vector(featuresnames$FeatureMeasurement)

### reads in all of the test data
### reads in the subject numbers 
testsubject <- read.table(testsubjectlink, header = FALSE)
### reads in the measurement data
testx <- read.table(testxlink, header = FALSE)
### reads in the activity type
testy <- read.table(testylink, header = FALSE)
testx <- tbl_df(testx)
## create subset of mean() and std() values
testxnew <- select(testx, (colnamesnum))

## apply column names last because the text sucks.
colnames(testxnew) <- colnamestext

## apply test subjects and activities into one data set
testxnew$subjectnumber <- testsubject$V1
testxnew$activity <- testy$V1


### reads in all training data
trainsubject <- read.table(trainsubjectlink, header = FALSE)
trainx <- read.table(trainxlink, header = FALSE)
trainy <- read.table(trainylink, header = FALSE)
## selects mean() and std() vals, appends subjects and features
trainx <- tbl_df(trainx)
trainxnew <- select(trainx, (colnamesnum))
colnames(trainxnew) <- colnamestext
trainxnew$subjectnumber <- trainsubject$V1
trainxnew$activity <- trainy$V1
## merges the two sets

mergedtrain_test <- merge(trainxnew, testxnew,all=TRUE)
library(plyr)
### Updates activity labels
mergedtrain_test <- join(mergedtrain_test, activitylabels, by = "activity")
write.table(mergedtrain_test, "./MergedDataSet_Full.txt",col.names = TRUE, row.names = TRUE)

### Melt data frame
##From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
## Activity Then Subject. 




MeltedFinal <- melt(mergedtrain_test,id = c("subjectnumber","activity","nameoflabel"))

SummarizedFinal <- ddply(MeltedFinal,.(subjectnumber, nameoflabel, variable),summarize, 
                         AverageValue = mean(value))

write.table(SummarizedFinal, "./SummarizedFinal.txt",col.names = TRUE, row.names = FALSE)








