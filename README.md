# data_cleaning_assignment
The repository contains these files:
* run_analysis.R
* this README.md
* codebook.md

## The task
Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## run_analysis.R
This script is divided into 

* Initialization,
* Extraction,
* Transformation and
* several filtrations

### Initialization
load the required librarys
clear the environment.

### Extraction
All required data was loaded using read.table function (default params). For the DFs activitylables and featurenames were speaking columnn names given.

### Transformation
The DFs were merged. The parts are just putted asside and unioned into one DF 'step1'.

### Several filtrations and manipulations
The first filtration selects the features containing the means and standard deviation of the raw features and puts the data into DF 'step2'. 
After that filtration it was to map the codes for activity with the lables in the mapping file. 
The names of the features were edited to be more intuitively. 
Finally there was made an aggregation of the DF by columns activity and subject.

