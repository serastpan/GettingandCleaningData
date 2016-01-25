# Getting and Cleaning Data
Getting and Cleaning Data course project from Coursera

## Introduction
This repo has been created to contain the project of the course called "Getting and Cleaning Data" in Coursera platform.

## Content

* "CodeBook.txt":
It contains info about raw data used.
The steps of the R-script used to get tidy data is explained.
It also has variables and units of the tidy dataset after running the code.

* "run_analysis.R":
It contains the R-script used to tidy data. 
The code is commented so you could check what the code does in each step.
To get the tidy dataset you have just to run this code.

## Script 
"run_analysis.R" is a R script which tidy data provided by Data Source. This script carry out the following steps:

1.- Download data from "Data Source" and store it in a folder called "Data".
2.- Look for the path of the files and read the files where raw data is stored.
3.- Add "subject" and "activity" variables to train and test datasets according to "y_train.txt", "y_test.txt", "subject_train.txt" and "subject_test.txt".
4.- Merge data from test and training data.
5.- Assign names to each one of the variables according to "features.txt".
6.- Extract mean and standard deviation variables from each measurement.
7.- Assign more descriptive variable names.
8.- Create an independent tidy dataset with subjects and activities splited so that each variable contains one observation.
9.- Write the tidy dataset to "TidyDataSet.txt" file text.