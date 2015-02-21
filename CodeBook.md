# Data Dictionary

The data comes from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

### Activity
	Activity performed by the participant
		Laying
		Sitting
		Standing
		Walking
		Walking Downstairs
		Walking Upstairs

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# Features

Each feature variable has the following characteristics:

* Each feature measurement is normalized and bounded within [-1,1]
* The value is the mean of all the feature measurements taken for that subject and activity.

The variable names can be read as follows:

* prefix 't' to denote time domain signal
* prefix ‘f’ to indicate a frequency domain signal
* ‘Body’ is a body acceleration signal
* ‘Gravity’ is a gravity acceleration signal
* ‘Acc’ is the accelerometer 3-axial raw signal
* ‘Gyro’ is the gyroscope 3-axial raw signal
* ‘Jerk’ , the body linear acceleration and angular velocity derived in time to obtain Jerk signal
* ‘Mag’ is the magnitude of the three-dimensional signals calculated using the Euclidean norm
* ‘X’, ‘Y’, ‘Z’ are the 3-axial signals in the X, Y and Z directions.
* ‘mean’ is the mean value
* ‘std’ is the Standard deviation

tBodyAcc.mean...X      
tBodyAcc.mean...Y           
tBodyAcc.mean...Z           
tBodyAcc.std...X           
tBodyAcc.std...Y         
tBodyAcc.std...Z            
tGravityAcc.mean...X       
tGravityAcc.mean...Y        
tGravityAcc.mean...Z        
tGravityAcc.std...X        
tGravityAcc.std...Y        
tGravityAcc.std...Z        
tBodyAccJerk.mean...X      
tBodyAccJerk.mean...Y       
tBodyAccJerk.mean...Z       
tBodyAccJerk.std...X       
tBodyAccJerk.std...Y        
tBodyAccJerk.std...Z        
tBodyGyro.mean...X         
tBodyGyro.mean...Y          
tBodyGyro.mean...Z          
tBodyGyro.std...X          
tBodyGyro.std...Y           
tBodyGyro.std...Z           
tBodyGyroJerk.mean...X     
tBodyGyroJerk.mean...Y      
tBodyGyroJerk.mean...Z      
tBodyGyroJerk.std...X      
tBodyGyroJerk.std...Y       
tBodyGyroJerk.std...Z       
tBodyAccMag.mean..         
tBodyAccMag.std..           
tGravityAccMag.mean..       
tGravityAccMag.std..       
tBodyAccJerkMag.mean..      
tBodyAccJerkMag.std..       
tBodyGyroMag.mean..        
tBodyGyroMag.std..          
tBodyGyroJerkMag.mean..     
tBodyGyroJerkMag.std..     
fBodyAcc.mean...X           
fBodyAcc.mean...Y           
fBodyAcc.mean...Z          
fBodyAcc.std...X            
fBodyAcc.std...Y            
fBodyAcc.std...Z           
fBodyAccJerk.mean...X       
fBodyAccJerk.mean...Y       
fBodyAccJerk.mean...Z      
fBodyAccJerk.std...X        
fBodyAccJerk.std...Y        
fBodyAccJerk.std...Z       
fBodyGyro.mean...X          
fBodyGyro.mean...Y          
fBodyGyro.mean...Z         
fBodyGyro.std...X           
fBodyGyro.std...Y           
fBodyGyro.std...Z          
fBodyAccMag.mean..          
fBodyAccMag.std..           
fBodyBodyAccJerkMag.mean.. 
fBodyBodyAccJerkMag.std..   
fBodyBodyGyroMag.mean..     
fBodyBodyGyroMag.std..     
fBodyBodyGyroJerkMag.mean.. 
fBodyBodyGyroJerkMag.std..