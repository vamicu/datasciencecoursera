# load needed packages
library(reshape2)

# MERGE SUBJECT DATA
# subject field is based on '/UCI HAR Dataset/train/subject_train.txt' and '/UCI HAR Dataset/test/subject.txt'
subjectTrain <- read.table(paste(getwd(),'/UCI HAR Dataset/train/subject_train.txt',sep=''))
subjectTrain <- cbind(subjectTrain, 'group'=rep('train', nrow(subjectTrain)))
subjectTest <- read.table(paste(getwd(),'/UCI HAR Dataset/test/subject_test.txt',sep=''))
subjectTest <- cbind(subjectTest, 'group'=rep('test', nrow(subjectTest)))

subject <- rbind(subjectTrain, subjectTest)
names(subject) <- c('subject', 'group')

# CREATE ACTIVITY LABELS
# activity labels are based on '/UCI HAR Dataset/activity_labels.txt'
activityLabels <- read.table(paste(getwd(),'/UCI HAR Dataset/activity_labels.txt',sep=''))
activityLabels[,2] <- gsub('_','',activityLabels[,2])
activityLabels[,2] <- tolower(activityLabels[,2])

# MERGE ACTIVITY DATA
# activity field is based on '/UCI HAR Dataset/train/y_train.txt' and '/UCI HAR Dataset/test/y_test.txt'
activityTrain <- read.table(paste(getwd(),'/UCI HAR Dataset/train/y_train.txt',sep=''))
activityTest <- read.table(paste(getwd(),'/UCI HAR Dataset/test/y_test.txt',sep=''))

activity <- rbind(activityTrain, activityTest)
names(activity) <- 'activity'

# RENAME ACTIVITY LABELS IN ACTIVITY DATA
for(i in 1:6) {
	activity[activity == i] <- activityLabels[i,2]
}

# RENAME FEATURES LABELS
# we want to select only the columns with 'mean()' and 'std()' from '/UCI HAR Dataset/features.txt'
# vector of integers corresponding to the column number
features <- read.table(paste(getwd(),'/UCI HAR Dataset/features.txt',sep=''))
useFeaturesColumns <- grepl('mean\\(\\)|std\\(\\)', features[,2])

features <- features[useFeaturesColumns,]
features <- gsub('mean\\(\\)','Mean',features[,2])
features <- gsub('std\\(\\)','Std',features)
features <- gsub('-|_|\\(|\\)','',features)
features <- gsub('BodyBody','Body',features)

# MERGE TRAIN AND TEST DATA SETS
# data field is based on '/UCI HAR Dataset/train/x_train.txt' and '/UCI HAR Dataset/test/x_test.txt'
dataTrain <- read.table(paste(getwd(),'/UCI HAR Dataset/train/x_train.txt',sep=''))
dataTest <- read.table(paste(getwd(),'/UCI HAR Dataset/test/x_test.txt',sep=''))

data <- rbind(dataTrain, dataTest)
data <- data[,useFeaturesColumns]
names(data) <- features

# MERGE ALL DATA SETS
dataSet <-cbind(subject,activity,data)

# CREATE FINAL TIDY DATA SET
tidyData <- melt(dataSet, id=c('subject', 'activity'), measure.vars=names(data))
tidyData <- dcast(tidyData, subject + activity ~ variable, mean)

# WRITE FINAL TIDY DATA SET TO TEXT FILE
write.table(tidyData, file = 'tidyData.txt')