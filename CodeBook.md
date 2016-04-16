# Introduction
1. Downloads raw file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzips the file into working directory.
2. Loads the training (`X_train.txt`, `y_train.txt` and `subject_train.txt` from folder `./UCI HAR Dataset/train`) and the test sets (`X_test.txt`, `y_test.txt` and `subject_test.txt` from folder `./UCI HAR Dataset/test`) into `X_train`, `y_train`, `subject_train` and `X_test`, `y_test`, `subject_test`, respectively. Assign variable names in `X_train` and `X_test` based on `features.txt` in `./UCI HAR Dataset`. Rename variable in `y_train` and `y_test` as "ActivityLabel" and rename variable in `subject_train` and `subject_test` as "SubjectID". Combine these datasets into one dataset, `comb`. 
3. Extracts only the measurements on the mean and standard deviation for each measurement, only variables with string "mean()" or "std()" in variable names are selected in addition to varibale "ActivityLabel" and "SubjectID".
4. Uses descriptive activity names to name the activities in the data set. Activity names come from `./UCI HAR Dataset/activity_labels.txt`, joined with dataset `comb` by "ActivityLabel".
5. Appropriately labels the data set with descriptive variable names. This step was actually implemented through out the excution of step 2 to step 4.
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The independent tidy data set is outputted as `TidyData.txt`.

# Variables in `TidyData.txt`

## Indentifier:
* "SubjectID": ID of each subject.
* "ActivityName": Name of each activity.

## Measures:
* "tBodyAcc-mean()-X"          
* "tBodyAcc-mean()-Y"
* "tBodyAcc-mean()-Z"
* "tBodyAcc-std()-X"           
* "tBodyAcc-std()-Y"
* "tBodyAcc-std()-Z"
* "tGravityAcc-mean()-X"       
* "tGravityAcc-mean()-Y"
* "tGravityAcc-mean()-Z"
* "tGravityAcc-std()-X"        
* "tGravityAcc-std()-Y"
* "tGravityAcc-std()-Z"
* "tBodyAccJerk-mean()-X"      
* "tBodyAccJerk-mean()-Y"
* "tBodyAccJerk-mean()-Z"
* "tBodyAccJerk-std()-X"       
* "tBodyAccJerk-std()-Y"
* "tBodyAccJerk-std()-Z"
* "tBodyGyro-mean()-X"         
* "tBodyGyro-mean()-Y"
* "tBodyGyro-mean()-Z"
* "tBodyGyro-std()-X"          
* "tBodyGyro-std()-Y"
* "tBodyGyro-std()-Z"
* "tBodyGyroJerk-mean()-X"     
* "tBodyGyroJerk-mean()-Y"
* "tBodyGyroJerk-mean()-Z"
* "tBodyGyroJerk-std()-X"      
* "tBodyGyroJerk-std()-Y"
* "tBodyGyroJerk-std()-Z"
* "tBodyAccMag-mean()"         
* "tBodyAccMag-std()"
* "tGravityAccMag-mean()"
* "tGravityAccMag-std()"       
* "tBodyAccJerkMag-mean()"
* "tBodyAccJerkMag-std()"
* "tBodyGyroMag-mean()"        
* "tBodyGyroMag-std()"
* "tBodyGyroJerkMag-mean()"
* "tBodyGyroJerkMag-std()"     
* "fBodyAcc-mean()-X"
* "fBodyAcc-mean()-Y"
* "fBodyAcc-mean()-Z"          
* "fBodyAcc-std()-X"
* "fBodyAcc-std()-Y"
* "fBodyAcc-std()-Z"           
* "fBodyAccJerk-mean()-X"
* "fBodyAccJerk-mean()-Y"
* "fBodyAccJerk-mean()-Z"      
* "fBodyAccJerk-std()-X"
* "fBodyAccJerk-std()-Y"
* "fBodyAccJerk-std()-Z"       
* "fBodyGyro-mean()-X"
* "fBodyGyro-mean()-Y"
* "fBodyGyro-mean()-Z"         
* "fBodyGyro-std()-X"
* "fBodyGyro-std()-Y"
* "fBodyGyro-std()-Z"          
* "fBodyAccMag-mean()"
* "fBodyAccMag-std()"
* "fBodyBodyAccJerkMag-mean()" 
* "fBodyBodyAccJerkMag-std()"
* "fBodyBodyGyroMag-mean()"
* "fBodyBodyGyroMag-std()"     
* "fBodyBodyGyroJerkMag-mean()"
* "fBodyBodyGyroJerkMag-std()" 
*
