# CodeBook

Author: Roelf Nel

Course: Coursera Getting and Cleaning Data - Course Assignment

## Description

The output summary tidy dataset "grouped_means.txt" contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set

## Source Data

The Human Activity Recognition Using Smartphones Data Set isobtainable from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### Files:

- features.txt : Feature codes
- activity_lables.txt : Activity Codes & Names
- 'train/x_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'train/subject_train.txt' : subjects for training set
- 'test/x_test.txt': Test set
- 'test/y_test.txt': Test labels
- 'train/subject_train.txt' : subjects for test set

## Transformation Steps

### Step 1
Read all supplied data files into representing data tables.  Merge the training and test datasets into one set, and then combine with the description tables

### Step 2
Extract only the measurements on mean and standard deviation for each set

### Step 3
Join with descriptive activity names to name the activieties in the dataset

### Step 4
Label each column with more descriptive column names

### Step 5
Create the final set with the average of each variable grouped by each activity and each subject

## DataSet Description

 [1] "Activity"                                               
 [2] "Subject"                                                
 [3] "ActivityCode_mean"                                      
 [4] "TimeBodyAccelerometer.mean...X_mean"                    
 [5] "TimeBodyAccelerometer.mean...Y_mean"                    
 [6] "TimeBodyAccelerometer.mean...Z_mean"                    
 [7] "TimeGravityAccelerometer.mean...X_mean"                 
 [8] "TimeGravityAccelerometer.mean...Y_mean"                 
 [9] "TimeGravityAccelerometer.mean...Z_mean"                 
