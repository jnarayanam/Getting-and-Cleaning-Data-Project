if(!file.exists("data")) {dir.create("data")}
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, destfile = "UCI HAR Dataset.zip")
unzip("UCI HAR Dataset.zip", exdir = "~/data")
features <- read.table("~/data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
features <- features$V2
x_test <- read.table("~/data/UCI HAR Dataset/test/X_test.txt")
activity_test <- read.table("~/data/UCI HAR Dataset/test/y_test.txt")
names(activity_test) <- "activity"
subject_test <- read.table("~/data/UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- "subject"
x_train <- read.table("~/data/UCI HAR Dataset/train/X_train.txt")
activity_train <- read.table("~/data/UCI HAR Dataset/train/y_train.txt")
names(activity_train) <- "activity"
subject_train <- read.table("~/data/UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- "subject"
x_data <- rbind(x_test, x_train)
activity_data <- rbind(activity_test, activity_train)
subject_data <- rbind(subject_test, subject_train)
merged_data <- cbind(activity_data, subject_data, x_data)
names(merged_data) <- c("activity", "subject", features)
data_mean <- merged_data[, grep("mean", names(merged_data))]
data_std <- merged_data[, grep("std", names(merged_data))]
data_Mean <- merged_data[, grep("Mean", names(merged_data))]
data_Std <- merged_data[, grep("Std", names(merged_data))]
data_mean_std <- cbind(activity_data, subject_data, data_mean, data_std)
data_mean_std$activity <- factor(data_mean_std$activity, levels = 1:6, labels = c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING'))
columnnames <- read.csv("~/column names.csv", header = FALSE, stringsAsFactors = FALSE)
names(data_mean_std) <- c("activity", "subject", columnnames$V1)
library(dplyr)
data_mean_std_tbldf <- tbl_df(data_mean_std)
grouped_data <- group_by(data_mean_std_tbldf, activity, subject)
mean_grouped_data <- summarise_each(grouped_data, funs(mean), -c(1,2))
avgcolnames <- read.csv("~/averagecolumn names.csv", header = FALSE, stringsAsFactors = FALSE)
names(mean_grouped_data) <- c("activity", "subject", avgcolnames$V1)
write.table(mean_grouped_data, "Tidydata", row.names = FALSE) 