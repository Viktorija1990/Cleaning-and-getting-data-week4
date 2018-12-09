# Cleaning-and-getting-data-week4
Project

This document is a codebook that provides description of the performed data clean up.
The Data Source

Downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description of the dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data

The dataset includes the following files:
'README.txt'
'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.
'train/subject_train.txt': the subjects who performed the activity for each window sample. Train set.
'train/subject_test.txt': the subjects who performed the activity for each window sample. Test set.

The resulting data frame is composed of 180 observations (rows).
There is a total of 30 observations for each subject studied. In total, 6 subjects were observed.
•	Column 1 "subject": is a numeric identifier of the subject who performed the activity
•	Column 2 "activity_type": identifies the type of activity performed by the subjects. It's a factor variable and there are 6 possible levels: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS.
•	Columns 3 to 68: these are all numeric variables and represent measurements taken using the accelerometer and gyroscope 3-axial when the subject moved. Only the measurements on the mean and standard deviation have been included.

