## Codebook

The results produced by the run_analysis() function are grouped means (by Activity and Subject) of features from "Human Activity Recognition Using Smartphones Dataset version 1.0" that contained a mean or standard deviation.  MeanFrequency features were excluded, because they're not a mean (but a component of obtaining a mean).

Please see the original dataset, "features_info.txt", for description of their measurement techniques and transmutations.

### Modifed Feature Names
Feature names were modified as follows: 
* Removed invalid characters for column names in R, including () and -
* Corrected duplicate term (BodyBody to Body)
* Removed excess periods that were created by the function to remove invalid characters
* Elaborated names from the abbreviation for uncommon terms (from description in "features_info.txt")

Abbreviation | Extension
--- | ---
t |  time
f |  frequency
Acc | Acceleration
iqr | InterquartileRange
Mag | Magnitude
sma | SignalMagnitudeArea
maxInds | maxIndex
std | StandardDeviation
mad | MedianAbsoluteDeviation
tBody | timeBody

### Calculation Performed On Extracted Variables
Variables containing a mean or standard deviation were extracted (not including MeanFreq), then the grouped mean calculated for each activity and subject.  The calculated group means are written to a txt file ("results.txt"), containing 180 rows (30 subjects * 6 activities) and 75 variables.  

### Variable Descriptions
Variables, with the exception of Activity and Subject, are grouped means of the original feature data.

