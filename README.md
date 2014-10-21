# Read Me file for .R Script

## Important thing to do before executing the run_analysis.R

1. column names.csv and averagecolumn names.csv which were submitted along with this file and .R script must be downloaded into the R working directory. 

## Step 1: Merging data into one data set

1. Create a directory "data" in the R working direcory
2. assign the file url to dataset_url
3. Download the zip file as "UCI HAR Dataset.zip"
4. Unzip the file into the data directory "~/data" 
5. read the features file as a table
6. convert the features table as a vector.
### Extracting the test data

1. read the X_test using read.table () and assign it to x_test
2. read the y_test and assign it to activity_test
4. read the subject_test using read.table () and assign it to subject_test

### Extracting the train data

1. read the X_train using read.table () and assign it to x_train
2. read the y_train and assign it to activity_train
4. read the subject_train using read.table () and assign it to subject_train

### Merging data
1. merge test and train data for each set using rbind()
        * merge x_test, x-train and assign it as x_data
        * merge activity_test and activity_train and assign it as activity_data
        * merge subject_test and subject_train and assign it as subject_data
2. merge activity_data, subject_data and x_data using cbind() and assign it as merged_data
3. assign names to the columns as c("activity", "subject", features)

## step 2: Extracting only the measurements on the mean and standard deviation for each measurement.

1. extract the coulmns contain "mean" using grep() and assign it to data_mean
2. extract the coulmns contain "Mean" using grep() and assign it to data_Mean
3. extract the coulmns contain "std" using grep() and assign it to data_std
4. extract the coulmns contain "Std" using grep() and assign it to data_Std
5. data_Std does not contain any data (0 columns)
6. printing data_Mean reveals that it contain data that belongs to "angle" measurement, which is not a mean or std of any measurement.
7. so, only data_mean and data_std provides the required data set.
8. merge data_mean and data_std using cbind() and assign it as data_mean_std

## Step 3: Assigning descriptive activity names to name the activities in the data set

1. assign descriptive activity names to data_mean_std$activity using factor()

## Step 4: Appropriately labeling the data set with descriptive variable names.

1. read the .csv file column names in the working directory (contains descriptive names for the variables: see code book.md) and assign it as columnnames
2. assign the descriptive names to the columns as c("activity", "subject", columnnames)


## step 5: Generating final independent tidy data set  with the average of each variable for each activity and each subject.

1. install the dplyr package using install.packages()
2. load the library of dplyr package using library()
3. convert the data_mean_std data frame into a data frame table using tbl_df()
3. grouping the data based on activity and subject using group_by() and assign it to grouped_data
4. averaging the each variable (except subject and activity) of the grouped_data using summarise_each()
5. read the .csv file averagecolumn names in the working directory as avgcolnames
6. change the names of the columns appropriately using avgcolnames
7. finally, generate tidydata file in the working directory using write.table()


