---
title: "Codebook"
output: html_document
---

### Revision History
* V1.0 Initial Release

### Introduction

The data **grouped_data.txt** is a dataset derived from the [Human Activity Reconition Study](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The original data was processed (cleaned) and only the mean and standard deviation readings were extracted. The data was then grouped by the activity performed and the participant who conduted the activity and the mean values for each activity-participant combination were computed.

### File Format
The data file is a fixed-width delimited text file called **grouped_data.txt**.

The file contains 181 rows (title row plus 180 datapoints) and 88 columns.

#### Column Description
The columns are arranged as follows:

1. Activity - described the activity performed.
2. Subject - test subject ID number of the subject that performed the activity during the experiment. 
3. to 88. Mean values of the various sensor measurements mean and standard deviation values (see below).

#### Variable Naming Convention
(Reproduced from **features_info.txt** that was supplied with the original data.)

[...] the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#### Units

All units given are in "g" (Earth gravitation constant, 1 g ~= 9.81 m/s^2).

#### Value Readings
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean


