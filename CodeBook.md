# GETTING AND CLEANING DATA COURSE PROJECT FROM COURSERA

## UPDATED: 25-01-16

### DATA SOURCE: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

MORE INFO ABOUT DATA: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data comes from accelerometers in Samsung Galaxy S series. 30 subjects were asked to do 6 activities: WALKING
, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING
, STANDING
 and LAYING
. The monitoring of these activities were registrated by the accelerometers.

### "run_analysis.R" is a R script which tidy data provided by Data Source. This script carries out the following steps:

* 1.- Download data from "Data Source" and store it in a folder called "Data".
* 2.- Look for the path of the files and read the files where raw data is stored.
* 3.- Add "subject" and "activity" variables to train and test datasets according to "y_train.txt", "y_test.txt", "subject_train.txt" and "subject_test.txt".
* 4.- Merge data from test and training data.
* 5.- Assign names to each one of the variables according to "features.txt".
* 6.- Extract mean and standard deviation variables from each measurement.
* 7.- Assign more descriptive variable names.
* 8.- Create an independent tidy dataset with subjects and activities splited so that each variable contains one observation.
* 9.- Write the tidy dataset to "TidyDataSet.txt" file text.

### VARIABLES: After run code (68 variables).

* "subject" -> Subject being studied.
* "activity" -> Activity being carried out by the subject.
* "tbodyaccmeanx" -> Temporary acceleration mean in x-axis.*
* "tbodyaccmeany" -> Temporary acceleration mean in y-axis.*
* "tbodyaccmeanz" -> Temporary acceleration mean in z-axis.*
* "tbodyaccstdx" -> Temporary acceleration standard deviation in x-axis.*
* "tbodyaccstdy" -> Temporary acceleration standard deviation in y-axis.*
* "tbodyaccstdz" -> Temporary acceleration standard deviation in z-axis.*
* "tgravityaccmeanx" -> Temporary gravity acceleration mean in x-axis.*
* "tgravityaccmeany" -> Temporary gravity acceleration mean in y-axis.*
* "tgravityaccmeanz" -> Temporary gravity acceleration mean in z-axis.*
* "tgravityaccstdx" -> Temporary gravity acceleration standard deviation in x-axis.*
* "tgravityaccstdy" -> Temporary gravity acceleration standard deviation in y-axis.*
* "tgravityaccstdz" -> Temporary gravity acceleration standard deviation in z-axis.*
* "tbodyaccjerkmeanx" -> Temporary acceleration jerk mean in x-axis.*
* "tbodyaccjerkmeany" -> Temporary acceleration jerk mean in y-axis.*
* "tbodyaccjerkmeanz" -> Temporary acceleration jerk mean in z-axis.*
* "tbodyaccjerkstdx" -> Temporary acceleration jerk standard deviation in x-axis.*
* "tbodyaccjerkstdy" -> Temporary acceleration jerk standard deviation in y-axis.*
* "tbodyaccjerkstdz" -> Temporary acceleration jerk standard deviation in z-axis.*
* "tbodygyroscopicmeanx" -> Temporary body gyroscopic mean in x-axis.*
* "tbodygyroscopicmeany" -> Temporary body gyroscopic mean in y-axis.*
* "tbodygyroscopicmeanz" -> Temporary body gyroscopic mean in z-axis.*
* "tbodygyroscopicstdx" -> Temporary body gyroscopic standard deviation in x-axis.*
* "tbodygyroscopicstdy" -> Temporary body gyroscopic standard deviation in y-axis.*
* "tbodygyroscopicstdz" -> Temporary body gyroscopic standard deviation in z-axis.*
* "tbodygyroscopicjerkmeanx" -> Temporary body gyroscopic jerk mean in y-axis.*
* "tbodygyroscopicjerkmeany" -> Temporary body gyroscopic jerk mean in y-axis.*
* "tbodygyroscopicjerkmeanz" -> Temporary body gyroscopic jerk mean in z-axis.*
* "tbodygyroscopicjerkstdx" -> Temporary body gyroscopic jerk standard deviation in x-axis.*
* "tbodygyroscopicjerkstdy" -> Temporary body gyroscopic jerk standard deviation in y-axis.*
* "tbodygyroscopicjerkstdz" -> Temporary body gyroscopic jerk standard deviation in z-axis.*
* "tbodyaccmagmean" -> Temporary body acceleration magnitude mean.*
* "tbodyaccmagstd" -> Temporary body acceleration magnitude standard deviation.*
* "tgravityaccmagmean" -> Temporary gravity acceleration magnitude mean.*
* "tgravityaccmagstd" -> Temporary gravity acceleration magnitude standard deviation.*
* "tbodyaccjerkmagmean" -> Temporary body acceleration jerk magnitude mean.*
* "tbodyaccjerkmagstd" -> Temporary body acceleration jerk magnitude standard deviation.*
* "tbodygyroscopicmagmean" -> Temporary body gyroscopic magnitude mean.*
* "tbodygyroscopicmagstd" -> Temporary body gyroscopic magnitude standard deviation.*
* "tbodygyroscopicjerkmagmean" -> Temporary body gyroscopic jerk magnitude mean.*
* "tbodygyroscopicjerkmagstd" -> Temporary body gyroscopic jerk magnitude standard deviation.*
* "fbodyaccmeanx" -> Frequential acceleration mean in x-axis.*
* "fbodyaccmeany" -> Frequential acceleration mean in y-axis.*
* "fbodyaccmeanz" -> Frequential acceleration mean in z-axis.*
* "fbodyaccstdx" -> Frequential acceleration standard deviation in x-axis.*
* "fbodyaccstdy" -> Frequential acceleration standard deviation in y-axis.*
* "fbodyaccstdz" -> Frequential acceleration standard deviation in z-axis.*
* "fbodyaccjerkmeanx" -> Frequential acceleration jerk mean in x-axis.*
* "fbodyaccjerkmeany" -> Frequential acceleration jerk mean in y-axis.*
* "fbodyaccjerkmeanz" -> Frequential acceleration jerk mean in z-axis.*
* "fbodyaccjerkstdx" -> Frequential acceleration jerk standard deviation in x-axis.*
* "fbodyaccjerkstdy" -> Frequential acceleration jerk standard deviation in y-axis.*
* "fbodyaccjerkstdz" -> Frequential acceleration jerk standard deviation in z-axis.*
* "fbodygyroscopicmeanx" -> Frequential body gyroscopic mean in x-axis.*
* "fbodygyroscopicmeany" -> Frequential body gyroscopic mean in y-axis.*
* "fbodygyroscopicmeanz" -> Frequential body gyroscopic mean in z-axis.*
* "fbodygyroscopicstdx" -> Frequential body gyroscopic standard deviation in x-axis.*
* "fbodygyroscopicstdy" -> Frequential body gyroscopic standard deviation in y-axis.*
* "fbodygyroscopicstdz" -> Frequential body gyroscopic standard deviation in z-axis.*
* "fbodyaccmagmean" -> Frequential body acceleration magnitude mean.*
* "fbodyaccmagstd" -> Frequential body acceleration magnitude standard deviation.*
* "fbodybodyaccjerkmagmean" -> Frequential body acceleration magnitude mean.*
* "fbodybodyaccjerkmagstd" -> Frequential body acceleration jerk magnitude standard deviation.*
* "fbodybodygyroscopicmagmean" -> Frequential body gyroscopic magnitude mean.*
* "fbodybodygyroscopicmagstd" -> Frequential body gyroscopic magnitude standard deviation.*
* "fbodybodygyroscopicjerkmagmean" -> Frequential body gyroscopic jerk magnitude mean.*
* "fbodybodygyroscopicjerkmagstd" -> Frequential body gyroscopic jerk magnitude standard deviation.*

All variables are dimensionless and refered to the maximum value got by the accelerometers (from -1 to 1).

### ACTIVITIES

* WALKING (value 1): Subject walking.
* WALKING_UPSTAIRS (value 2): Subject walking upstairs.
* WALKING_DOWNSTAIRS (value 3): Subject walking downstairs.
* SITTING (value 4): Subject sitting.
* STANDING (value 5): Subject standing.
* LAYING (value 6): Subject laying down.