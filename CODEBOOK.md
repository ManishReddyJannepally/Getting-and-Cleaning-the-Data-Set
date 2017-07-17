# Code Book

This code book summarizes the resulting data fields in `data_avg_by_act_sub`.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

# Measurement Variables

> "TimeDomain.BodyAcceleration.Mean.X"                                    
> "TimeDomain.BodyAcceleration.Mean.Y"                                    
> "TimeDomain.BodyAcceleration.Mean.Z"                                    
> "TimeDomain.BodyAcceleration.StandardDeviation.X"                       
> "TimeDomain.BodyAcceleration.StandardDeviation.Y"                       
> "TimeDomain.BodyAcceleration.StandardDeviation.Z"                       
> "TimeDomain.GravityAcceleration.Mean.X"                                 
> "TimeDomain.GravityAcceleration.Mean.Y"                                 
> "TimeDomain.GravityAcceleration.Mean.Z"                                 
> "TimeDomain.GravityAcceleration.StandardDeviation.X"                    
> "TimeDomain.GravityAcceleration.StandardDeviation.Y"                    
> "TimeDomain.GravityAcceleration.StandardDeviation.Z"                    
> "TimeDomain.BodyAccelerationJerk.Mean.X"                                
> "TimeDomain.BodyAccelerationJerk.Mean.Y"                                
> "TimeDomain.BodyAccelerationJerk.Mean.Z"                                
> "TimeDomain.BodyAccelerationJerk.StandardDeviation.X"                   
> "TimeDomain.BodyAccelerationJerk.StandardDeviation.Y"                   
> "TimeDomain.BodyAccelerationJerk.StandardDeviation.Z"                   
> "TimeDomain.BodyAngularSpeed.Mean.X"                                    
> "TimeDomain.BodyAngularSpeed.Mean.Y"                                    
> "TimeDomain.BodyAngularSpeed.Mean.Z"                                    
> "TimeDomain.BodyAngularSpeed.StandardDeviation.X"                       
> "TimeDomain.BodyAngularSpeed.StandardDeviation.Y"                       
> "TimeDomain.BodyAngularSpeed.StandardDeviation.Z"                       
> "TimeDomain.BodyAngularAcceleration.Mean.X"                             
> "TimeDomain.BodyAngularAcceleration.Mean.Y"                             
> "TimeDomain.BodyAngularAcceleration.Mean.Z"                             
> "TimeDomain.BodyAngularAcceleration.StandardDeviation.X"                
> "TimeDomain.BodyAngularAcceleration.StandardDeviation.Y"                
> "TimeDomain.BodyAngularAcceleration.StandardDeviation.Z"                
> "TimeDomain.BodyAccelerationMagnitude.Mean"                             
> "TimeDomain.BodyAccelerationMagnitude.StandardDeviation"                
> "TimeDomain.GravityAccelerationMagnitude.Mean"                          
> "TimeDomain.GravityAccelerationMagnitude.StandardDeviation"             
> "TimeDomain.BodyAccelerationJerkMagnitude.Mean"                         
> "TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation"            
> "TimeDomain.BodyAngularSpeedMagnitude.Mean"                             
> "TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation"                
> "TimeDomain.BodyAngularAccelerationMagnitude.Mean"                      
> "TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation"         
> "FrequencyDomain.BodyAcceleration.Mean.X"                               
> "FrequencyDomain.BodyAcceleration.Mean.Y"                               
> "FrequencyDomain.BodyAcceleration.Mean.Z"                               
> "FrequencyDomain.BodyAcceleration.StandardDeviation.X"                  
> "FrequencyDomain.BodyAcceleration.StandardDeviation.Y"                  
> "FrequencyDomain.BodyAcceleration.StandardDeviation.Z"                  
> "FrequencyDomain.BodyAcceleration.MeanFrequency.X"                      
> "FrequencyDomain.BodyAcceleration.MeanFrequency.Y"                      
> "FrequencyDomain.BodyAcceleration.MeanFrequency.Z"                      
> "FrequencyDomain.BodyAccelerationJerk.Mean.X"                           
> "FrequencyDomain.BodyAccelerationJerk.Mean.Y"                           
> "FrequencyDomain.BodyAccelerationJerk.Mean.Z"                           
> "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X"              
> "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y"              
> "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z"              
> "FrequencyDomain.BodyAccelerationJerk.MeanFrequency.X"                  
> "FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Y"                  
> "FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Z"                  
> "FrequencyDomain.BodyAngularSpeed.Mean.X"                               
> "FrequencyDomain.BodyAngularSpeed.Mean.Y"                               
> "FrequencyDomain.BodyAngularSpeed.Mean.Z"                               
> "FrequencyDomain.BodyAngularSpeed.StandardDeviation.X"                  
> "FrequencyDomain.BodyAngularSpeed.StandardDeviation.Y"                  
> "FrequencyDomain.BodyAngularSpeed.StandardDeviation.Z"                  
> "FrequencyDomain.BodyAngularSpeed.MeanFrequency.X"                      
> "FrequencyDomain.BodyAngularSpeed.MeanFrequency.Y"                      
> "FrequencyDomain.BodyAngularSpeed.MeanFrequency.Z"                      
> "FrequencyDomain.BodyAccelerationMagnitude.Mean"                        
> "FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation"           
> "FrequencyDomain.BodyAccelerationMagnitude.MeanFrequency"               
> "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean"                
> "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation"   
> "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean"       
> "FrequencyDomain.BodyBodyAngularSpeedMagnitude.Mean"                    
> "FrequencyDomain.BodyBodyAngularSpeedMagnitude.StandardDeviation"       
> "FrequencyDomain.BodyBodyAngularSpeedMagnitude.Mean"           
> "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.Mean"             
> "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.StandardDeviation"
> "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.Mean"                                                        

## Data transformation

The raw data sets are processed with run_analisys.R script to create a tidy data set.

# Merge training and test sets.

Test and training data (X_train.txt, X_test.txt), subject ids (subject_train.txt, subject_test.txt) and activity ids (y_train.txt, y_test.txt) are merged to obtain a single data set. Variables are labelled with the names assigned by 
original collectors (features.txt).

# Extract mean and standard deviation variables

From the merged data set is extracted and intermediate data set with only the values of estimated mean (variables with labels that 
contain "mean") and standard deviation (variables with labels that contain "std").

# Use descriptive activity names

A new column is added to intermediate data set with the activity description. Activity id column is used to look up descriptions in 
activity_labels.txt.

# Label variables appropriately

Labels given from the original collectors were changed: to obtain valid R names without parentheses, dashes and commas to obtain more
descriptive labels

# Create a tidy data set
From the intermediate data set is created a final tidy data set where numeric variables are averaged for each activity and each subject.

The tidy data set contains 10299 observations with 81 variables divided in:
->an activity label (Activity): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
->an identifier of the subject who carried out the experiment (Subject): 1, 3, 5, 6, 7, 8, 11, 14, 15, 16, 17, 19, 21, 22, 23, 25, 26, 
27, 28, 29, 30
->a 79-feature vector with time and frequency domain signal variables (numeric)

For variables derived from mean and standard deviation estimation, the previous labels are augmented with the terms "Mean" or 
"StandardDeviation".

The data set is written to the file data_avg_by_act_sub.txt.
