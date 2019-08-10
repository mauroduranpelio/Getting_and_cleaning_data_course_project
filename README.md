# Getting and cleaning data Course project:


## This repository contains the following files:

* **README.md**: explains the content of the repo and how scripts are related to each other.
* **CodeBook.md**: describes the variables and the data, along with a detailed explanation of the steps undertaken in order to obtain a tidy dataset.
* **run_analysis.R**: script that contains every step for tidying the dataset.
* **tidydataset.txt**: the tidy dataset, which is the outcome of running the 'run_analysis.R' script.

## Further information:

* In order to perform the analysis, the original dataset must be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

* It is advisable to read in detail the **CodeBook.md** file.

* Open the and run the **run_analysis.R** script. The outcome is a nice tidy dataset called "**tidydataset.txt**"

## Steps in **run_analysis.R** script:

* 1. Data from the training and the test sets are merged to create a single data set
* 2. Only the measurements on the mean and std dev are extracted
* 3. Uses descriptive activity names to name the activities in the data set 
* 4. Variables in the dataset are labelled with descriptive variable names
* 5. A new independent dataset is created (from the tidy dataset obtained until the previous step), that contains the average of each variable for each activity and each subject 


