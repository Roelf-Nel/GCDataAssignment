## run_analysis.R
## Coursera Course 3 - Getting & Cleaning Data

library(dplyr)

# read all datasets

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("featurecode","feature"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activitycode", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activitycode")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activitycode")

# 1. merge the training and test sets into 1 dataset --------------------------------------------------------
# firstly merge train and test rows

subject_all <- rbind(subject_test, subject_train)
x_all <- rbind(x_test, x_train)
y_all <- rbind(y_test, y_train)

# then join all tables

all_data <- cbind(subject_all, y_all, x_all)


# 2. extract only the measurements on mean and standard deviation for each set ------------------------------

meanstd_data <- all_data %>% select(subject, activitycode, contains("mean"), contains("std"))


# 3. use descriptive activity names to name the activieties in the dataset ----------------------------------

meanstdactivity_data = merge(meanstd_data, activities, by='activitycode', all.x=TRUE)


# 4. appropriately label the dataset with descriptive variable names ----------------------------------------

names(meanstdactivity_data)<-gsub("activitycode", "ActivityCode", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("activity", "Activity", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("subject", "Subject", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("Acc", "Accelerometer", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("Gyro", "Gyroscope", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("BodyBody", "Body", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("Mag", "Magnitude", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("^t", "Time", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("^f", "Frequency", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("tBody", "TimeBody", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("-mean()", "Mean", names(meanstdactivity_data), ignore.case = TRUE)
names(meanstdactivity_data)<-gsub("-std()", "StandardDeviation", names(meanstdactivity_data), ignore.case = TRUE)
names(meanstdactivity_data)<-gsub("-freq()", "Frequency", names(meanstdactivity_data), ignore.case = TRUE)
names(meanstdactivity_data)<-gsub("angle", "Angle", names(meanstdactivity_data))
names(meanstdactivity_data)<-gsub("gravity", "Gravity", names(meanstdactivity_data))


# 5.  create a second, independent tidy data set with the average of each variable for each activity and each subject

grouped_means <- meanstdactivity_data %>% group_by(Activity, Subject) %>% summarize_all(list(mean=mean))
write.table(grouped_means, file="grouped_means.txt",row.names = FALSE, col.names = TRUE)



