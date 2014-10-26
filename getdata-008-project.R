setwd("~/Data/datasciencecoursera/GettingAndCleaningData/CourseProject")

testdir <- "./UCI HAR Dataset/test/"
traindir <- "./UCI HAR Dataset/train/"
basedir <- "./UCI HAR Dataset/"

activitylabelslink <- paste(basedir,"activity_labels.txt", sep = "")
featureslink <- paste(basedir,"features.txt", sep = "")

testsubjectlink <- paste(testdir,"subject_test.txt", sep = "")
testxlink <- paste(testdir,"X_test.txt", sep = "")
testylink <- paste(testdir,"y_test.txt", sep = "")

trainsubjectlink <- paste(traindir,"subject_train.txt", sep = "")
trainxlink <- paste(traindir,"X_train.txt", sep = "")
trainylink <- paste(traindir,"y_train.txt", sep = "")

activitylabels <- read.table(activitylabelslink, header = FALSE)
features <- read.table(featureslink, header = FALSE)

testsubject <- read.table(testsubjectlink, header = FALSE)
testx <- read.table(testxlink, header = FALSE)
testy <- read.table(testylink, header = FALSE)

trainsubject <- read.table(trainsubjectlink, header = FALSE)
trainx <- read.table(trainxlink, header = FALSE)
trainy <- read.table(trainylink, header = FALSE)



