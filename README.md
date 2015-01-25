## Course Project: Getting and Cleaning Data

###Program (run_analysis) creates a tidy dataset with the following requirements:
* Merge the training and the test sets to create one data set (data reference below)
* Assign descriptive activity names to activities in the dataset
* Label dataset with descriptive variable names
* Extract measurements on the mean and standard deviation
* Write out file containing the average of each extracted variable for each activity and subject

Program should be run from within the UCI HAR Dataset folder.  dplyr package required.  
Read in the results using: read.table("result.txt", header=TRUE)
See codebook for variable descriptions.

###Data reference
Human Activity Recognition Using Smartphones Dataset, Version 1.0
Reference: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
Project site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data download: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
