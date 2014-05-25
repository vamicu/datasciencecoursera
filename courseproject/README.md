# README run_analysis.R
Created by vamicu

The R script requires the 'reshape2' package.

The data for the project comes from:
[link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

It is assumed that the data for the project has been extracted to the working directory.

## The following lists the steps the script takes in cleaning the data to create the final tidy data set:

### Load packages

1. Load 'reshape2' package

### Subject Data Sets

Read, merge and label the subject data sets.

2. Read 'subject_train.txt' and 'subject_test.txt' files and create a field identifying these records as 'train' and 'test' in a new column labeled 'group'
3. rbind the the two subject data sets into one final 'subject' data set
4. Add 'subject' and 'group' headers to the data set

### Activity Data Sets

Prepare the activity labels into an acceptable format. This format removes the '_' character from the labels and converts them to lower case.

5. Read '/UCI HAR Dataset/activity_labels.txt'
6. Replace '_' with ''
7. Convert the activity labels to lower case

With the activity labels ready, the next step is to read, merge and label the activity data sets.

8. Read '/UCI HAR Dataset/train/y_train.txt' and '/UCI HAR Dataset/test/y_test.txt' files
9. rbind the two activity data sets
10. Add 'activity' header to the data set
11. Change the '1:6' activity names to the appropriate activity labels with the acceptable format

### Features Labels

We now need to identify the features needed from the training and testing data sets.

12. Read '/UCI HAR Dataset/features.txt'
13. Create a boolean vector called 'useFeaturesColumns' which identifies the required features: mean() and std()

Rename the features labels to an acceptable format.

14. Replace the strings in features with 'mean()' and 'std()' to 'Mean' and 'Std'
15. Replace '-', '_', '(', and ')' with ''
16. Miscellaneous changes: replace 'BodyBody' with 'Body'

### Train and Test Data Sets

Read, merge and label the train and test data sets.

17. Read '/UCI HAR Dataset/train/x_train.txt' and '/UCI HAR Dataset/test/x_test.txt' files
18. rbind the train and test data sets
19. Subset the combined data set on the columns using the boolean vector 'useFeaturesColumns' which corresponds to the measures with 'mean()' and 'std()'
20. Use the features labels as the headers for the combined data

### Merge Data Sets

This step combines the subject, activity and combined train and test data sets into one final data set.

21. cbind the subject, activity, and combined train and data sets into the final 'dataSet' dataframe

### Create Final Tidy Data Set

We are now ready to create the final tidy data set and export it to a text file.

22. melt the 'dataSet' dataframe by 'subject' and 'activity' with the mean and standard deviations as 'measures' and assign it to the variable 'tidyData'
23. dcast 'tidyData' by 'subject' and 'activity' broken down by the mean and standard deviation measures
24. Write 'tidyData' to the 'tidyData.txt' file