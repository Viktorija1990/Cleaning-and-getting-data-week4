CodeBook Description
This document is a codebook that provides description of the performed data clean up.

Description of variable can be found in Readme file.

Data transformation and manipulation
The analysis includes the following steps:
1.	Reading data from each single .txt file using the read.table command
2.	Merge train and test data using the rbind function.
3.	Assign feature names to their correspondent values (colnames), and finally add the feature column to the merged data set.
4.	Merging data from step 3 with activity type and subject using cbind function.
5.	Subset only measurement of the mean and standard deviation using grep function.
6.	Create a new idependent data set (called summary) with the average of each variable for each activity and each subject, using the lapply function.
7.	Sorting results using order functiion.
8.	Write the resulting data set into a .txt file names "tidydata.txt".
