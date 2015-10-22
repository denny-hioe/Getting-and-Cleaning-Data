# Getting-and-Cleaning-Data
This repo contains the project assignment for Coursera course: Getting and Cleaning Data

The R code that is contained in this repository follows the following logic:

1) Loading Samsung data that has been downloaded from   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip; read.table() funtion is used to complete this task.

2) Combining test and train data; cbind() and rbind() functions are used to complete this task.

3) Extracting measurements from data that is related to mean and standard deviation; grepl() and which() functions are applied to the data from features.txt to find the column indices that relates to mean and standard deviation measurements. The combined test and trained data is then subset using these indices. 

4) Renaming the column name for each column of the data frame, so they can be easily referred back to the variables defined in original Samsung data; This task is completed using iteration of colnames() functions.

5) Replacing the activity indices (as contained in 'y_test.txt' and 'y_train.txt') with their descriptions; merge() function is used to establish the link between activity index and descriptions as contained in 'activity_labels.txt'. A couple of lines are also included in the code to re-order the columns of the data frame and remove the old activity index column.

6) Summarising the data to contain the mean of each measurement grouped by volunteer and activity; dplyr package is utilised here. Using summarise_all, the group summaary is generated. The output is finally converted back to data.frame format before being written as a text file.
