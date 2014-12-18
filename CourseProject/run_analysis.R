## Required packages to run the script
library(downloader)
library(dplyr)
library(plyr)
library(tidyr)
library(reshape2)

## If you need to download the Dataset, use the commented code bellow.
## Downloading the Dataset from url 
## "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## urlFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## Get date stamp when files were downloaded
## TimeStamp <- Sys.time()
## TimeStamp
## Download Dataset to the Data folder
## download(urlFile,"Data/Dataset.zip")
## unzip("Data/Dataset.zip")

## Read the test files into testfiles list variable
testfiles <- list.files('UCIHARDataset/test',full.names = T)

## Remove the Inertial Signals file
testfiles <- testfiles[-1]

## Rearrange the files in the testfiles list in this order (X_test,subject_test,y_test)
testfiles <- c(testfiles[2],testfiles[1],testfiles[3])

## Read the train files into trainfiles list variable
trainfiles <- list.files('UCIHARDataset/train',full.names = T)

## Remove the Inertial Signals file
trainfiles <- trainfiles[-1]

## Rearrange the files in the trainfiles list in this order (X_train,subject_train,y_train)
trainfiles <- c(trainfiles[2],trainfiles[1],trainfiles[3])

## Read the variable names for the dataset from the 'features.txt' file into varName variable
varNames <- read.table("UCIHARDataset/features.txt",as.is = T)[[2]]

## Format the variable names in varName 
varNames <- gsub("\\(\\)","",varNames) # remove all "(",")" from variable names
varNames <- gsub("-","",varNames)      # remove all "-" from variable names
varNames <- gsub(",","",varNames)      # remove all "," from variable names
varNames <- gsub("\\(","",varNames)    # remove all "(" from variable names
varNames <- gsub("\\)","",varNames)    # remove all ")" from variable names

## Read the trainset data from files ('X_train','subject_train','y_train'), 
## and merge them into one dataframe trainset.
filecount <- 1
trainset <- data.frame()
for(i in trainfiles){
        fileDataframe <- read.table(i,as.is = T)
        ifelse(filecount == 1, trainset <- rbind(trainset,fileDataframe), trainset <- cbind(trainset,fileDataframe))
        filecount <- filecount + 1
}
dim(trainset)

## Read the testset data from files ('X_test','subject_test','y_test'), 
## and merge them into one dataframe testset.
filecount <- 1
testset <- data.frame()
for(i in testfiles){
        fileDataframe <- read.table(i,as.is = T)
        ifelse(filecount == 1, testset <- rbind(testset,fileDataframe), testset <- cbind(testset,fileDataframe))
        filecount <- filecount + 1
}
dim(testset)

## Merge the trainset and testset dataframe into one dataframe "Dataset"
Dataset <- rbind(trainset,testset)
dim(Dataset)

## Add two variable names c('Subject','Activity') to the variable names vector 'varNames'
varNames <- c(varNames,c('Subject','Activity'))
length(varNames)

# Assign the variable names from 'varNames' to the variable names of the dataset 'Dataset'
names(Dataset) <- varNames
head(names(Dataset))
dim(Dataset)

## Extracts only the measurements on the mean and standard deviation for each measurement
indices <- c(grep('mean',varNames),grep('Mean',varNames),grep('std',varNames),
        grep('Subject',varNames),grep('Activity',varNames))
indices <- indices[order(indices)]
Dataset <- Dataset[,indices]
dim(Dataset)

## Descriptive activity names to name the activities in the data set
## Read the activity labels from the 'activity_labels.txt' file into a vector 'activitylabels
activitylabels <- read.table("UCIHARDataset/activity_labels.txt",header = F,as.is = T)[[2]]
Dataset$Activity <- factor(Dataset$Activity,labels = activitylabels)

## Appropriately label the data set with descriptive variable names
varNames <- names(Dataset)
varNames <- sub('^t','time',varNames)
varNames <- sub('anglet','angletime',varNames)
varNames <- sub('^f','freq',varNames)
varNames <- sub("BodyBody","Body",varNames)
names(Dataset) <- varNames

## Creating a second, independent tidy data set 'Dataset2'
## with the average of each variable for each activity and each subject
moltenData <- melt(Dataset, id.vars = c("Activity", "Subject"))
Dataset2 <- dcast(Subject + variable ~ Activity, data = moltenData, fun = mean)
write.table(x = Dataset2,"Dataset2.txt",row.names = F)
