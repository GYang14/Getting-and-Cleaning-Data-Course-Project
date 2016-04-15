# Introduction
1. Downloads raw file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzips the file into working directory.
2. Loads the training (`X_train.txt`, `y_train.txt` and `subject_train.txt` from folder `./UCI HAR Dataset/train`) and the test sets (`X_test.txt`, `y_test.txt` and `subject_test.txt` from folder `./UCI HAR Dataset/test`) into `X_train`, `y_train`, `subject_train` and `X_test`, `y_test`, `subject_test`, respectively. Assign variable names in `X_train` and `X_test` based on `features.txt` in `./UCI HAR Dataset`. Rename variable in `y_train` and `y_test` as "ActivityLabel" and rename variable in `subject_train` and `subject_test` as "SubjectID". Combine these datasets into one dataset, `comb`. 
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set 
Appropriately labels the data set with descriptive variable names.
From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
