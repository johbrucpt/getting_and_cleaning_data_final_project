Codebook
================
1/17/2021

## Project Description

The purpose of this project is to demonstrate the student’s ability to
collect, work with, and clean a data set. The goal is to prepare tidy
data that can be used for later analysis. The project uses the Human
Activity Recognition database which was built from the recordings of 30
subjects performing activities of daily living while carrying a
waist-mounted smartphone with embedded inertial sensors. The project
includes: 1) a tidy data set, 2) a script for performing the analysis,
and 3) a code book that describes the variables, the data, and any
transformations or work that were performed to clean up the data called
CodeBook.md, 4) a README.md which explains how all of the scripts work
and how they are connected.

## Study design and data processing

### Collection of the raw data

The following description is taken from Anguita et al. (2013):
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

“The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.”

## Creating the tidy datafile

### Guide to create the tidy data file

Description on how to create the tidy data file:

  - Download the data from
    <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

  - Unzip the folder

  - Set your working directory in R

  - Run the run\_analysis.R script

The script creates a data set called tidy\_data.txt in your working
directory.

### Cleaning of the data

Short, high-level description of what the cleaning script does:

  - Download the data

  - Extract only the measurements on the mean and standard deviation for
    each measurement.

  - Appropriately label the data set with descriptive variable names.

  - Merge the training and the test sets to create one data set.
    
      - Read in the training data sets and bind them together
    
      - Read in the test data sets and bind them together
    
      - Join the training and the test data

  - Use descriptive activity names to name the activities in the data
    set

  - Create a tidy data set with the average of each variable for each
    activity and each subject.

## Description of the variables in the tidy\_data.txt file

Dimensions of the dataset: 181 x 81

    ## [1] 181  81

Variables present in the dataset:

  - The first column shows the “Subject” number (from 1 to
    30):

<!-- end list -->

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    ## [26] 26 27 28 29 30

  - The second column shows the
    “Activity”:

<!-- end list -->

    ## [1] "LAYING"             "SITTING"            "STANDING"          
    ## [4] "WALKING"            "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"

  - All other columns show the data collected by the accelerometer and
    gyroscope:

