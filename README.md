# rProgramming-Assignment4

Read in the tidy_dataset.csv with the following code: read.csv("tidy_dataset.csv")

## Instructions:

* Merge the training and test datasets into one
* Extract only measurements on mean and standard deviation (std)
* Use descriptive activity names for activities in the dataset
* Label the variable names with descriptive names
* Create an independent tidy dataset that contains the average value for each activity and subject

Read in the X_train.txt, y-train.txt, and subject_train.txt files with read.table().  Do the same with the three similar files in the test directory. Combine the three test data files by column in the order of subject, y, and x.  Do the same for the three training data files. Combine these two test and training dataframes by rows that results in one large dataset in which each row represents an individual subject. 

Extract only the columns (activities) that contain a mean or std measurement.  Remember to use the escape character (\) on the special characters. Use subsetting to change the number values representing activities into words for activities.  Use the activity_labels.txt file as the lookup file.  

Use the features.txt file to create descriptive variable names for the dataset.  Use the colnames() and sub() functions to remove special characters from the variable names. Finally, create an independent tidy dataset that contains the average for each variable for each activity and subject.