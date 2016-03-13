Codebook for my class project for JHU's "Getting and cleaning data" course
====

3/13/2016

Data Source
----
This data comes from the UCI Machine Learning Repository's "Human Activity Recognition Using Smartphones Data Set"
More info at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Transformations applied (See comments in "run_analysis.R" for full details)
----
*Combined (i.e. appended rows) the training and test data sets. "X_test.txt" was combined with "X_train.txt". "y_test.txt" combined with "t_train.txt" "subject_test.txt" combined with "subject_train.txt"

*Joined the combined "X", "Y", and "subject" data. The join was done based on row order.

*Replaced the numeric codes from the "y" data with descriptive labels from "activity_labels.txt"

*Summarized the data: For each unique grouping of SubjectID and Activity, calculated the average of 66 separate columns (see descriptions below)



Variables
----
"SubjectID": An identifier for the subject (the person performing the activity)

"Activity": The activity being performed by the subject (possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

"tBodyAcc.mean.X": Average of mean of tBodyAcc (on the X axis)

"tBodyAcc.mean.Y" Average of mean of tBodyAcc (on the Y axis)

"tBodyAcc.mean.Z" Average of mean of tBodyAcc (on the Z axis)

"tBodyAcc.std.X": Average of standard deviation of tBodyAcc (on the X axis)

"tBodyAcc.std.Y": Average of standard deviation of tBodyAcc (on the Y axis)

"tBodyAcc.std.Z": Average of standard deviation of tBodyAcc (on the Z axis)

"tGravityAcc.mean.X": Average of mean of tGravityAcc (on the X axis)

"tGravityAcc.mean.Y": Average of mean of tGravityAcc (on the Y axis)

"tGravityAcc.mean.Z": Average of mean of tGravityAcc (on the Z axis)

"tGravityAcc.std.X": Average of standard deviation of tGravityAcc (on the X axis)

"tGravityAcc.std.Y": Average of standard deviation of tGravityAcc (on the Y axis)

"tGravityAcc.std.Z":: Average of standard deviation of tGravityAcc (on the Y axis)

"tBodyAccJerk.mean.X": Average of mean of tBodyAccJerk (on the X axis)

"tBodyAccJerk.mean.Y": Average of mean of tBodyAccJerk (on the Y axis)

"tBodyAccJerk.mean.Z": Average of mean of tBodyAccJerk (on the Z axis)

"tBodyAccJerk.std.X": Average of standard deviation of tBodyAccJerk (on the X axis)

"tBodyAccJerk.std.Y": Average of standard deviation of tBodyAccJerk (on the Y axis)

"tBodyAccJerk.std.Z": Average of standard deviation of tBodyAccJerk (on the Z axis)

"tBodyGyro.mean.X": Average of mean of tBodyGyro (on the X axis)

"tBodyGyro.mean.Y": Average of mean of tBodyGyro (on the Y axis)

"tBodyGyro.mean.Z": Average of mean of tBodyGyro (on the Z axis)

"tBodyGyro.std.X": Average of standard deviation of tBodyGyro (on the X axis)

"tBodyGyro.std.Y": Average of standard deviation of tBodyGyro (on the Y axis)

"tBodyGyro.std.Z": Average of standard deviation of tBodyGyro (on the Z axis)

"tBodyGyroJerk.mean.X": Average of mean of tBodyGyroJerk (on the X axis)

"tBodyGyroJerk.mean.Y": Average of mean of tBodyGyroJerk (on the Y axis)

"tBodyGyroJerk.mean.Z": Average of mean of tBodyGyroJerk (on the Z axis)

"tBodyGyroJerk.std.X": Average of standard deviation of tBodyGyroJerk (on the X axis)

"tBodyGyroJerk.std.Y": Average of standard deviation of tBodyGyroJerk (on the Y axis)

"tBodyGyroJerk.std.Z": Average of standard deviation of tBodyGyroJerk (on the Z axis)

"tBodyAccMag.mean": Average of mean of tBodyAccMag

"tBodyAccMag.std": Average of standard deviation of tBodyAccMag

"tGravityAccMag.mean": Average of mean of tGravityAccMag

"tGravityAccMag.std": Average of standard deviation of tGravityAccMag

"tBodyAccJerkMag.mean": Average of mean of tBodyAccJerkMag

"tBodyAccJerkMag.std": Average of standard deviation of tBodyAccJerkMag

"tBodyGyroMag.mean": Average of mean of tBodyGyroMag

"tBodyGyroMag.std": Average of standard deviation of tBodyGyroMag

"tBodyGyroJerkMag.mean": Average of mean of tBodyGyroJerkMag

"tBodyGyroJerkMag.std": Average of standard deviation of tBodyGyroJerkMag

"fBodyAcc.mean.X": Average of mean of fBodyAcc (on the X axis)

"fBodyAcc.mean.Y": Average of mean of fBodyAcc (on the Y axis)

"fBodyAcc.mean.Z": Average of mean of fBodyAcc (on the Z axis)

"fBodyAcc.std.X": Average of standard deviation of fBodyAcc (on the X axis)

"fBodyAcc.std.Y": Average of standard deviation of fBodyAcc (on the Y axis)

"fBodyAcc.std.Z": Average of standard deviation of fBodyAcc (on the Z axis)

"fBodyAccJerk.mean.X": Average of mean of fBodyAccJerk (on the X axis)

"fBodyAccJerk.mean.Y": Average of mean of fBodyAccJerk (on the Y axis)

"fBodyAccJerk.mean.Z": Average of mean of fBodyAccJerk (on the Z axis)

"fBodyAccJerk.std.X": Average of standard deviation of fBodyAccJerk (on the X axis)

"fBodyAccJerk.std.Y": Average of standard deviation of fBodyAccJerk (on the Y axis)

"fBodyAccJerk.std.Z": Average of standard deviation of fBodyAccJerk (on the Z axis)

"fBodyGyro.mean.X": Average of mean of fBodyGyro (on the X axis)

"fBodyGyro.mean.Y": Average of mean of fBodyGyro (on the Y axis)

"fBodyGyro.mean.Z": Average of mean of fBodyGyro (on the Z axis)

"fBodyGyro.std.X": Average of standard deviation of fBodyGyro (on the X axis)

"fBodyGyro.std.Y": Average of standard deviation of fBodyGyro (on the Y axis)

"fBodyGyro.std.Z": Average of standard deviation of fBodyGyro (on the Z axis)

"fBodyAccMag.mean": Average of mean of fBodyAccMag

"fBodyAccMag.std": Average of standard deviation of fBodyAccMag

"fBodyBodyAccJerkMag.mean": Average of mean of fBodyBodyAccJerkMag

"fBodyBodyAccJerkMag.std": Average of standard deviation of fBodyBodyAccJerkMag

"fBodyBodyGyroMag.mean": Average of mean of fBodyBodyGyroMag

"fBodyBodyGyroMag.std": Average of standard deviation of fBodyBodyGyroMag

"fBodyBodyGyroJerkMag.mean": Average of mean of fBodyBodyGyroJerkMag

"fBodyBodyGyroJerkMag.std": Average of standard deviation of fBodyBodyGyroJerkMag
