
library(data.table)
a
# Import datasets
X_train <- read.table('./train/X_train.txt')
Y_train <- read.table('./train/Y_train.txt')
subject_train <- read.table('./train/subject_train.txt')

X_test <- read.table('./test/X_test.txt')
Y_test <- read.table('./test/Y_test.txt')
subject_test <- read.table('./test/subject_test.txt')

activity_labels <- read.table('./activity_labels.txt')
features <- read.table('./features.txt')

# Extract colnames as vector
features <- as.data.table(features)
colnames <- as.character(features[, V2])

# Merge data 1
merged <- rbind(X_train,X_test)
subject_merged <- rbind(subject_train,subject_test)
merged_act <- rbind(Y_train,Y_test)

# Replace column names
colnames(merged) <- colnames
colnames(merged_act) <- 'activity_type'
colnames(subject_merged) <- 'subject'

# Merge data 2
total <- cbind(merged,merged_act,subject_merged)

# Selec colums containing mean and std in the name
select <- total[ , grep('mean\\(\\)|std\\(\\)|activity|subject', names(total) )  ]

# Calculate mean for selected columns by activity_type and subject
summary <- setDT(select)[, lapply(.SD, mean), by = list(activity_type, subject) ]
summary <- summary[ order(  summary[ , subject], summary[ , activity_type] ) ]
