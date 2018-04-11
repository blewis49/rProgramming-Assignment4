## R Programming Assignment 4 - A Tidy Dataset
## Author: William Lewis
## Date: 8 April 2018
## -------------------------------------------
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
      # each row represents an individual subject
      
      merged_training <- cbind(subject_train, y_train, X_train)
      merged_test <- cbind(subject_test, y_test, X_test)
      merged_data <- rbind(merged_test, merged_training)
      colnames(merged_data) <- c("Subjects", "Activities", as.character(features[,2]))

# Step 2: Extract (select) only the columns (activities) that contain a mean or std measurement
      # Use the escape character (\) on the special characters
      
      merged_data_extract <- cbind(merged_data[,1:2], merged_data[,grep("mean\\(\\)", names(merged_data))],
                             merged_data[,grep("std\\(\\)", names(merged_data))])
      
# Step 3: Use descriptive activity names to name the activities in the dataset
      
      activity_labels <- read.table("~/Documents/Programming/R_Programming/UCI HAR Dataset/activity_labels.txt", header = F)
      names(activity_labels) <- c("Index", "Activity") # change the variable names

      # using subsetting, change the number values representing activities into words for activities
      merged_data_extract$Activities <- activity_labels$Activity[merged_data_extract$Activities]
      
# Step 4: Appropriately label the dataset with descriptive variable names
      # use the colnames() and sub() functions to make descriptive variable name changes
      
      colnames(merged_data_extract) <- sub("^t", "time", colnames(merged_data_extract))
      colnames(merged_data_extract) <- sub("^f", "freq", colnames(merged_data_extract))
      colnames(merged_data_extract) <- gsub("\\-", ".", colnames(merged_data_extract))
      colnames(merged_data_extract) <- gsub("\\(\\)", "", colnames(merged_data_extract))

# Step 5: Create an independent tidy dataset with the avg of each variable for each activity and subject
      
      merged_data_extract %>% 
            group_by(Subjects, Activities) %>% 
            summarize_all(mean) %>% 
            ungroup(merged_data_extract) %>% 
            write.csv("tidy_dataset.csv")
      
      
      
      
      