<!-- end list -->

    ##  [1] "TimeBodyAccelerationMeanX"                                             
    ##  [2] "TimeBodyAccelerationMeanY"                                             
    ##  [3] "TimeBodyAccelerationMeanZ"                                             
    ##  [4] "TimeBodyAccelerationStandardDeviationX"                                
    ##  [5] "TimeBodyAccelerationStandardDeviationY"                                
    ##  [6] "TimeBodyAccelerationStandardDeviationZ"                                
    ##  [7] "TimeGravityAccelerationMeanX"                                          
    ##  [8] "TimeGravityAccelerationMeanY"                                          
    ##  [9] "TimeGravityAccelerationMeanZ"                                          
    ## [10] "TimeGravityAccelerationStandardDeviationX"                             
    ## [11] "TimeGravityAccelerationStandardDeviationY"                             
    ## [12] "TimeGravityAccelerationStandardDeviationZ"                             
    ## [13] "TimeBodyLinearAccelerationelerationMeanX"                              
    ## [14] "TimeBodyLinearAccelerationelerationMeanY"                              
    ## [15] "TimeBodyLinearAccelerationelerationMeanZ"                              
    ## [16] "TimeBodyLinearAccelerationelerationStandardDeviationX"                 
    ## [17] "TimeBodyLinearAccelerationelerationStandardDeviationY"                 
    ## [18] "TimeBodyLinearAccelerationelerationStandardDeviationZ"                 
    ## [19] "TimeBodyGyroMeanX"                                                     
    ## [20] "TimeBodyGyroMeanY"                                                     
    ## [21] "TimeBodyGyroMeanZ"                                                     
    ## [22] "TimeBodyGyroStandardDeviationX"                                        
    ## [23] "TimeBodyGyroStandardDeviationY"                                        
    ## [24] "TimeBodyGyroStandardDeviationZ"                                        
    ## [25] "TimeBodyAngularVelocityMeanX"                                          
    ## [26] "TimeBodyAngularVelocityMeanY"                                          
    ## [27] "TimeBodyAngularVelocityMeanZ"                                          
    ## [28] "TimeBodyAngularVelocityStandardDeviationX"                             
    ## [29] "TimeBodyAngularVelocityStandardDeviationY"                             
    ## [30] "TimeBodyAngularVelocityStandardDeviationZ"                             
    ## [31] "TimeBodyAccelerationMagnitudeMean"                                     
    ## [32] "TimeBodyAccelerationMagnitudeStandardDeviation"                        
    ## [33] "TimeGravityAccelerationMagnitudeMean"                                  
    ## [34] "TimeGravityAccelerationMagnitudeStandardDeviation"                     
    ## [35] "TimeBodyLinearAccelerationelerationMagnitudeMean"                      
    ## [36] "TimeBodyLinearAccelerationelerationMagnitudeStandardDeviation"         
    ## [37] "TimeBodyGyroMagnitudeMean"                                             
    ## [38] "TimeBodyGyroMagnitudeStandardDeviation"                                
    ## [39] "TimeBodyAngularVelocityMagnitudeMean"                                  
    ## [40] "TimeBodyAngularVelocityMagnitudeStandardDeviation"                     
    ## [41] "FrequencyBodyAccelerationMeanX"                                        
    ## [42] "FrequencyBodyAccelerationMeanY"                                        
    ## [43] "FrequencyBodyAccelerationMeanZ"                                        
    ## [44] "FrequencyBodyAccelerationStandardDeviationX"                           
    ## [45] "FrequencyBodyAccelerationStandardDeviationY"                           
    ## [46] "FrequencyBodyAccelerationStandardDeviationZ"                           
    ## [47] "FrequencyBodyAccelerationMeanFreqX"                                    
    ## [48] "FrequencyBodyAccelerationMeanFreqY"                                    
    ## [49] "FrequencyBodyAccelerationMeanFreqZ"                                    
    ## [50] "FrequencyBodyLinearAccelerationelerationMeanX"                         
    ## [51] "FrequencyBodyLinearAccelerationelerationMeanY"                         
    ## [52] "FrequencyBodyLinearAccelerationelerationMeanZ"                         
    ## [53] "FrequencyBodyLinearAccelerationelerationStandardDeviationX"            
    ## [54] "FrequencyBodyLinearAccelerationelerationStandardDeviationY"            
    ## [55] "FrequencyBodyLinearAccelerationelerationStandardDeviationZ"            
    ## [56] "FrequencyBodyLinearAccelerationelerationMeanFreqX"                     
    ## [57] "FrequencyBodyLinearAccelerationelerationMeanFreqY"                     
    ## [58] "FrequencyBodyLinearAccelerationelerationMeanFreqZ"                     
    ## [59] "FrequencyBodyGyroMeanX"                                                
    ## [60] "FrequencyBodyGyroMeanY"                                                
    ## [61] "FrequencyBodyGyroMeanZ"                                                
    ## [62] "FrequencyBodyGyroStandardDeviationX"                                   
    ## [63] "FrequencyBodyGyroStandardDeviationY"                                   
    ## [64] "FrequencyBodyGyroStandardDeviationZ"                                   
    ## [65] "FrequencyBodyGyroMeanFreqX"                                            
    ## [66] "FrequencyBodyGyroMeanFreqY"                                            
    ## [67] "FrequencyBodyGyroMeanFreqZ"                                            
    ## [68] "FrequencyBodyAccelerationMagnitudeMean"                                
    ## [69] "FrequencyBodyAccelerationMagnitudeStandardDeviation"                   
    ## [70] "FrequencyBodyAccelerationMagnitudeMeanFreq"                            
    ## [71] "FrequencyBodyBodyLinearAccelerationelerationMagnitudeMean"             
    ## [72] "FrequencyBodyBodyLinearAccelerationelerationMagnitudeStandardDeviation"
    ## [73] "FrequencyBodyBodyLinearAccelerationelerationMagnitudeMeanFreq"         
    ## [74] "FrequencyBodyBodyGyroMagnitudeMean"                                    
    ## [75] "FrequencyBodyBodyGyroMagnitudeStandardDeviation"                       
    ## [76] "FrequencyBodyBodyGyroMagnitudeMeanFreq"                                
    ## [77] "FrequencyBodyBodyAngularVelocityMagnitudeMean"                         
    ## [78] "FrequencyBodyBodyAngularVelocityMagnitudeStandardDeviation"            
    ## [79] "FrequencyBodyBodyAngularVelocityMagnitudeMeanFreq"
