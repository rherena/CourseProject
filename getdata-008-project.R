setwd("~/Data/datasciencecoursera/GettingAndCleaningData/CourseProject")

testdir <- "./UCI HAR Dataset/test/"
traindir <- "./UCI HAR Dataset/train/"
basedir <- "./UCI HAR Dataset/"

featureslink <- paste(basedir,"features.txt", sep = "")

features <- read.table(featureslink, header = FALSE)