[10] "TimeBodyAccelerometerJerk.mean...X_mean"                
[11] "TimeBodyAccelerometerJerk.mean...Y_mean"                
[12] "TimeBodyAccelerometerJerk.mean...Z_mean"                
[13] "TimeBodyGyroscope.mean...X_mean"                        
[14] "TimeBodyGyroscope.mean...Y_mean"                        
[15] "TimeBodyGyroscope.mean...Z_mean"                        
[16] "TimeBodyGyroscopeJerk.mean...X_mean"                    
[17] "TimeBodyGyroscopeJerk.mean...Y_mean"                    
[18] "TimeBodyGyroscopeJerk.mean...Z_mean"                    
[19] "TimeBodyAccelerometerMagnitude.mean.._mean"             
[20] "TimeGravityAccelerometerMagnitude.mean.._mean"          
[21] "TimeBodyAccelerometerJerkMagnitude.mean.._mean"         
[22] "TimeBodyGyroscopeMagnitude.mean.._mean"                 
[23] "TimeBodyGyroscopeJerkMagnitude.mean.._mean"             
[24] "FrequencyBodyAccelerometer.mean...X_mean"               
[25] "FrequencyBodyAccelerometer.mean...Y_mean"               
[26] "FrequencyBodyAccelerometer.mean...Z_mean"               
[27] "FrequencyBodyAccelerometer.meanFreq...X_mean"           
[28] "FrequencyBodyAccelerometer.meanFreq...Y_mean"           
[29] "FrequencyBodyAccelerometer.meanFreq...Z_mean"           
[30] "FrequencyBodyAccelerometerJerk.mean...X_mean"           
[31] "FrequencyBodyAccelerometerJerk.mean...Y_mean"           
[32] "FrequencyBodyAccelerometerJerk.mean...Z_mean"           
[33] "FrequencyBodyAccelerometerJerk.meanFreq...X_mean"       
[34] "FrequencyBodyAccelerometerJerk.meanFreq...Y_mean"       
[35] "FrequencyBodyAccelerometerJerk.meanFreq...Z_mean"       
[36] "FrequencyBodyGyroscope.mean...X_mean"                   
[37] "FrequencyBodyGyroscope.mean...Y_mean"                   
[38] "FrequencyBodyGyroscope.mean...Z_mean"                   
[39] "FrequencyBodyGyroscope.meanFreq...X_mean"               
[40] "FrequencyBodyGyroscope.meanFreq...Y_mean"               
[41] "FrequencyBodyGyroscope.meanFreq...Z_mean"               
[42] "FrequencyBodyAccelerometerMagnitude.mean.._mean"        
[43] "FrequencyBodyAccelerometerMagnitude.meanFreq.._mean"    
[44] "FrequencyBodyAccelerometerJerkMagnitude.mean.._mean"    
[45] "FrequencyBodyAccelerometerJerkMagnitude.meanFreq.._mean"  
[46] "FrequencyBodyGyroscopeMagnitude.mean.._mean"            
[47] "FrequencyBodyGyroscopeMagnitude.meanFreq.._mean"        
[48] "FrequencyBodyGyroscopeJerkMagnitude.mean.._mean"        
[49] "FrequencyBodyGyroscopeJerkMagnitude.meanFreq.._mean"    
[50] "Angle.TimeBodyAccelerometerMean.Gravity._mean"          
[51] "Angle.TimeBodyAccelerometerJerkMean..GravityMean._mean"    
[52] "Angle.TimeBodyGyroscopeMean.GravityMean._mean"          
[53] "Angle.TimeBodyGyroscopeJerkMean.GravityMean._mean"      
[54] "Angle.X.GravityMean._mean"                              
[55] "Angle.Y.GravityMean._mean"                              
[56] "Angle.Z.GravityMean._mean"                              
[57] "TimeBodyAccelerometer.std...X_mean"                     
[58] "TimeBodyAccelerometer.std...Y_mean"                     
[59] "TimeBodyAccelerometer.std...Z_mean"                     
[60] "TimeGravityAccelerometer.std...X_mean"                  
[61] "TimeGravityAccelerometer.std...Y_mean"                  
[62] "TimeGravityAccelerometer.std...Z_mean"                  
[63] "TimeBodyAccelerometerJerk.std...X_mean"                 
[64] "TimeBodyAccelerometerJerk.std...Y_mean"                 
[65] "TimeBodyAccelerometerJerk.std...Z_mean"                 
[66] "TimeBodyGyroscope.std...X_mean"                         
[67] "TimeBodyGyroscope.std...Y_mean"                         
[68] "TimeBodyGyroscope.std...Z_mean"                         
[69] "TimeBodyGyroscopeJerk.std...X_mean"                     
[70] "TimeBodyGyroscopeJerk.std...Y_mean"                     
[71] "TimeBodyGyroscopeJerk.std...Z_mean"                     
[72] "TimeBodyAccelerometerMagnitude.std.._mean"              
[73] "TimeGravityAccelerometerMagnitude.std.._mean"           
[74] "TimeBodyAccelerometerJerkMagnitude.std.._mean"          
[75] "TimeBodyGyroscopeMagnitude.std.._mean"                  
[76] "TimeBodyGyroscopeJerkMagnitude.std.._mean"              
[77] "FrequencyBodyAccelerometer.std...X_mean"                
[78] "FrequencyBodyAccelerometer.std...Y_mean"                
[79] "FrequencyBodyAccelerometer.std...Z_mean"                
[80] "FrequencyBodyAccelerometerJerk.std...X_mean"            
[81] "FrequencyBodyAccelerometerJerk.std...Y_mean"            
[82] "FrequencyBodyAccelerometerJerk.std...Z_mean"            
[83] "FrequencyBodyGyroscope.std...X_mean"                    
[84] "FrequencyBodyGyroscope.std...Y_mean"                    
[85] "FrequencyBodyGyroscope.std...Z_mean"                    
[86] "FrequencyBodyAccelerometerMagnitude.std.._mean"         
[87] "FrequencyBodyAccelerometerJerkMagnitude.std.._mean"     
[88] "FrequencyBodyGyroscopeMagnitude.std.._mean"             
[89] "FrequencyBodyGyroscopeJerkMagnitude.std.._mean"   
