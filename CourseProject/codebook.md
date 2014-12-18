---
title: "Code Book"
author: "Paul"
date: "December 17, 2014"
output: html_document
---

The variable names selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals timeAcc in XYZ dimensions and timeGyro in XYZ dimensions. 
All the variable names that have 'time' in them are time domain signals. 
The acceleration signal was separated into body and gravity acceleration signals (timeBodyAcc in XYZ dimensions and timeGravityAcc in XYZ dimensions). 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk in XYZ dimensions and 
timeBodyGyroJerk in XYZ dimensions). 
The magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc in XYZ dimensions, freqBodyAccJerk in XYZ dimensions, freqBodyGyro in XYZ dimensions, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
'freq' is used to denote frequency domain signals
'Mag' is used to denote Magnitude
'Acc' is used to denote acceleration

The set of variables that were estimated from these signals are: 
mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency
angle: Angle between two vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:
gravityMean
timeBodyAccMean
timeBodyAccJerkMean
timeBodyGyroMean
timeBodyGyroJerkMean

Two variables were used to identify the participants, and the activities:
Subject: Used to identify the pariticipants (there are 30 participants, 1-30)
Activity: Used to identify the activities ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

time domain signals:

                Direction:              
                                        X-Direction                     Y-Direction                             Z-Direction
                                        
                Body:
                Mean:                   "timeBodyAccmeanX"                  "timeBodyAccmeanY"                  "timeBodyAccmeanZ"                  
                Standard deviation:     "timeBodyAccstdX"                   "timeBodyAccstdY"                   "timeBodyAccstdZ"

                Gravity:
                Mean:                   "timeGravityAccmeanX"               "timeGravityAccmeanY"               "timeGravityAccmeanZ"               
                Standard deviation:     "timeGravityAccstdX"                "timeGravityAccstdY"                "timeGravityAccstdZ"

                Jerk:
                Mean:                   "timeBodyAccJerkmeanX"              "timeBodyAccJerkmeanY"              "timeBodyAccJerkmeanZ"              
                Standard deviation:     "timeBodyAccJerkstdX"               "timeBodyAccJerkstdY"               "timeBodyAccJerkstdZ"

                Gyro:
                Mean:                    "timeBodyGyromeanX"                 "timeBodyGyromeanY"                 "timeBodyGyromeanZ"                 
                Standard deviation       "timeBodyGyrostdX"                  "timeBodyGyrostdY"                  "timeBodyGyrostdZ" 

                GyroJerk:
                Mean:                    "timeBodyGyroJerkmeanX"             "timeBodyGyroJerkmeanY"             "timeBodyGyroJerkmeanZ"             
                Standard deviation:      "timeBodyGyroJerkstdX"              "timeBodyGyroJerkstdY"              "timeBodyGyroJerkstdZ" 

                Magnitude:
                Body:
                Mean:                   "timeBodyAccMagmean"                
                Standard deviation:     "timeBodyAccMagstd" 

                Gravity:
                Mean:                   "timeGravityAccMagmean"             
                Standard deviation:     "timeGravityAccMagstd"
        
                Jerk:
                Mean:                   "timeBodyAccJerkMagmean"            
                Standard deviation:     "timeBodyAccJerkMagstd"
        
                Gyro:
                Mean:                   "timeBodyGyroMagmean"               
                Standard deviation:     "timeBodyGyroMagstd"
        
                GyroJerk:
                Mean:                   "timeBodyGyroJerkMagmean"           
                Standard deviation:     "timeBodyGyroJerkMagstd"
        
frequency domain signals:
                
                Directions:
                                                X-Direction             Y-Direction                             Z-Direction
                                        
                Body:
                Mean:                   "freqBodyAccmeanX"              "freqBodyAccmeanY"                      "freqBodyAccmeanZ"                  
                Standard deviation:     "freqBodyAccstdX"               "freqBodyAccstdY"                       "freqBodyAccstdZ" 
                Mean frequency:         "freqBodyAccmeanFreqX"          "freqBodyAccmeanFreqY"                  "freqBodyAccmeanFreqZ"

                Jerk:                        
                Mean:                   "freqBodyAccJerkmeanX"          "freqBodyAccJerkmeanY"                  "freqBodyAccJerkmeanZ"
                Standard deviation:     "freqBodyAccJerkstdX"           "freqBodyAccJerkstdY"                   "freqBodyAccJerkstdZ" 
                Mean frequency:         "freqBodyAccJerkmeanFreqX"      "freqBodyAccJerkmeanFreqY"           "freqBodyAccJerkmeanFreqZ"
                        
                Gyro:                        
                Mean:                   "freqBodyGyromeanX"              "freqBodyGyromeanY"                    "freqBodyGyromeanZ"                 
                Standard deviation:     "freqBodyGyrostdX"               "freqBodyGyrostdY"                     "freqBodyGyrostdZ" 
                Mean frequency:         "freqBodyGyromeanFreqX"          "freqBodyGyromeanFreqY"                "freqBodyGyromeanFreqZ" 
                        
                Magnitude:
                Body:
                Mean:                   "freqBodyAccMagmean"                
                Standard deviation:     "freqBodyAccMagstd" 
                Mean frequency:         "freqBodyAccMagmeanFreq"
                        
                Jerk:                
                Mean:                   "freqBodyAccJerkMagmean"            
                Standard deviation:     "freqBodyAccJerkMagstd" 
                Mean frequency:         "freqBodyAccJerkMagmeanFreq"
                        
                Gyro:                
                Mean:                   "freqBodyGyroMagmean"               
                Standard deviation:     "freqBodyGyroMagstd"
                Mean frequency:         "freqBodyGyroMagmeanFreq"
                        
                GyroJerk:                
                Mean:                   "freqBodyGyroJerkMagmean"           
                Standard deviation:     "freqBodyGyroJerkMagstd"
                Mean frequency:         "freqBodyGyroJerkMagmeanFreq" 

                angle:
                                        "angletimeBodyAccMeangravity"         
                                        "angletimeBodyAccJerkMeangravityMean"  
                                        "angletimeBodyGyroMeangravityMean"     
                                        "angletimeBodyGyroJerkMeangravityMean"

                                        "angleXgravityMean"             "angleYgravityMean"                     "angleZgravityMean"
                        
Subject and Activity:

                Subject:
                "Subject":      1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 

                Activity:
                "Activity":     "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"


==Rferences==
*features_info.txt