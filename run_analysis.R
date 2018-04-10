## R Programming Assignment 4
## Author: William Lewis
## Date: 8 April 2018
#############################
library(dplyr)

# Step 1: Merge the training and test data into one dataset
# Read in the x, y, subject data for both test and training with read.table()
      X_train <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/train/X_train.txt", header = F)
      y_train <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/train/y_train.txt")
      subject_train <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/train/subject_train.txt")
      features <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/features.txt")
      subject_test <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/test/subject_test.txt")
      y_test <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/test/y_test.txt")
      X_test <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/test/X_test.txt", header = F)

# combine the test data by column in the order of subject, y, and x.  Do the same for training data
# combine the test and training data by rows that results in one large dataset
# each row represent an individual subject
      merged_training <- cbind(subject_train, y_train, X_train)
      merged_test <- cbind(subject_test, y_test, X_test)
      merged_data <- rbind(merged_test, merged_training)
      names(merged_data) <- c("Subjects", "Activities", as.character(features[,2]))

# Step 2: Extract (select) only the columns (measurements) that contain a mean or std measurement
      merged_data[,grep("mean()", names(merged_data))] # code to extract column names with mean()
      merged_data[,grep("std()", names(merged_data))] # code to extract column names with std()
      merged_data[,1:2] # code to extract the first two columns
# extract only measurements with mean() and std() in the names
      merged_data_extract <- cbind(merged_data[,1:2], merged_data[,grep("mean()", names(merged_data))],
                             merged_data[,grep("std()", names(merged_data))])

# Step 3: Use descriptive activity names to name the activities in the dataset
      activity_labels <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/activity_labels.txt", header = F)
      names(activity_labels) <- c("Index", "Activity") # change the variable names
# using subsetting, change the number values representing activities into words for activities
      merged_data_extract$Activities <- activity_labels$Activity[merged_data_extract$Activities]

# Step 4: Appropriately label the dataset with descriptive variable names
# use colnames and sub to make variable name changes
      colnames(merged_data_extract) <- sub("t", "time.", colnames(merged_data_extract))  
      colnames(merged_data_extract) <- sub("f", "frequency.", colnames(merged_data_extract))

sub("()", "", colnames(merged_data_extract))
sub("-", ".", colnames(merged_data_extract))






