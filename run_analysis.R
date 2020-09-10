# Analysis script for Getting and Cleaning Data course project

# Load needed libraries
library(data.table)
library(dplyr)

# 1. Merge the training and the test sets to create one data set.
colnames <- read.table("./data/features.txt")
colnames <- colnames[ , "V2"]
# read in the data
traindatasetx <- read.table("./data/train/x_train.txt", col.names=colnames)
testdatasetx <- read.table("./data/test/x_test.txt", col.names=colnames)
traindatasety <- read.table("./data/train/y_train.txt", col.names=c("activity"))
testdatasety <- read.table("./data/test/y_test.txt", col.names=c("activity"))
activities <- read.table("./data/activity_labels.txt")
trainsubjects <- read.table("./data/train/subject_train.txt", col.names=c("subject"))
testsubjects <- read.table("./data/test/subject_test.txt", col.names = c("subject"))

# combined datasets 
combined_dataset <- rbind( traindatasetx, testdatasetx)
combined_activities <-rbind( traindatasety, testdatasety)
combined_subjects <- rbind( trainsubjects, testsubjects)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.
extracted_data <- combined_dataset[ , grep( "mean\\.|std\\.", names(combined_dataset)) ]
colnames <- names(extracted_data)

# add the subject and activity columns
extracted_data <- cbind(combined_activities, extracted_data)
extracted_data <- cbind(combined_subjects, extracted_data)

# 3. Uses descriptive activity names to name the activities in the data set
# Update activites column with descriptive names
extracted_data[ ,"activity"] <- activities[extracted_data[, "activity"], "V2"]

# 4. Appropriately label the data set with descriptive variable names.
# simplified the column names a little by replacing ... with . and remove .. from columns
# ending in ..
newcolnames <- gsub( "\\.\\.", "", gsub("\\.\\.\\.", "\\.",colnames))
setnames( extracted_data, colnames, newcolnames)

# write the extracted data to a file
write.csv( extracted_data, "extracted_data.csv", row.names=FALSE)

# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
tidydata <- data.frame( matrix( nrow=0, ncol=length(names(extracted_data))), row.names=NULL)
for( subj in 1:30) {
   for( act in activities[ , "V2"]) {
      # select the rows for the subject and activities
      selected <- filter( extracted_data, subject==subj & activity==act)
      # create a vector for the mean/average for the selected columns
      vec <- as.vector(sapply(selected[,3:68], mean))
      # create a data vector for the row data
      vec <- c(subj, act, vec)
      # added the row to the data frame
      tidydata <- rbind( tidydata, vec)
   }
}
# set the column names
cnames <- paste(names(extracted_data), "_avg", sep="")
# update subject and activity column names
cnames[1:2] <- c("subject", "activity")
colnames(tidydata) <- cnames

# Write out the tidy data file
write.csv(tidydata, "tidydata.csv", row.names=FALSE)

