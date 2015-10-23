library(dplyr)

## Load data
s.test <- read.table("subject_test.txt")
x.test <- read.table("X_test.txt")
y.test <- read.table("y_test.txt")
s.train <- read.table("subject_train.txt")
x.train <- read.table("X_train.txt")
y.train <- read.table("y_train.txt")
a.label <- read.table("activity_labels.txt")
feat <- read.table("features.txt")

## Merge test and train data
test <- cbind(cbind(s.test,y.test),x.test)
train <- cbind(cbind(s.train,y.train),x.train)
dat <- rbind(test,train)

## Identify measurements that relate to mean and standard deviation
used.feat <- feat[grepl("mean()",feat[,2],fixed=TRUE) | grepl("std()",feat[,2],fixed=TRUE),2]
index <- which(feat[,2] %in% used.feat) + 2 # +2 because the first two columns contain subject.id and activity.id
## subset data so to contain only the above measurement data
dat <- dat[,c(1,2,index)]

## Rename columns of data frame
colnames(dat)[1] <- "subject.ID"
colnames(dat)[2] <- "activity.ID"
for (i in 3:dim(dat)[2]){
  colnames(dat)[i] <- as.character(used.feat[i-2])
}

## Get activity label
dat <- merge(dat,a.label,by.x="activity.ID",by.y="V1")
colnames(dat)[dim(dat)[2]] <- "activity.description"
## Re-ordering data and replace the activity ID with the description
i <- dim(dat)[2]
dat <- dat[,c(2,1,i,3:i)][-1-i]
dat <- dat[,c(1,3:dim(dat)[2])]

## use dplyr package to summarise the data
dat <- dat %>% group_by(subject.ID,activity.description) %>% summarise_each(funs(mean))
dat <- as.data.frame(dat)

write.table(dat, file = "output_analysis.txt", row.names = FALSE)
