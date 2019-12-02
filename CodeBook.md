# CodeBook

Author: Roelf Nel

Course: Coursera Getting and Cleaning Data - Course Assignment

## Description

The output summary tidy dataset "grouped_means.txt" contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set

## Source Data

The Human Activity Recognition Using Smartphones Data Set isobtainable from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### Files:

- features.txt : Feature codes
- activity_lables.txt : Activity Codes & Names
- 'train/x_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'train/subject_train.txt' : subjects for training set
- 'test/x_test.txt': Test set
- 'test/y_test.txt': Test labels
- 'train/subject_train.txt' : subjects for test set

## Transformation Steps

### Step 1
Read all supplied data files into representing data tables.  Merge the training and test datasets into one set, and then combine with the description tables

### Step 2
Extract only the measurements on mean and standard deviation for each set

### Step 3
Join with descriptive activity names to name the activieties in the dataset

### Step 4
Label each column with more descriptive column names

### Step 5
Create the final set with the average of each variable grouped by each activity and each subject

## DataSet Description
