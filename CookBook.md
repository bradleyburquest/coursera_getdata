## CodeBook for Coursera Getting and Cleaning Data course project

### "Raw" data used 

This projects reads and transforms accelerometers and gyroscope data from a Samsung phone. The data is 
recorded/gathered from 30 subjects performing 6 activites (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, and LAYING). For details on the "raw" data files used, see the following webpage.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original CookBooks (or data descrpitions) for the "raw" data can be found in the data directory. 
The files features.txt, features_info.txt, and activity_labels.txt contain additional information on the "raw" dataset used for this project. 


### Data Transformations (from the original "raw" data CodeBook)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


### Data Variables

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

#### File extracted_data.csv and variables

This file is created by the execution of the run_analysis.R script. The file contains data from the merge of data from the original "raw" training and test dataset generated/recorded by the Smart phone as described in the "raw" data codebook. Also, the subject and activity data that coincides with the Smart phone accelerometer and gyroscope data was also merged. The "raw" data was transformed to include only the mean and std (standard deviation) data as it exists in the "raw" data. The script reduces the "raw" variables from 561 to 66 variables (68 including subject and activity) as exists in the "raw" training and test datasets and renames the resulting variables to a slightly more readable form. 

List of resulting variables:

 subject                     activity                    tBodyAcc.mean.X           
 tBodyAcc.mean.Y             tBodyAcc.mean.Z             tBodyAcc.std.X            
 tBodyAcc.std.Y              tBodyAcc.std.Z              tGravityAcc.mean.X        
 tGravityAcc.mean.Y          tGravityAcc.mean.Z          tGravityAcc.std.X         
 tGravityAcc.std.Y           tGravityAcc.std.Z           tBodyAccJerk.mean.X       
 tBodyAccJerk.mean.Y         tBodyAccJerk.mean.Z         tBodyAccJerk.std.X        
 tBodyAccJerk.std.Y          tBodyAccJerk.std.Z          tBodyGyro.mean.X          
 tBodyGyro.mean.Y            tBodyGyro.mean.Z            tBodyGyro.std.X           
 tBodyGyro.std.Y             tBodyGyro.std.Z             tBodyGyroJerk.mean.X      
 tBodyGyroJerk.mean.Y        tBodyGyroJerk.mean.Z        tBodyGyroJerk.std.X       
 tBodyGyroJerk.std.Y         tBodyGyroJerk.std.Z         tBodyAccMag.mean          
 tBodyAccMag.std             tGravityAccMag.mean         tGravityAccMag.std        
 tBodyAccJerkMag.mean        tBodyAccJerkMag.std         tBodyGyroMag.mean         
 tBodyGyroMag.std            tBodyGyroJerkMag.mean       tBodyGyroJerkMag.std      
 fBodyAcc.mean.X             fBodyAcc.mean.Y             fBodyAcc.mean.Z           
 fBodyAcc.std.X              fBodyAcc.std.Y              fBodyAcc.std.Z            
 fBodyAccJerk.mean.X         fBodyAccJerk.mean.Y         fBodyAccJerk.mean.Z       
 fBodyAccJerk.std.X          fBodyAccJerk.std.Y          fBodyAccJerk.std.Z        
 fBodyGyro.mean.X            fBodyGyro.mean.Y            fBodyGyro.mean.Z          
 fBodyGyro.std.X             fBodyGyro.std.Y             fBodyGyro.std.Z           
 fBodyAccMag.mean            fBodyAccMag.std             fBodyBodyAccJerkMag.mean  
 fBodyBodyAccJerkMag.std     fBodyBodyGyroMag.mean       fBodyBodyGyroMag.std      
 fBodyBodyGyroJerkMag.mean   fBodyBodyGyroJerkMag.std


#### File tidydata.csv and variables

This file is created by the execution of the run_analysis.R script and contains data from extracted data but transforms the data to include the average of each variable of the extracted data for each subject and activity. The variable names were modified to append "_avg" to indicate that the variable values are averages for the extracted variables shown above.


 subject                         activity                        tBodyAcc.mean.X_avg           
 tBodyAcc.mean.Y_avg             tBodyAcc.mean.Z_avg             tBodyAcc.std.X_avg            
 tBodyAcc.std.Y_avg              tBodyAcc.std.Z_avg              tGravityAcc.mean.X_avg        
 tGravityAcc.mean.Y_avg          tGravityAcc.mean.Z_avg          tGravityAcc.std.X_avg         
 tGravityAcc.std.Y_avg           tGravityAcc.std.Z_avg           tBodyAccJerk.mean.X_avg       
 tBodyAccJerk.mean.Y_avg         tBodyAccJerk.mean.Z_avg         tBodyAccJerk.std.X_avg        
 tBodyAccJerk.std.Y_avg          tBodyAccJerk.std.Z_avg          tBodyGyro.mean.X_avg          
 tBodyGyro.mean.Y_avg            tBodyGyro.mean.Z_avg            tBodyGyro.std.X_avg           
 tBodyGyro.std.Y_avg             tBodyGyro.std.Z_avg             tBodyGyroJerk.mean.X_avg      
 tBodyGyroJerk.mean.Y_avg        tBodyGyroJerk.mean.Z_avg        tBodyGyroJerk.std.X_avg       
 tBodyGyroJerk.std.Y_avg         tBodyGyroJerk.std.Z_avg         tBodyAccMag.mean_avg          
 tBodyAccMag.std_avg             tGravityAccMag.mean_avg         tGravityAccMag.std_avg        
 tBodyAccJerkMag.mean_avg        tBodyAccJerkMag.std_avg         tBodyGyroMag.mean_avg         
 tBodyGyroMag.std_avg            tBodyGyroJerkMag.mean_avg       tBodyGyroJerkMag.std_avg      
 fBodyAcc.mean.X_avg             fBodyAcc.mean.Y_avg             fBodyAcc.mean.Z_avg           
 fBodyAcc.std.X_avg              fBodyAcc.std.Y_avg              fBodyAcc.std.Z_avg            
 fBodyAccJerk.mean.X_avg         fBodyAccJerk.mean.Y_avg         fBodyAccJerk.mean.Z_avg       
 fBodyAccJerk.std.X_avg          fBodyAccJerk.std.Y_avg          fBodyAccJerk.std.Z_avg        
 fBodyGyro.mean.X_avg            fBodyGyro.mean.Y_avg            fBodyGyro.mean.Z_avg          
 fBodyGyro.std.X_avg             fBodyGyro.std.Y_avg             fBodyGyro.std.Z_avg           
 fBodyAccMag.mean_avg            fBodyAccMag.std_avg             fBodyBodyAccJerkMag.mean_avg  
 fBodyBodyAccJerkMag.std_avg     fBodyBodyGyroMag.mean_avg       fBodyBodyGyroMag.std_avg      
 fBodyBodyGyroJerkMag.mean_avg   fBodyBodyGyroJerkMag.std_avg