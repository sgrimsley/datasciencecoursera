## Program to create a tidy dataset with the following requirements:
## 		Merge the training and the test sets to create one data set
## 		Assign descriptive activity names to activities in the dataset
## 		Labels dataset with descriptive variable names
## 		Extract measurements on the mean and standard deviation
## 		Write out file containing the average of each extracted variable for each activity and subject
##
## Program should be run from within the UCI HAR Dataset folder:
## 		Human Activity Recognition Using Smartphones Dataset, Version 1.0
## 		Reference: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
## 		Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
## 		International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
## 		Project site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##      Data download: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## 
## Read in the results using: read.table("result.txt", header=TRUE)

run_analysis <- function() {

library(dplyr)

## read in activity labels and features
	activity_labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE) 
	features <- read.table("features.txt", stringsAsFactors=FALSE)

## read in and combine test data
	X_test <- read.table("test\\X_test.txt", stringsAsFactors=FALSE)   ## test data
	subject_test <- read.table("test\\subject_test.txt", stringsAsFactors=FALSE)  ## subject for test
	Y_test <- read.table("test\\Y_test.txt", stringsAsFactors=FALSE)  ## activity for test
	test <- cbind(subject_test, Y_test, X_test)

## read in and combine training data
	X_train <- read.table("train\\X_train.txt", stringsAsFactors=FALSE)  ## training data
	subject_train <- read.table("train\\subject_train.txt", stringsAsFactors=FALSE)  ## subject for train
	Y_train <- read.table("train\\Y_train.txt", stringsAsFactors=FALSE)  ## activity for train
	train <- cbind(subject_train, Y_train, X_train)

## combine test and training data
	data_tt <- rbind(test, train)

## assign variable names from features
	vars <- c("Subject","Activity",features$V2)
	colnames(data_tt)<- vars

## update variable names to be more descriptive
## remove illegal characters
	colnames(data_tt)<- make.names(colnames(data_tt), unique =TRUE)
## fix duplicate
	colnames(data_tt) <- gsub("BodyBody", "Body", colnames(data_tt),ignore.case=TRUE) 
## remove excess periods (created by make.names)
	colnames(data_tt) <- gsub("\\.\\.\\.", ".", colnames(data_tt)) 
	colnames(data_tt) <- gsub("\\.\\.", ".", colnames(data_tt)) 
	colnames(data_tt) <- gsub("\\.$", "", colnames(data_tt)) 
## elaborate name from abbreviation for uncommon terms
	colnames(data_tt) <- sub("^t", "time", colnames(data_tt),ignore.case=TRUE) ## t at start
	colnames(data_tt) <- sub("^f", "frequency", colnames(data_tt),ignore.case=TRUE)  ## f at start
	colnames(data_tt) <- gsub("Acc", "Acceleration", colnames(data_tt),ignore.case=TRUE) 
	colnames(data_tt) <- gsub("iqr", "InterquartileRange", colnames(data_tt)) 
	colnames(data_tt) <- gsub("Mag", "Magnitude", colnames(data_tt)) 
	colnames(data_tt) <- gsub("sma", "SignalMagnitudeArea", colnames(data_tt)) 
	colnames(data_tt) <- gsub("maxInds", "MaxIndex", colnames(data_tt)) 
	colnames(data_tt) <- gsub("std", "StandardDeviation", colnames(data_tt)) 
	colnames(data_tt) <- gsub("mad", "MedianAbsoluteDeviation", colnames(data_tt))  
	colnames(data_tt) <- gsub("tBody", "timeBody", colnames(data_tt)) 

## assign descriptive activity label
	for(i in seq_along(data_tt$Activity)) {
		data_tt$Activity[i] <- activity_labels$V2[which(activity_labels$V1 == data_tt$Activity[i])]
}

## extract measurements on the mean and standard deviation.  excludes meanFreq (not a mean)		
	data_sel <-	select(data_tt, +Activity, +Subject, +contains("mean",ignore.case=TRUE), 
			-contains("meanFreq",ignore.case=TRUE),
			+contains("StandardDeviation",ignore.case=TRUE))
		
## calculate average for each activity and each subject, for extracted measurements (data_sel)
	data_sel %>%
		group_by(Activity, Subject) %>%
			summarise_each(funs(mean)) %>%
				write.table(file="result.txt",row.name=FALSE)

}
