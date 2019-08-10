
##### part 1: Merge the training and the test sets to create one data set

        # first I read data from text files:
                library(foreign)
                setwd("~/UCI HAR Dataset") # I set working directory
        
        # reading datasets:
        
                subject <- rbind(read.table("~/UCI HAR Dataset/test/subject_test.txt", header = FALSE),
                                 read.table("~/UCI HAR Dataset/train/subject_train.txt", header = FALSE))
                
                x <- rbind(read.table("~/UCI HAR Dataset/test/X_test.txt", header = FALSE),
                           read.table("~/UCI HAR Dataset/train/X_train.txt", header = FALSE))
                
                y <- rbind(read.table("~/UCI HAR Dataset/test/Y_test.txt", header = FALSE),
                           read.table("~/UCI HAR Dataset/train/Y_train.txt", header = FALSE))
                
        
        # setting variables' names:
        
                names(subject) <- c("subject") # new var name, more descriptive
                names(y) <- c("activity") # new var name, more descriptive
                names(x) <- as.character(read.table(dir()[3])$V2)
        
        
        # finally, I build the merged dataset:
        
                dftidy <- cbind(subject, y, x) # this is the tidy dataset
        
                rm(subject, x, y) # I remove intermmediate datasets, for memory saving purposes
        

##### part 2: Extracts only the measurements on the mean and standard deviation for each measurement.

        dftidy <- dftidy[,grepl("subject|activity|mean|std", names(dftidy))]

##### part 3: Uses descriptive activity names to name the activities in the data set.

        # transforms into factor char type in order to make values self-descriptive
        
        dftidy$activity <- factor(dftidy$activity, 
                                   labels = as.character(read.table("activity_labels.txt")[,2])) 

##### part 4: Appropriately labels the data set with descriptive variable names
        
        # I remove some unwamted charecters in variable names:
        names(dftidy) <- gsub("-", "", gsub(",", "", gsub("\\)" ,"", gsub("\\(","", names(dftidy)))))
        
        # I replace abbreviations:
        names(dftidy) <- gsub("mean", "Mean", names(dftidy))
        names(dftidy) <- gsub("std", "Std", names(dftidy))
        names(dftidy) <- gsub("BodyBody", "Body", names(dftidy))
        names(dftidy) <- gsub("Acc", "Accelerometer", names(dftidy))
        names(dftidy) <- gsub("Gyro", "Gyroscope", names(dftidy))
        names(dftidy) <- gsub("Mag", "Magnitude", names(dftidy))
        names(dftidy) <- gsub("Freq", "Frequency", names(dftidy))
        names(dftidy) <- gsub("^f", "Frequency", names(dftidy))
        names(dftidy) <- gsub("^t", "Time", names(dftidy))
        

##### part 5: From the data set in step 4, creates a second, 
###### independent tidy data set with the average of each variable for each activity and each subject.
        
       newtidydata <- dftidy %>%
               group_by(subject, activity) %>%
               summarise_all(funs(mean))
       
       write.table(newtidydata, "tidydataset.txt", row.names = FALSE, quote = FALSE) # saves dataset in a text file
