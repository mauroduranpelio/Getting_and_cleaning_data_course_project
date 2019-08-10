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

The 79 further variables are self-descriptive. They were obtained in part 5 explained above, and also range in [-1,1]:
1. TimeBodyAccelerometerMeanX2. TimeBodyAccelerometerMeanY3. TimeBodyAccelerometerMeanZ4. TimeBodyAccelerometerStdX5. TimeBodyAccelerometerStdY6. TimeBodyAccelerometerStdZ7. TimeGravityAccelerometerMeanX8. TimeGravityAccelerometerMeanY9. TimeGravityAccelerometerMeanZ10. TimeGravityAccelerometerStdX11. TimeGravityAccelerometerStdY12. TimeGravityAccelerometerStdZ13. TimeBodyAccelerometerJerkMeanX14. TimeBodyAccelerometerJerkMeanY15. TimeBodyAccelerometerJerkMeanZ16. TimeBodyAccelerometerJerkStdX17. TimeBodyAccelerometerJerkStdY18. TimeBodyAccelerometerJerkStdZ19. TimeBodyGyroscopeMeanX20. TimeBodyGyroscopeMeanY21. TimeBodyGyroscopeMeanZ22. TimeBodyGyroscopeStdX23. TimeBodyGyroscopeStdY24. TimeBodyGyroscopeStdZ25. TimeBodyGyroscopeJerkMeanX26. TimeBodyGyroscopeJerkMeanY27. TimeBodyGyroscopeJerkMeanZ28. TimeBodyGyroscopeJerkStdX29. TimeBodyGyroscopeJerkStdY30. TimeBodyGyroscopeJerkStdZ31. TimeBodyAccelerometerMagnitudeMean32. TimeBodyAccelerometerMagnitudeStd33. TimeGravityAccelerometerMagnitudeMean34. TimeGravityAccelerometerMagnitudeStd35. TimeBodyAccelerometerJerkMagnitudeMean36. TimeBodyAccelerometerJerkMagnitudeStd37. TimeBodyGyroscopeMagnitudeMean38. TimeBodyGyroscopeMagnitudeStd39. TimeBodyGyroscopeJerkMagnitudeMean40. TimeBodyGyroscopeJerkMagnitudeStd41. FrequencyBodyAccelerometerMeanX42. FrequencyBodyAccelerometerMeanY43. FrequencyBodyAccelerometerMeanZ44. FrequencyBodyAccelerometerStdX45. FrequencyBodyAccelerometerStdY46. FrequencyBodyAccelerometerStdZ47. FrequencyBodyAccelerometerMeanFrequencyX48. FrequencyBodyAccelerometerMeanFrequencyY49. FrequencyBodyAccelerometerMeanFrequencyZ50. FrequencyBodyAccelerometerJerkMeanX51. FrequencyBodyAccelerometerJerkMeanY52. FrequencyBodyAccelerometerJerkMeanZ53. FrequencyBodyAccelerometerJerkStdX54. FrequencyBodyAccelerometerJerkStdY55. FrequencyBodyAccelerometerJerkStdZ56. FrequencyBodyAccelerometerJerkMeanFrequencyX57. FrequencyBodyAccelerometerJerkMeanFrequencyY58. FrequencyBodyAccelerometerJerkMeanFrequencyZ59. FrequencyBodyGyroscopeMeanX60. FrequencyBodyGyroscopeMeanY61. FrequencyBodyGyroscopeMeanZ62. FrequencyBodyGyroscopeStdX63. FrequencyBodyGyroscopeStdY64. FrequencyBodyGyroscopeStdZ65. FrequencyBodyGyroscopeMeanFrequencyX66. FrequencyBodyGyroscopeMeanFrequencyY67. FrequencyBodyGyroscopeMeanFrequencyZ68. FrequencyBodyAccelerometerMagnitudeMean69. FrequencyBodyAccelerometerMagnitudeStd70. FrequencyBodyAccelerometerMagnitudeMeanFrequency71. FrequencyBodyAccelerometerJerkMagnitudeMean72. FrequencyBodyAccelerometerJerkMagnitudeStd73. FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency74. FrequencyBodyGyroscopeMagnitudeMean75. FrequencyBodyGyroscopeMagnitudeStd76. FrequencyBodyGyroscopeMagnitudeMeanFrequency77. FrequencyBodyGyroscopeJerkMagnitudeMean78. FrequencyBodyGyroscopeJerkMagnitudeStd79. FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency