# run_analysis returns a tidy data set of the wearable data collected from the
# accelerometers from the Samsung Galaxy S smartphone.  The data is divided in
# to two sets: Train and Test 
#
# The Data can be found here: 
#   archive:
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#   description:
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#   
# To tidy the data set the following steps are performed: 
#   1. Read in the train and test data set. 
#   2. Subset the train and test data sets to contain only the Mean and Standard
#   deviations. This is determined by 'mean()' or 'std()' in the features names.
#   3. Merge the train and test data sets. 
#   4. Apply the Activity Labels to the merged data set. 
#   5. Tidy data set with the average of each variable for each activity and
#   each subject.

run_analysis <- function() {
    readSetData <- function (set_name) {
        # Check that directory "UCI HAR Dataset" exists
        if (!file.exists("UCI HAR Dataset")) {
            stop("Samsung data needs to be available in the working directory in an 
                 unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Features
        if (file.exists("./UCI HAR Dataset/features.txt")) {
            features <- read.table("./UCI HAR Dataset/features.txt", 
                                   col.names=c("ID", "Measurement"))
        } else {
            stop("Training set features are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Data Set measurements
        filePath <- file.path("./UCI HAR Dataset/", set_name, "/", 
                              paste0("X_", set_name, ".txt"))
        if (file.exists(filePath)) {
            measurements <- read.table(filePath, col.names=features$Measurement)
        } else {
            stop(set_name, " set measurements are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Subset the Training Set to get only the means and standard deviations
        # names of subset columns required
        mean_std_data_cols <- grep(".*mean\\(\\)|.*std\\(\\)", features$Measurement)
        measurements <- measurements[,mean_std_data_cols]
        
        # Read in the Data Set activities
        filePath <- file.path("./UCI HAR Dataset/", set_name, "/", 
                              paste0("y_", set_name, ".txt"))
        if (file.exists(filePath)) {
            activities <- read.table(filePath, col.names=c("Activity"))
        } else {
            stop(set_name, " set activities are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Data Set subjects
        filePath <- file.path("./UCI HAR Dataset/", set_name, "/", 
                              paste0("subject_", set_name, ".txt"))
        if (file.exists(filePath)) {
            subjects <- read.table(filePath, col.names=c("Subject"))
        } else {
            stop(set_name, " set activities are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Combine the training set
        cbind(subjects, activities, measurements)
    }
    
    readTrainData <- function () {
        # Check that directory "UCI HAR Dataset" exists
        if (!file.exists("UCI HAR Dataset")) {
            stop("Samsung data needs to be available in the working directory in an 
             unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Features
        if (file.exists("./UCI HAR Dataset/features.txt")) {
            features <- read.table("./UCI HAR Dataset/features.txt", 
                                   col.names=c("ID", "Measurement"))
        } else {
            stop("Training set features are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Training Set Data
        
        # Read in the Training Set measurements
        if (file.exists("./UCI HAR Dataset/train/X_train.txt")) {
            train_measurements <- read.table("./UCI HAR Dataset/train/X_train.txt", 
                                             col.names=features$Measurement)
        } else {
            stop("Training set measurements are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Subset the Training Set to get only the means and standard deviations
        # names of subset columns required
        mean_std_data_cols <- grep(".*mean\\(\\)|.*std\\(\\)", features$Measurement)
        train_measurements <- train_measurements[,mean_std_data_cols]
        
        # Read in the Training Set activities
        if (file.exists("./UCI HAR Dataset/train/y_train.txt")) {
            train_activities <- read.table("./UCI HAR Dataset/train/y_train.txt", 
                                           col.names=c("Activity"))
        } else {
            stop("Training set activities are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Training Set subjects
        if (file.exists("./UCI HAR Dataset/train/subject_train.txt")) {
            train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                                         col.names=c("Subject"))
        } else {
            stop("Training set activities are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Combine the training set
        cbind(train_subjects, train_activities, train_measurements)
    }
    
    readTestData <- function() {
        # Check that directory "UCI HAR Dataset" exists
        if (!file.exists("UCI HAR Dataset")) {
            stop("Samsung data needs to be available in the working directory in an 
             unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Features
        if (file.exists("./UCI HAR Dataset/features.txt")) {
            features <- read.table("./UCI HAR Dataset/features.txt", 
                                   col.names=c("ID", "Measurement"))
        } else {
            stop("Training set features are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        ###### Read in the Test Set Data
        
        # Read in the Test Set measurements
        if (file.exists("./UCI HAR Dataset/test/X_test.txt")) {
            test_measurements <- read.table("./UCI HAR Dataset/test/X_test.txt", 
                                            col.names=features$Measurement)
        } else {
            stop("Test set measurements are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Subset the Test Set to get only the means and standard deviations
        # names of subset columns required
        mean_std_data_cols <- grep(".*mean\\(\\)|.*std\\(\\)", features$Measurement)
        test_measurements <- test_measurements[,mean_std_data_cols]
        
        # Read in the Test Set activities
        if (file.exists("./UCI HAR Dataset/test/y_test.txt")) {
            test_activities <- read.table("./UCI HAR Dataset/test/y_test.txt", 
                                          col.names=c("Activity"))
        } else {
            stop("Test set activities are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Read in the Test Set subjects
        if (file.exists("./UCI HAR Dataset/test/subject_test.txt")) {
            test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                                        col.names=c("Subject"))
        } else {
            stop("Test set activities are not available in the working 
              directory in the unzipped 'UCI HAR Dataset' folder")
        }
        
        # Combine the test set
        cbind(test_subjects, test_activities, test_measurements)
    }
    
    mergeData <- function (x, y) {
        ##### Merge the data sets
        
        # Bind the two sets
        rbind(x, y)
    }
    
    applyActivityLabels <- function(data) {
        
        # Apply Activity Labels
        data$Activity[data$Activity == 1] <- "Walking"
        data$Activity[data$Activity == 2] <- "Walking Upstairs"
        data$Activity[data$Activity == 3] <- "Walking Downstairs"
        data$Activity[data$Activity == 4] <- "Sitting"
        data$Activity[data$Activity == 5] <- "Standing"
        data$Activity[data$Activity == 6] <- "Laying"
        
        data
    }
    
    tidyData <- function(data) {
        library(reshape2)
        
        # Melt the data
        id_vars <- c("Subject", "Activity")
        melted_data <- melt(complete_set, id=id_vars)

        # Cast the data
        dcast(melted_data, Subject + Activity ~ variable, mean)
    }
    
    print("Assumption is made that the data files from the \"UCI HAR Dataset\" are available in the current working directory with the same file structure as in the downloaded archive.")
    print("  Data Files:")
    print("    archive: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
    print("    description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones")
    
    train_set <- readSetData("train")
    test_set <- readSetData("test")
    merged_set <- mergeData(train_set, test_set)
    complete_set <- applyActivityLabels(merged_set)
    tidy_data <- tidyData(complete_set)
    write.table(tidy_data, "tidyData.txt", row.names = FALSE)
    print("The Tidy Data has been ouput to 'tidyData.txt'.")
}