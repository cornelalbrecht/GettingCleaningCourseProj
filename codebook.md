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

The original names of the variables are found in the reproduced text below. As these names appear rather cryptic, the columns in the output of **run_analysis.R** were renamed to the values found in the section *value readings* below.

(Reproduced from **features_info.txt** that was supplied with the original data.)

[...] the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#### Units

All units given are in "g" (Earth gravitation constant, 1 g ~= 9.81 m/s^2).

#### Value Readings
*	Activity
*	Subject
*	TimeDomain.Body.Acceleration.-.MeanValue.-X.Direction
*	TimeDomain.Body.Acceleration.-.MeanValue.-Y.Direction
*	TimeDomain.Body.Acceleration.-.MeanValue.-Z.Direction
*	TimeDomain.Gravity.Acceleration.-.MeanValue.-X.Direction
*	TimeDomain.Gravity.Acceleration.-.MeanValue.-Y.Direction
*	TimeDomain.Gravity.Acceleration.-.MeanValue.-Z.Direction
*	TimeDomain.Body.Acceleration.Jerk-.MeanValue.-X.Direction
*	TimeDomain.Body.Acceleration.Jerk-.MeanValue.-Y.Direction
*	TimeDomain.Body.Acceleration.Jerk-.MeanValue.-Z.Direction
*	TimeDomain.Body.Gyroscope.-.MeanValue.-X.Direction
*	TimeDomain.Body.Gyroscope.-.MeanValue.-Y.Direction
*	TimeDomain.Body.Gyroscope.-.MeanValue.-Z.Direction
*	TimeDomain.Body.Gyroscope.Jerk-.MeanValue.-X.Direction
*	TimeDomain.Body.Gyroscope.Jerk-.MeanValue.-Y.Direction
*	TimeDomain.Body.Gyroscope.Jerk-.MeanValue.-Z.Direction
*	TimeDomain.Body.Acceleration.Magnitude-.MeanValue.
*	TimeDomain.Gravity.Acceleration.Magnitude-.MeanValue.
*	TimeDomain.Body.Acceleration.JerkMagnitude-.MeanValue.
*	TimeDomain.Body.Gyroscope.Magnitude-.MeanValue.
*	TimeDomain.Body.Gyroscope.JerkMagnitude-.MeanValue.
*	FrequencyDomain.Body.Acceleration.-.MeanValue.-X.Direction
*	FrequencyDomain.Body.Acceleration.-.MeanValue.-Y.Direction
*	FrequencyDomain.Body.Acceleration.-.MeanValue.-Z.Direction
*	FrequencyDomain.Body.Acceleration.-.MeanFrequency.-X.Direction
*	FrequencyDomain.Body.Acceleration.-.MeanFrequency.-Y.Direction
*	FrequencyDomain.Body.Acceleration.-.MeanFrequency.-Z.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.MeanValue.-X.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.MeanValue.-Y.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.MeanValue.-Z.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.MeanFrequency.-X.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.MeanFrequency.-Y.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.MeanFrequency.-Z.Direction
*	FrequencyDomain.Body.Gyroscope.-.MeanValue.-X.Direction
*	FrequencyDomain.Body.Gyroscope.-.MeanValue.-Y.Direction
*	FrequencyDomain.Body.Gyroscope.-.MeanValue.-Z.Direction
*	FrequencyDomain.Body.Gyroscope.-.MeanFrequency.-X.Direction
*	FrequencyDomain.Body.Gyroscope.-.MeanFrequency.-Y.Direction
*	FrequencyDomain.Body.Gyroscope.-.MeanFrequency.-Z.Direction
*	FrequencyDomain.Body.Acceleration.Magnitude-.MeanValue.
*	FrequencyDomain.Body.Acceleration.Magnitude-.MeanFrequency.
*	FrequencyDomain.BodyBody.Acceleration.JerkMagnitude-.MeanValue.
*	FrequencyDomain.BodyBody.Acceleration.JerkMagnitude-.MeanFrequency.
*	FrequencyDomain.BodyBody.Gyroscope.Magnitude-.MeanValue.
*	FrequencyDomain.BodyBody.Gyroscope.Magnitude-.MeanFrequency.
*	FrequencyDomain.BodyBody.Gyroscope.JerkMagnitude-.MeanValue.
*	FrequencyDomain.BodyBody.Gyroscope.JerkMagnitude-.MeanFrequency.
*	Angle.of.(TimeDomain.Body.Acceleration.Mean,gravity)
*	Angle.of.(TimeDomain.Body.Acceleration.JerkMean),gravityMean)
*	Angle.of.(TimeDomain.Body.Gyroscope.Mean,gravityMean)
*	Angle.of.(TimeDomain.Body.Gyroscope.JerkMean,gravityMean)
*	Angle.of.(X,gravityMean)
*	Angle.of.(Y,gravityMean)
*	Angle.of.(Z,gravityMean)
*	TimeDomain.Body.Acceleration.-.StandardDeviation.-X.Direction
*	TimeDomain.Body.Acceleration.-.StandardDeviation.-Y.Direction
*	TimeDomain.Body.Acceleration.-.StandardDeviation.-Z.Direction
*	TimeDomain.Gravity.Acceleration.-.StandardDeviation.-X.Direction
*	TimeDomain.Gravity.Acceleration.-.StandardDeviation.-Y.Direction
*	TimeDomain.Gravity.Acceleration.-.StandardDeviation.-Z.Direction
*	TimeDomain.Body.Acceleration.Jerk-.StandardDeviation.-X.Direction
*	TimeDomain.Body.Acceleration.Jerk-.StandardDeviation.-Y.Direction
*	TimeDomain.Body.Acceleration.Jerk-.StandardDeviation.-Z.Direction
*	TimeDomain.Body.Gyroscope.-.StandardDeviation.-X.Direction
*	TimeDomain.Body.Gyroscope.-.StandardDeviation.-Y.Direction
*	TimeDomain.Body.Gyroscope.-.StandardDeviation.-Z.Direction
*	TimeDomain.Body.Gyroscope.Jerk-.StandardDeviation.-X.Direction
*	TimeDomain.Body.Gyroscope.Jerk-.StandardDeviation.-Y.Direction
*	TimeDomain.Body.Gyroscope.Jerk-.StandardDeviation.-Z.Direction
*	TimeDomain.Body.Acceleration.Magnitude-.StandardDeviation.
*	TimeDomain.Gravity.Acceleration.Magnitude-.StandardDeviation.
*	TimeDomain.Body.Acceleration.JerkMagnitude-.StandardDeviation.
*	TimeDomain.Body.Gyroscope.Magnitude-.StandardDeviation.
*	TimeDomain.Body.Gyroscope.JerkMagnitude-.StandardDeviation.
*	FrequencyDomain.Body.Acceleration.-.StandardDeviation.-X.Direction
*	FrequencyDomain.Body.Acceleration.-.StandardDeviation.-Y.Direction
*	FrequencyDomain.Body.Acceleration.-.StandardDeviation.-Z.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.StandardDeviation.-X.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.StandardDeviation.-Y.Direction
*	FrequencyDomain.Body.Acceleration.Jerk-.StandardDeviation.-Z.Direction
*	FrequencyDomain.Body.Gyroscope.-.StandardDeviation.-X.Direction
*	FrequencyDomain.Body.Gyroscope.-.StandardDeviation.-Y.Direction
*	FrequencyDomain.Body.Gyroscope.-.StandardDeviation.-Z.Direction
*	FrequencyDomain.Body.Acceleration.Magnitude-.StandardDeviation.
*	FrequencyDomain.BodyBody.Acceleration.JerkMagnitude-.StandardDeviation.
*	FrequencyDomain.BodyBody.Gyroscope.Magnitude-.StandardDeviation.
*	FrequencyDomain.BodyBody.Gyroscope.JerkMagnitude-.StandardDeviation.


