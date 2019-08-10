# Codebook:

This file describes the project environment: the source data, several transformations of variables, etc., until a tidy dataset called "**tidydataset.txt**" is obtained.

## Source data

The **source data** was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It contained several datasets and documentation, as well an explanation of the experiments. Readers who are interested in further information about the experiment and the original data, should refer to the source data documentation.

Each of the 561 measurement variables in the source data were normalized and bounded to [-1,1]



## Steps undertaken for data transformation and cleaning


* part 1: Merge the training and the test sets to create one data set. First I read data from text files and merge the training and tests parts immediately. Then I set the variables' names. Finally I merge every sub sample of data, and remove intermmediate datasets, for memory saving purposes
        

* part 2: I extract only the measurements on the mean and standard deviation for each measurement.

* part 3: relabel activity variable with descriptive names. Basically I transform a character vector into a factor in order to make values more self-descriptive
        
* part 4: I appropriately label the names of the rest of the variables in the dataset, removing unwanted characters and replacing abbreviations.        

* part 5: From the data set in part 4, I create an independent tidy data set with the average of each variable for each activity and each subject, and save the new dataset as "**tidydataset.txt**".


## Outcome: a tidy dataset called "**tidydataset.txt**"

The output dataset contains 81 variables:

subject: 30 subjects or participants in the study. Numeric variable with values ranging from 1 to 30.
activity: 1=WALKING, 2=WALKING_UPSTAIRS, 3=WALKING_DOWNSTAIRS, 4=SITTING, 5=STANDING, 6=LAYING

The 79 further variables are self-descriptive:
TimeBodyAccelerometerMeanXTimeBodyAccelerometerMeanYTimeBodyAccelerometerMeanZTimeBodyAccelerometerStdXTimeBodyAccelerometerStdYTimeBodyAccelerometerStdZTimeGravityAccelerometerMeanXTimeGravityAccelerometerMeanYTimeGravityAccelerometerMeanZTimeGravityAccelerometerStdXTimeGravityAccelerometerStdYTimeGravityAccelerometerStdZTimeBodyAccelerometerJerkMeanXTimeBodyAccelerometerJerkMeanYTimeBodyAccelerometerJerkMeanZTimeBodyAccelerometerJerkStdXTimeBodyAccelerometerJerkStdYTimeBodyAccelerometerJerkStdZTimeBodyGyroscopeMeanXTimeBodyGyroscopeMeanYTimeBodyGyroscopeMeanZTimeBodyGyroscopeStdXTimeBodyGyroscopeStdYTimeBodyGyroscopeStdZTimeBodyGyroscopeJerkMeanXTimeBodyGyroscopeJerkMeanYTimeBodyGyroscopeJerkMeanZTimeBodyGyroscopeJerkStdXTimeBodyGyroscopeJerkStdYTimeBodyGyroscopeJerkStdZTimeBodyAccelerometerMagnitudeMeanTimeBodyAccelerometerMagnitudeStdTimeGravityAccelerometerMagnitudeMeanTimeGravityAccelerometerMagnitudeStdTimeBodyAccelerometerJerkMagnitudeMeanTimeBodyAccelerometerJerkMagnitudeStdTimeBodyGyroscopeMagnitudeMeanTimeBodyGyroscopeMagnitudeStdTimeBodyGyroscopeJerkMagnitudeMeanTimeBodyGyroscopeJerkMagnitudeStdFrequencyBodyAccelerometerMeanXFrequencyBodyAccelerometerMeanYFrequencyBodyAccelerometerMeanZFrequencyBodyAccelerometerStdXFrequencyBodyAccelerometerStdYFrequencyBodyAccelerometerStdZFrequencyBodyAccelerometerMeanFrequencyXFrequencyBodyAccelerometerMeanFrequencyYFrequencyBodyAccelerometerMeanFrequencyZFrequencyBodyAccelerometerJerkMeanXFrequencyBodyAccelerometerJerkMeanYFrequencyBodyAccelerometerJerkMeanZFrequencyBodyAccelerometerJerkStdXFrequencyBodyAccelerometerJerkStdYFrequencyBodyAccelerometerJerkStdZFrequencyBodyAccelerometerJerkMeanFrequencyXFrequencyBodyAccelerometerJerkMeanFrequencyYFrequencyBodyAccelerometerJerkMeanFrequencyZFrequencyBodyGyroscopeMeanXFrequencyBodyGyroscopeMeanYFrequencyBodyGyroscopeMeanZFrequencyBodyGyroscopeStdXFrequencyBodyGyroscopeStdYFrequencyBodyGyroscopeStdZFrequencyBodyGyroscopeMeanFrequencyXFrequencyBodyGyroscopeMeanFrequencyYFrequencyBodyGyroscopeMeanFrequencyZFrequencyBodyAccelerometerMagnitudeMeanFrequencyBodyAccelerometerMagnitudeStdFrequencyBodyAccelerometerMagnitudeMeanFrequencyFrequencyBodyAccelerometerJerkMagnitudeMeanFrequencyBodyAccelerometerJerkMagnitudeStdFrequencyBodyAccelerometerJerkMagnitudeMeanFrequencyFrequencyBodyGyroscopeMagnitudeMeanFrequencyBodyGyroscopeMagnitudeStdFrequencyBodyGyroscopeMagnitudeMeanFrequencyFrequencyBodyGyroscopeJerkMagnitudeMeanFrequencyBodyGyroscopeJerkMagnitudeStdFrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
