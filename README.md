
## README for the Coursera Getting and Cleaning Data course project 

This file describes the project and the files included in this repository. 

### Project Overview

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

1. The project requires the following scripts and data files:
1. The submitted data set is tidy.
1. The Github repo contains the required scripts.
1. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
1. The README that explains the analysis files is clear and understandable.
1. The work submitted for this project is the work of the student who submitted it.

### Files Included

* run_analysis.R  - main script to process the "raw" data and create the required cleaned data. (see below)
* extracted_data.csv  -  required extracted data file produced by the run_analysis.R script
* tidydata.txt  - required tidy data file produced by the run_analysis.R script
* README.md - This file
* CodeBook.md - Describes the variables, the data, and any transformations or work that you performed to clean up the data
* data directory - contains the "raw" data files for this project

### R Script run_analysis.R requirements

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

