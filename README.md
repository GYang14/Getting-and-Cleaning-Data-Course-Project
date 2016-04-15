# Getting-and-Cleaning-Data-Course-Project
This repository hosts the R-script, the code book and output result for the course "Getting and Cleaning Data" in Coursera.

# Contents
`run_analysis.R` is created to finish the project based on following steps:
 1. Downloads raw file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzips the file into working directory.
 2. Merges the training and the test sets to create one data set and assign variable names based on features.txt from unzipped files.
 3. Extracts only the measurements on the mean and standard deviation for each measurement.
 4. Uses descriptive activity names to name the activities in the data set
 5. Appropriately labels the data set with descriptive variable names.
 6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

`TidyData.txt` is the final output result from step 5 above.

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data. 

