# Code Book for 'run_analysis.R'
Created by vamicu

## Data Used

The data for the project comes from:
[link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

It is assumed that the data for the project has been extracted to the working directory.

## Variables

For more information on the variables used in this analysis, please refer to the 'features_info.txt' of the include in the data set [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Subject and Activity

* subject
Identifies the subject who performed the activity. The range is from 1 to 30.

* activity
Identifies the activity being performed by the subject. Values include: 'walking', 'walkingupstairs', 'walkingdownstairs', 'sitting', 'standing', 'laying'.

### Measure Variables

The following is an excerpt from the 'features_info.txt' file:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The naming convention and syntax used in the original data is maintained in the tidy data set. The tidy data set contains only the mean and standard deviation measures and non-alphabetical characters were ommitted.

A list of the measure variables are shown below.

#### tBodyAcc

* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ

#### tGravityAcc

* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ

#### tBodyAccJerk

* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ

#### tBodyGyro

* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ

#### tBodyGyroJerk

* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ

#### tBodyAccMag

* tBodyAccMagMean
* tBodyAccMagStd

#### tGravityAccMag

* tGravityAccMagMean
* tGravityAccMagStd

#### tBodyAccJerk

* tBodyAccJerkMagMean
* tBodyAccJerkMagStd

#### tBodyGyroMag

* tBodyGyroMagMean
* tBodyGyroMagStd

#### tBodyGyroJerk

* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd

#### fBodyAcc

* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ

#### fBodyAccJerk

* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ

#### fBodyGyro

* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ

#### fBodyAccMag

* fBodyAccMagMean
* fBodyAccMagStd

#### fBodyAccJerk

* fBodyAccJerkMagMean
* fBodyAccJerkMagStd

#### fBodyGyroMag

* fBodyGyroMagMean
* fBodyGyroMagStd

#### fBodyGyroJerkMag

* fBodyGyroJerkMagMean
* fBodyGyroJerkMagStd