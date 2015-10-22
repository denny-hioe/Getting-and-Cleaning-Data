# Getting-and-Cleaning-Data
This repo contains the project assignment for Coursera course: Getting and Cleaning Data

The code that is contained in this repository follows the following logic:
1) Loading data from Samsung data provided from   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2) Combining test and train data
3) Extracting the measurements related to mean and standard deviation
4) Renaming the column name for each column of the data frame, so they can be easily referred back to the variables defined in original Samsung data
5) Replacing the activity indices (as contained in y_test.txt and y_train.txt) with their descriptions
6) Summarising the data to contain the mean of each measurement grouped by volunteer and activity
