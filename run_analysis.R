getwd()
###0.Download raw file and unzip datasets###
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,"./project_data.zip")
unzip(zipfile ="./project_data.zip", exdir="." )

###1.Merges the training and the test sets to create one data set.###
#Read training files#
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
#Read test files#
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
#Read features files#
features<-read.table("./UCI HAR Dataset/features.txt")
#Assign variable names#
names(X_train)<-features[,2]
names(X_test)<-features[,2]
names(y_train)<-"ActivityLabel"
names(y_test)<-"ActivityLabel"
names(subject_train)<-"SubjectID"
names(subject_test)<-"SubjectID"
#Merge train and test dataset#
X_comb<-rbind(X_train,X_test)
y_comb<-rbind(y_train,y_test)
subject_comb<-rbind(subject_train,subject_test)
comb<-cbind(X_comb,y_comb,subject_comb)

###2.Extracts only the measurements on the mean and standard deviation for each measurement###
comb_names<-names(comb)
keep_name_index<-grep("((mean|std)\\(\\))|ActivityLabel|SubjectID",comb_names)
mean_std_comb<-comb[,keep_name_index]
names(mean_std_comb)

###3.Uses descriptive activity names to name the activities in the data set###
ActivityName<-read.table("./UCI HAR Dataset/activity_labels.txt")
names(ActivityName)<-c("ActivityLabel","ActivityName")
unique(ActivityName$ActivityLabel)
unique(mean_std_comb$ActivityLabel)
library(plyr)
mean_std_comb<-join(mean_std_comb,ActivityName,by = "ActivityLabel")

###4.Appropriately labels the data set with descriptive variable names.###
names(mean_std_comb)#Variable names have already been appropriately labeled in section #Assign variable names

###5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
TidyData<-ddply(mean_std_comb,.(SubjectID,ActivityName),function(x) colMeans(x[, 1:66]))
names(TidyData)
write.table(TidyData, "TidyData.txt", row.name=FALSE)
