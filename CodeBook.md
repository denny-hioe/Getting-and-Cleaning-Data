This file contains the variables defined in the code.
- s.test  = data frame containing the data from 'subject_test.txt'
- x.test  = data frame containing the data from 'x_test.txt'
- y.test  = data frame containing the data from 'y_test.txt'
- s.train = data frame containing the data from 'subject_train.txt'
- x.train = data frame containing the data from 'X_train.txt'
- y.train = data frame containing the data from 'y_train.txt'
- a.label = data frame containing the data from 'activity_labels.txt'
- feat    = data frame containing the data from 'features.txt'
- test = data frame containing the merged .test data </br>
- train = data frame containing the merged .train data </br>
- used.feat = the list of characters describing the measurements that is related to mean and standard deviation </br>
- index = the list of indices of columns that contain measurements corresponding to mean and standard deviation

For description of '*.txt' files above see documentations of Samsung data available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. See the 'README.txt' file therein.

The data frame 'dat' is transformed multiple times to finally house the clean data. The transformation is as follows: </br>
- the merged test and train data sets (including subject index and activity index) with default column names
- the data sets corresponding to mean and standard deviation measurements with default column names
- the data sets with descriptive column names
- the data sets with an additional column showing the activity description
- the data sets with activity id being replaced with activity description
- tha data sets summarised by subject and activity

The column names in the resulting data sets correspond to the measurements that are explained in the documentations of Samsung data. See 'features-info.txt.' file therein.