Variable | Description 
--- | --- 
Activity | Char activity description (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
Subject | Numeric subject (1-30)  
timeBodyAcceleration.mean.X | Mean of time body acceleration, X axis 
timeBodyAcceleration.mean.Y | Mean of time body acceleration, Y axis  
timeBodyAcceleration.mean.Z | Mean of time body acceleration, Z axis  
timeGravityAcceleration.mean.X | Mean of time gravity acceleration, X axis 
timeGravityAcceleration.mean.Y | Mean of time gravity acceleration, Y axis 
timeGravityAcceleration.mean.Z | Mean of time gravity acceleration, Z axis 
timeBodyAccelerationJerk.mean.X | Mean of jerk signals for time body acceleration, X axis 
timeBodyAccelerationJerk.mean.Y | Mean of jerk signals for time body acceleration, Y axis 
timeBodyAccelerationJerk.mean.Z | Mean of jerk signals for time body acceleration, Z axis 
timeBodyGyro.mean.X | Mean of time body gyroscope signals, X axis 
timeBodyGyro.mean.Y | Mean of time body gyroscope signals, Y axis  
timeBodyGyro.mean.Z | Mean of time body gyroscope signals, Z axis  
timeBodyGyroJerk.mean.X | Mean of jerk signals for time body gyroscope, X axis 
timeBodyGyroJerk.mean.Y | Mean of jerk signals for time body gyroscope, Y axis 
timeBodyGyroJerk.mean.Z | Mean of jerk signals for time body gyroscope, Z axis 
timeBodyAccelerationMagnitude.mean | Mean of magnitude of three dimensional time body accleration 
timeGravityAccelerationMagnitude.mean | Mean of magnitude of three dimensional time gravity acceleration 
timeBodyAccelerationJerkMagnitude.mean | Mean of magnitude of three dimensional jerk signals for time body acceleration
timeBodyGyroMagnitude.mean | Mean of magnitude of three dimensional time body gyroscope signals
timeBodyGyroJerkMagnitude.mean | Mean of magnitude of three dimensional jerk signals for time body gyroscope
frequencyBodyAcceleration.mean.X | Mean of frequency of body acceleration, X axis
frequencyBodyAcceleration.mean.Y | Mean of frequency of body acceleration, Y axis  
frequencyBodyAcceleration.mean.Z | Mean of frequency of body acceleration, Z axis 
frequencyBodyAccelerationJerk.mean.X | Mean of frequency of jerk signals for time body acceleration, X axis
frequencyBodyAccelerationJerk.mean.Y | Mean of frequency of jerk signals for time body acceleration, Y axis
frequencyBodyAccelerationJerk.mean.Z | Mean of frequency of jerk signals for time body acceleration, Z axis
frequencyBodyGyro.mean.X | Mean of frequency for body gyroscope signals, X axis 
frequencyBodyGyro.mean.Y | Mean of frequency for body gyroscope signals, Y axis 
frequencyBodyGyro.mean.Z | Mean of frequency for body gyroscope signals, Z axis 
frequencyBodyAccelerationMagnitude.mean | Mean of magnitude of the frequency of three dimensional body acceleration 
frequencyBodyAccelerationJerkMagnitude.mean | Mean of magnitude of three dimensional jerk signals for frequency of body acceleration 
frequencyBodyGyroMagnitude.mean | Mean of magnitude of the frequency of three dimensional body gyroscope signals 
frequencyBodyGyroJerkMagnitude.mean | Mean of magnitude of the frequency of three dimensional jerk signals for body gyroscope 
angle.timeBodyAccelerationMean.gravity | Mean applied to the angle (see "features.txt")
angle.timeBodyAccelerationJerkMean.gravityMean | Mean applied to the angle (see "features.txt")  
angle.timeBodyGyroMean.gravityMean | Mean applied to the angle (see "features.txt")
angle.timeBodyGyroJerkMean.gravityMean | Mean applied to the angle (see "features.txt")
angle.X.gravityMean | Gravity mean of the angle, X axis
angle.Y.gravityMean | Gravity mean of the angle, Y axis  
angle.Z.gravityMean | Gravity mean of the angle, Z axis  
timeBodyAcceleration.StandardDeviation.X | Standard deviation of time body acceleration, X axis 
timeBodyAcceleration.StandardDeviation.Y | Standard deviation of time body acceleration, Y axis 
timeBodyAcceleration.StandardDeviation.Z | Standard deviation of time body acceleration, Z axis 
timeGravityAcceleration.StandardDeviation.X | Standard deviation of time gravity acceleration, X axis 
timeGravityAcceleration.StandardDeviation.Y | Standard deviation of time gravity acceleration, Y axis 
timeGravityAcceleration.StandardDeviation.Z | Standard deviation of time gravity acceleration, Z axis  
timeBodyAccelerationJerk.StandardDeviation.X | Standard deviation of the jerk signals for time body acceleration, X axis 
timeBodyAccelerationJerk.StandardDeviation.Y | Standard deviation of the jerk signals for time body acceleration, Y axis 
timeBodyAccelerationJerk.StandardDeviation.Z | Standard deviation of the jerk signals for time body acceleration, Z axis 
timeBodyGyro.StandardDeviation.X | Standard deviation of time body gyroscope signals, X axis 
timeBodyGyro.StandardDeviation.Y | Standard deviation of time body gyroscope signals, Y axis  
timeBodyGyro.StandardDeviation.Z | Standard deviation of time body gyroscope signals, Z axis
timeBodyGyroJerk.StandardDeviation.X | Standard deviation of jerk signals for time body gyroscope, X axis 
timeBodyGyroJerk.StandardDeviation.Y | Standard deviation of jerk signals for time body gyroscope, Y axis 
timeBodyGyroJerk.StandardDeviation.Z | Standard deviation of jerk signals for time body gyroscope, Z axis
timeBodyAccelerationMagnitude.StandardDeviation | Standard deviation of magnitude of three dimensional time body acceleration 
timeGravityAccelerationMagnitude.StandardDeviation | Standard deviation of magnitude of three dimensional time gravity acceleration 
timeBodyAccelerationJerkMagnitude.StandardDeviation | Standard deviation of magnitude of three dimensional jerk signals for time body acceleration
timeBodyGyroMagnitude.StandardDeviation | Standard deviation of magnitude of three dimensional time body gyroscope signals 
timeBodyGyroJerkMagnitude.StandardDeviation | Standard deviation of magnitude of three dimensional jerk signals for time body gyroscope 
frequencyBodyAcceleration.StandardDeviation.X | Standard deviation of the frequency of body acceleration, X axis
frequencyBodyAcceleration.StandardDeviation.Y | Standard deviation of the frequency of body acceleration, Y axis 
frequencyBodyAcceleration.StandardDeviation.Z | Standard deviation of the frequency of body acceleration, Z axis
frequencyBodyAccelerationJerk.StandardDeviation.X | Standard deviation of frequency of jerk signals for body acceleration, X axis 
frequencyBodyAccelerationJerk.StandardDeviation.Y | Standard deviation of frequency of jerk signals for body acceleration, Y axis 
frequencyBodyAccelerationJerk.StandardDeviation.Z | Standard deviation of frequency of jerk signals for body acceleration, Z axis
frequencyBodyGyro.StandardDeviation.X | Standard deviation of the body gyroscope signals, X axis 
frequencyBodyGyro.StandardDeviation.Y | Standard deviation of the body gyroscope signals, Y axis 
frequencyBodyGyro.StandardDeviation.Z | Standard deviation of the body gyroscope signals, Z axis 
frequencyBodyAccelerationMagnitude.StandardDeviation | Standard deviation of magnitude of the frequency of three dimensional body acceleration 
frequencyBodyAccelerationJerkMagnitude.StandardDeviation | Standard deviation of magnitude of three dimensional jerk signals for frequency of body acceleration 
frequencyBodyGyroMagnitude.StandardDeviation | Standard deviation of magnitude of the frequency of three dimensional body gyroscope signals 
frequencyBodyGyroJerkMagnitude.StandardDeviation | Standard deviation of magnitude of the frequency of three dimensional jerk signals for body gyroscope
