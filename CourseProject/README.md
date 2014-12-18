---
title: "README.md"
author: "Paul"
date: "December 17, 2014"
output: html_document
---

#### run_analysis.R

This script is run on data collected from the accelerometers from the Samsung Galaxy S smartphone.
The script returns a tidy dataset.

You must have the data downladed, and uziped into the main folder that will contain both the script and the data. The script includes commented code to downloand and unzip the dataset incase you don't already have the data.

To run the script, it must be in the same folder that contains the data main folder "UCIHARDataset".
The data folder name "UCIHARDataset" had spaces originally "UCI HAR Dataset", I had to remove the spaces in the name for easier processing of the files. If you have renamed the main dataset folder to something else, make sure that you change it to "UCIHARDataset" before you run this script.

Once you have the 'run_analysis.R' script, and your dataset in a folder named "UCIHARDataset" all 
in one folder, then you can run the script.

#### What the scripts does

The scripts reads in file names from the train folder into a vector variable 'trainfiles', and test file names from the test folder into a vector variable 'testfiles'.

The variable names for the dataset are read from the 'features.txt' file into a vector variable 'varName'.
The variable names are formated into suitable variable names.

The train files are read in, to form single dataframe 'trainset', and the test files are read in, to form a single dataframe 'testset'.
The 'trainset', and 'testset' dataframes are merged into a single dataframe 'Dataset'.

The variable names from 'varNames' are assigned to the variable names of the dataset 'Dataset'

The 'Dataset' dataframe is mutated by extracting only the measurements on the mean and standard deviation for each measurement.

The activities in the data set 'Dataset', are given descriptive activity names.
The activity labels are read from 'activity_labels.txt' file into a vector 'activitylabels' which is assigned to the descriptive activity names.

Appropriately label the data set with descriptive variable name by changing the variable names to meaningful names.
This is done by changing all the 't', and 'f' at the begining of the variable names to 'time', and 'freq' respectively.
Also removed any repetition of the word 'Body'.

Finally, creating a second, independent tidy data set 'Dataset2' with the average of each variable for each activity and each subject.
The second dataset will be put in the same main folder that holds the script, and the original dataset. 

