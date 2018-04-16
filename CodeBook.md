# A Code Book to describe the data and variables that create the tidy dataset, tid_dataset.csv

The file **tidy_dataset.csv** contains 68 variables (columns) and 180 observations (rows).

The 180 observations account for 30 subjects (ages 19-48) conducting 6 different activities wearing a smartphone. The activities are identified in the **activity_labels.txt** as:

      1. walking
      2. walking upstairs
      3. walking downstairs
      4. sitting
      5. standing
      6. laying
      
The 68 variable names are measurements of various features for the 6 activities while wearing the smartphone. The features are identified in the file, **features.txt**.  The features are from the accelerometer and gyroscope 3-axial signals in both the *time* and *frequency* domain. These two domains are identified using the prefix time or frequency. The measurements also capture the body linear and angular velocity in time to obtain the Jerk signal.  The mean and standard deviation (std) values were collected for the multiple measurements of each feature for each activity performed by the 30 subjects and reported in both the training and test files.  The R file, run_analysis.R, reads in 7 files, cleans the data and outputs a tidy dataset named tidy_dataset.csv.  The variable names and descriptions are shown below.

      Field Name               |     Description
      ----------------------   |  ----------------------
      Subjects    [1-30]       |      Individual participants in the study experiment.  Subjects are numbered 1 through 30.
      Activities  [1-6]        |      The activity performed by a subject.  There are a total of 6 actitivies.
      timeBodyAcc.mean.XYZ     |      The mean time measurement on the body acceleration 3-axial signal 
      timeGravityAcc.mean.XYZ  |      The mean time measurement on the gravity acceleration 3-axial signal
      timeBodyAccJerk.mean.XYZ |      The mean time measurement on the body linear acceleration 3-axial signal
      timeBodyGyro.mean.XYZ    |      The mean time measurement on the body gyroscope 3-axial signal
      timeBodyGyroJerk.mean.XYZ|      The mean time measurement on the body angular velocity 3-axial signal
      timeBodyAccMag.mean      |      The mean time magnitude of these 3D signals using Euclidean norm 
      timeGravityAccMag.mean   |      The mean time magnitude of the gravity acceleration of the 3D signal
      timeBodyAccJerkMag.mean  |      The mean time magnitude of the body linear acceleration of the 3D signal      
      timeBodyGyroMag.mean     |      The mean time magnitude of the body gyroscope 3D signal      
      timeBodyGyroJerkMag.mean |      The mean time magnitude of the body gyroscope angular velocity of the 3D signal      
      freqBodyAcc.mean.XYZ     |      The mean frequency domain signal for the body acceleration 3-axial signal using FFT
      freqBodyAccJerk.mean.XYZ |      The mean frequency domain signal for the body linear acceleration 3-axial signal using FFT
      freqBodyGyro.mean.XYZ    |      The mean frequency domain signal for the body gyroscope 3-axial signal using FFT
      freqBodyAccMag.mean      |      The mean frequency domain signal for the body acceleration 3-axial signal using FFT
      freqBodyAccJerkMag.mean  |      The mean frequency domain signal for the body linear acceleration 3-axial signal using FFT
      freqBodyGyroMag.mean     |      The mean frequency domain signal for the body gyroscope 3-axial signal using FFT
      freqBodyGyroJerkMag.mean |      The mean frequency domain signal for the body angular velocity 3-axial signal using FFT
      timeBodyAcc.std.XYZ      |      The std time measurement on the body acceleration 3-axial signal 
      timeGravityAcc.std.XYZ   |      The std time measurement on the gravity acceleration 3-axial signal
      timeBodyAccJerk.std.XYZ  |      The std time measurement on the body linear acceleration 3-axial signal
      timeBodyGyro.std.XYZ     |      The std time measurement on the body gyroscope 3-axial signal
      timeBodyGyroJerk.std.XYZ |      The std time measurement on the body angular velocity 3-axial signal
      timeBodyAccMag.std       |      The std time magnitude of these 3D signals using Euclidean norm 
      timeGravityAccMag.std    |      The std time magnitude of the gravity acceleration of the 3D signal
      timeBodyAccJerkMag.std   |      The std time magnitude of the body linear acceleration of the 3D signal      
      timeBodyGyroMag.std      |      The std time magnitude of the body gyroscope 3D signal      
      timeBodyGyroJerkMag.std  |      The std time magnitude of the body gyroscope angular velocity of the 3D signal      
      freqBodyAcc.std.XYZ      |      The std frequency domain signal for the body acceleration 3-axial signal using FFT
      freqBodyAccJerk.std.XYZ  |      The std frequency domain signal for the body linear acceleration 3-axial signal using FFT
      freqBodyGyro.std.XYZ     |      The std frequency domain signal for the body gyroscope 3-axial signal using FFT
      freqBodyAccMag.std       |      The std frequency domain signal for the body acceleration 3-axial signal using FFT
      freqBodyAccJerkMag.std   |      The std frequency domain signal for the body linear acceleration 3-axial signal using FFT
      freqBodyGyroMag.std      |      The std frequency domain signal for the body gyroscope 3-axial signal using FFT
      freqBodyGyroJerkMag.std  |      The std frequency domain signal for the body angular velocity 3-axial signal using FFT
      
   
      
      
      
      
      
      