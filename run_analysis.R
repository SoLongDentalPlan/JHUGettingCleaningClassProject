#Analysis script for class project for JHU's "Getting and cleaning data" course

#By: Marcus Verduchi, 3/13/2016

#Install and load data.table library (only used for second-to-last step)
install.packages(("data.table"))
library(data.table)

#Fetch the file into working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","getdata_projectfiles_UCI HAR Dataset.zip")

#Unzip it
unzip("getdata_projectfiles_UCI HAR Dataset.zip")

#Load the file containing the names of the "features". These will be used as column names
FeatureNames<-read.csv("./UCI HAR Dataset/features.txt",sep=" ",header=FALSE,stringsAsFactors = FALSE, col.names=c("FeatureID","FeatureName"))

#Load the "features" from the Training data set
X_combined<-read.fwf("./UCI HAR Dataset/train/X_train.txt",rep(16,561),buffersize=10,col.names=FeatureNames$FeatureName)

#Append the "features" data from the Test data set
X_combined<-rbind(X_combined,read.fwf("./UCI HAR Dataset/test/X_test.txt",rep(16,561),buffersize=10,col.names=FeatureNames$FeatureName))

#Load the subject IDs from the Training data set
subject_combined<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,stringsAsFactors = FALSE, col.names="SubjectID")

#Append the subject IDs from the Test data set
subject_combined<-rbind(subject_combined,read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,stringsAsFactors = FALSE, col.names="SubjectID"))

#Filter the data set, including only columns with the string ".mean." or ".std."
Data_set_combined_filtered_merged<-X_combined[,grep("\\.mean\\.|\\.std\\.",names(X_combined))]

#Make the column names prettier by removing extra "." characters introduced by R
names(Data_set_combined_filtered_merged)<-gsub("\\.\\.","",names(Data_set_combined_filtered_merged))

#Append a new column, with the Subject IDs
Data_set_combined_filtered_merged$SubjectID<-subject_combined$SubjectID

#Load the "activity" labels, which will be used to provide more descriptive names in place of activity IDs
activity_labels<-read.csv("./UCI HAR Dataset/activity_labels.txt",sep=" ",header=FALSE, col.names=c("ActivityID","ActivityLabel"))

#Load the activity IDs for the Training data set
Y_combined<-read.fwf("./UCI HAR Dataset/train/Y_train.txt",1,col.names="Activity")

#Append the activity IDs for the Test data set
Y_combined<-rbind(Y_combined,read.fwf("./UCI HAR Dataset/test/Y_test.txt",1,col.names="Activity"))

#Convert from a numeric ID into a "factor" type, using the "activity labels"
Y_combined$Activity<-factor(Y_combined$Activity,levels=activity_labels$ActivityID,labels=activity_labels$ActivityLabel)

#Append a new column with the activity factor
Data_set_combined_filtered_merged$Activity<-Y_combined$Activity

#Summarize the data: Group by subject ID and Activity. For each grouping, calculate the average of all the remaining columns
  #Note conversion to data.table, which allows a simpler syntax for the summary
Data_set_summarized<-data.table(Data_set_combined_filtered_merged)[, lapply(.SD, mean), by="SubjectID,Activity"]

#Write summarized data to a text file (space-separated by default)
write.table(Data_set_summarized,file="Data_set_summarized.txt",row.names=FALSE)


