-   [Codebook.md](#codebook.md)
    -   [General Information](#general-information)
    -   [Study Design](#study-design)
        -   [Data Transformations](#data-transformations)
        -   [Definitions](#definitions)
        -   [Some R setup for producing the Code Book.](#some-r-setup-for-producing-the-code-book.)
    -   [Code Book](#code-book)
    -   [Additional Information](#additional-information)
        -   [Tidy Data Structure](#tidy-data-structure)
        -   [To Use the Tidy Data in R](#to-use-the-tidy-data-in-r)

Codebook.md
===========

General Information
-------------------

-   **Author:** *pjtx4657, Patrick (Pat) T.*
-   **GitHub Project Link:** [project](https://github.com/pjtoms/ds3-gcd "GitHub project link")
-   **Last update:** 2017-07-24 12:43:41<br>

Study Design
------------

Getting And Cleaning Data - Coursera Data Science Course 3, demonstrates ability to collect, work with, and clean a data set. The original data is manipulated into summarized by activity and subject [tidy](http://vita.had.co.nz/papers/tidy-data.pdf "tidy data paper") form.

The data linked to from the course website represents data collected from the accelerometers of the Samsung Galaxy S smartphone. A full description is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "from UCI Machine Learning Repository - citation request at bottom of page") where the data was obtained. And the raw data for the project is located [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "from UCI Machine Learning Repository").

### Data Transformations

See [run\_analysis.html](http://htmlpreview.github.com/?https://github.com/pjtoms/ds3-gcd/run_analysis.html "run_analysis.Rmd output") for a detailed description of data transformations, clean up, and the code used in production of the tidy data file.

### Definitions

More detail is available from the UCI raw data referenced above.

<table style="width:76%;">
<colgroup>
<col width="26%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th align="left">Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Domain</td>
<td align="left">Category for signal derivation. Signals periodically obtained are part of the 'Time' domain. Signals processed using Fast Fourier Transform (FFT) are part of the 'Frequency' domain.</td>
</tr>
<tr class="even">
<td>Accelerometer</td>
<td align="left">Signal generator in 3-axial (X, Y, Z) directions.</td>
</tr>
<tr class="odd">
<td>Gyroscope</td>
<td align="left">Signal generator in 3-axial (X, Y, Z) directions.</td>
</tr>
<tr class="even">
<td>Body</td>
<td align="left">Part of acceleration signal.</td>
</tr>
<tr class="odd">
<td>Gravity</td>
<td align="left">Part of acceleration signal.</td>
</tr>
<tr class="even">
<td>Jerk</td>
<td align="left">Body linear acceleration and angular velocity derived in time domain.</td>
</tr>
<tr class="odd">
<td>Magnitude</td>
<td align="left">Magnitude of the three-dimensional signals calculated using the Euclidean norm.</td>
</tr>
<tr class="even">
<td>Signal</td>
<td align="left">The actual telemetry received from the device.</td>
</tr>
<tr class="odd">
<td>Mean of Means</td>
<td align="left">The data has been averaged for some values and extracted for this project. These values are then averaged by activity and subject.</td>
</tr>
<tr class="even">
<td>Mean of Standard Deviations</td>
<td align="left">The data has calculated standard deviations for the values which are extracted for this project. These values are then averaged by activity and subject.</td>
</tr>
</tbody>
</table>

**Note:** There may be NA values in the tidy data due to factor usage or other missing values.

### Some R setup for producing the Code Book.

Code is hidden. See Codebook.Rmd for details.

Code Book
---------

Generated based on column names and contents of "namesDictionary.txt" and "grepDictionary.txt".

Code is hidden. See Codebook.Rmd for details.

<table style="width:97%;">
<colgroup>
<col width="31%" />
<col width="33%" />
<col width="31%" />
</colgroup>
<thead>
<tr class="header">
<th>Variables</th>
<th align="left">Descriptions</th>
<th>Value Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>activity name</td>
<td align="left">Name of the measured activity.</td>
<td>Factor with 6 levels: 'WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING'.</td>
</tr>
<tr class="even">
<td>subject</td>
<td align="left">The subjects unique ID.</td>
<td>Integer from 1 to 30.</td>
</tr>
<tr class="odd">
<td>Observation Count</td>
<td align="left">Number of observations summarized.</td>
<td>Integer.</td>
</tr>
<tr class="even">
<td>tBodyAcc-mean()-X</td>
<td align="left">Mean of signal means for time domain body acceleration along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAcc-mean()-Y</td>
<td align="left">Mean of signal means for time domain body acceleration along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAcc-mean()-Z</td>
<td align="left">Mean of signal means for time domain body acceleration along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAcc-std()-X</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAcc-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAcc-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tGravityAcc-mean()-X</td>
<td align="left">Mean of signal means for time domain gravity acceleration along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tGravityAcc-mean()-Y</td>
<td align="left">Mean of signal means for time domain gravity acceleration along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tGravityAcc-mean()-Z</td>
<td align="left">Mean of signal means for time domain gravity acceleration along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tGravityAcc-std()-X</td>
<td align="left">Mean of standard deviation of signal means for time domain gravity acceleration along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tGravityAcc-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for time domain gravity acceleration along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tGravityAcc-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for time domain gravity acceleration along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAccJerk-mean()-X</td>
<td align="left">Mean of signal means for time domain body acceleration calculated jerk along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAccJerk-mean()-Y</td>
<td align="left">Mean of signal means for time domain body acceleration calculated jerk along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAccJerk-mean()-Z</td>
<td align="left">Mean of signal means for time domain body acceleration calculated jerk along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAccJerk-std()-X</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration calculated jerk along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAccJerk-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration calculated jerk along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAccJerk-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration calculated jerk along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyro-mean()-X</td>
<td align="left">Mean of signal means for time domain body gyroscope along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyro-mean()-Y</td>
<td align="left">Mean of signal means for time domain body gyroscope along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyro-mean()-Z</td>
<td align="left">Mean of signal means for time domain body gyroscope along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyro-std()-X</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyro-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyro-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyroJerk-mean()-X</td>
<td align="left">Mean of signal means for time domain body gyroscope calculated jerk along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyroJerk-mean()-Y</td>
<td align="left">Mean of signal means for time domain body gyroscope calculated jerk along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyroJerk-mean()-Z</td>
<td align="left">Mean of signal means for time domain body gyroscope calculated jerk along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyroJerk-std()-X</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope calculated jerk along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyroJerk-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope calculated jerk along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyroJerk-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope calculated jerk along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAccMag-mean()</td>
<td align="left">Mean of signal means for time domain body acceleration signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAccMag-std()</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tGravityAccMag-mean()</td>
<td align="left">Mean of signal means for time domain gravity acceleration signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tGravityAccMag-std()</td>
<td align="left">Mean of standard deviation of signal means for time domain gravity acceleration signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyAccJerkMag-mean()</td>
<td align="left">Mean of signal means for time domain body acceleration calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyAccJerkMag-std()</td>
<td align="left">Mean of standard deviation of signal means for time domain body acceleration calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyroMag-mean()</td>
<td align="left">Mean of signal means for time domain body gyroscope signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyroMag-std()</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>tBodyGyroJerkMag-mean()</td>
<td align="left">Mean of signal means for time domain body gyroscope calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>tBodyGyroJerkMag-std()</td>
<td align="left">Mean of standard deviation of signal means for time domain body gyroscope calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAcc-mean()-X</td>
<td align="left">Mean of signal means for frequency domain body acceleration along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAcc-mean()-Y</td>
<td align="left">Mean of signal means for frequency domain body acceleration along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAcc-mean()-Z</td>
<td align="left">Mean of signal means for frequency domain body acceleration along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAcc-std()-X</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAcc-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAcc-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAccJerk-mean()-X</td>
<td align="left">Mean of signal means for frequency domain body acceleration calculated jerk along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAccJerk-mean()-Y</td>
<td align="left">Mean of signal means for frequency domain body acceleration calculated jerk along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAccJerk-mean()-Z</td>
<td align="left">Mean of signal means for frequency domain body acceleration calculated jerk along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAccJerk-std()-X</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration calculated jerk along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAccJerk-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration calculated jerk along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAccJerk-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration calculated jerk along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyGyro-mean()-X</td>
<td align="left">Mean of signal means for frequency domain body gyroscope along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyGyro-mean()-Y</td>
<td align="left">Mean of signal means for frequency domain body gyroscope along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyGyro-mean()-Z</td>
<td align="left">Mean of signal means for frequency domain body gyroscope along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyGyro-std()-X</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body gyroscope along X-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyGyro-std()-Y</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body gyroscope along Y-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyGyro-std()-Z</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body gyroscope along Z-axis.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyAccMag-mean()</td>
<td align="left">Mean of signal means for frequency domain body acceleration signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyAccMag-std()</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyBodyAccJerkMag-mean()</td>
<td align="left">Mean of signal means for frequency domain body acceleration calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyBodyAccJerkMag-std()</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body acceleration calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyBodyGyroMag-mean()</td>
<td align="left">Mean of signal means for frequency domain body gyroscope signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyBodyGyroMag-std()</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body gyroscope signal magnitudes.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="even">
<td>fBodyBodyGyroJerkMag-mean()</td>
<td align="left">Mean of signal means for frequency domain body gyroscope calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
<tr class="odd">
<td>fBodyBodyGyroJerkMag-std()</td>
<td align="left">Mean of standard deviation of signal means for frequency domain body gyroscope calculated jerk and signal magnitude.</td>
<td>Number between -1 and 1.</td>
</tr>
</tbody>
</table>

Additional Information
----------------------

### Tidy Data Structure

    ## Classes 'data.table' and 'data.frame':   180 obs. of  69 variables:
    ##  $ activity name              : Factor w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ subject                    : int  1 2 3 4 5 6 7 8 9 10 ...
    ##  $ Observation Count          : int  50 48 62 54 52 57 52 54 50 58 ...
    ##  $ tBodyAcc-mean()-X          : num  0.222 0.281 0.276 0.264 0.278 ...
    ##  $ tBodyAcc-mean()-Y          : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
    ##  $ tBodyAcc-mean()-Z          : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
    ##  $ tBodyAcc-std()-X           : num  -0.928 -0.974 -0.983 -0.954 -0.966 ...
    ##  $ tBodyAcc-std()-Y           : num  -0.837 -0.98 -0.962 -0.942 -0.969 ...
    ##  $ tBodyAcc-std()-Z           : num  -0.826 -0.984 -0.964 -0.963 -0.969 ...
    ##  $ tGravityAcc-mean()-X       : num  -0.249 -0.51 -0.242 -0.421 -0.483 ...
    ##  $ tGravityAcc-mean()-Y       : num  0.706 0.753 0.837 0.915 0.955 ...
    ##  $ tGravityAcc-mean()-Z       : num  0.446 0.647 0.489 0.342 0.264 ...
    ##  $ tGravityAcc-std()-X        : num  -0.897 -0.959 -0.983 -0.921 -0.946 ...
    ##  $ tGravityAcc-std()-Y        : num  -0.908 -0.988 -0.981 -0.97 -0.986 ...
    ##  $ tGravityAcc-std()-Z        : num  -0.852 -0.984 -0.965 -0.976 -0.977 ...
    ##  $ tBodyAccJerk-mean()-X      : num  0.0811 0.0826 0.077 0.0934 0.0848 ...
    ##  $ tBodyAccJerk-mean()-Y      : num  0.00384 0.01225 0.0138 0.00693 0.00747 ...
    ##  $ tBodyAccJerk-mean()-Z      : num  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
    ##  $ tBodyAccJerk-std()-X       : num  -0.958 -0.986 -0.981 -0.978 -0.983 ...
    ##  $ tBodyAccJerk-std()-Y       : num  -0.924 -0.983 -0.969 -0.942 -0.965 ...
    ##  $ tBodyAccJerk-std()-Z       : num  -0.955 -0.988 -0.982 -0.979 -0.985 ...
    ##  $ tBodyGyro-mean()-X         : num  -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
    ##  $ tBodyGyro-mean()-Y         : num  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
    ##  $ tBodyGyro-mean()-Z         : num  0.149 0.145 0.138 0.17 0.16 ...
    ##  $ tBodyGyro-std()-X          : num  -0.874 -0.988 -0.975 -0.973 -0.979 ...
    ##  $ tBodyGyro-std()-Y          : num  -0.951 -0.982 -0.977 -0.961 -0.977 ...
    ##  $ tBodyGyro-std()-Z          : num  -0.908 -0.96 -0.964 -0.962 -0.961 ...
    ##  $ tBodyGyroJerk-mean()-X     : num  -0.107 -0.102 -0.1 -0.105 -0.102 ...
    ##  $ tBodyGyroJerk-mean()-Y     : num  -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
    ##  $ tBodyGyroJerk-mean()-Z     : num  -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
    ##  $ tBodyGyroJerk-std()-X      : num  -0.919 -0.993 -0.98 -0.975 -0.983 ...
    ##  $ tBodyGyroJerk-std()-Y      : num  -0.968 -0.99 -0.987 -0.987 -0.984 ...
    ##  $ tBodyGyroJerk-std()-Z      : num  -0.958 -0.988 -0.983 -0.984 -0.99 ...
    ##  $ tBodyAccMag-mean()         : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
    ##  $ tBodyAccMag-std()          : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
    ##  $ tGravityAccMag-mean()      : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
    ##  $ tGravityAccMag-std()       : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
    ##  $ tBodyAccJerkMag-mean()     : num  -0.954 -0.988 -0.979 -0.97 -0.98 ...
    ##  $ tBodyAccJerkMag-std()      : num  -0.928 -0.986 -0.976 -0.961 -0.977 ...
    ##  $ tBodyGyroMag-mean()        : num  -0.875 -0.95 -0.952 -0.93 -0.947 ...
    ##  $ tBodyGyroMag-std()         : num  -0.819 -0.961 -0.954 -0.947 -0.958 ...
    ##  $ tBodyGyroJerkMag-mean()    : num  -0.963 -0.992 -0.987 -0.985 -0.986 ...
    ##  $ tBodyGyroJerkMag-std()     : num  -0.936 -0.99 -0.983 -0.983 -0.984 ...
    ##  $ fBodyAcc-mean()-X          : num  -0.939 -0.977 -0.981 -0.959 -0.969 ...
    ##  $ fBodyAcc-mean()-Y          : num  -0.867 -0.98 -0.961 -0.939 -0.965 ...
    ##  $ fBodyAcc-mean()-Z          : num  -0.883 -0.984 -0.968 -0.968 -0.977 ...
    ##  $ fBodyAcc-std()-X           : num  -0.924 -0.973 -0.984 -0.952 -0.965 ...
    ##  $ fBodyAcc-std()-Y           : num  -0.834 -0.981 -0.964 -0.946 -0.973 ...
    ##  $ fBodyAcc-std()-Z           : num  -0.813 -0.985 -0.963 -0.962 -0.966 ...
    ##  $ fBodyAccJerk-mean()-X      : num  -0.957 -0.986 -0.981 -0.979 -0.983 ...
    ##  $ fBodyAccJerk-mean()-Y      : num  -0.922 -0.983 -0.969 -0.944 -0.965 ...
    ##  $ fBodyAccJerk-mean()-Z      : num  -0.948 -0.986 -0.979 -0.975 -0.983 ...
    ##  $ fBodyAccJerk-std()-X       : num  -0.964 -0.987 -0.983 -0.98 -0.986 ...
    ##  $ fBodyAccJerk-std()-Y       : num  -0.932 -0.985 -0.971 -0.944 -0.966 ...
    ##  $ fBodyAccJerk-std()-Z       : num  -0.961 -0.989 -0.984 -0.98 -0.986 ...
    ##  $ fBodyGyro-mean()-X         : num  -0.85 -0.986 -0.97 -0.967 -0.976 ...
    ##  $ fBodyGyro-mean()-Y         : num  -0.952 -0.983 -0.978 -0.972 -0.978 ...
    ##  $ fBodyGyro-mean()-Z         : num  -0.909 -0.963 -0.962 -0.961 -0.963 ...
    ##  $ fBodyGyro-std()-X          : num  -0.882 -0.989 -0.976 -0.975 -0.981 ...
    ##  $ fBodyGyro-std()-Y          : num  -0.951 -0.982 -0.977 -0.956 -0.977 ...
    ##  $ fBodyGyro-std()-Z          : num  -0.917 -0.963 -0.967 -0.966 -0.963 ...
    ##  $ fBodyAccMag-mean()         : num  -0.862 -0.975 -0.966 -0.939 -0.962 ...
    ##  $ fBodyAccMag-std()          : num  -0.798 -0.975 -0.968 -0.937 -0.963 ...
    ##  $ fBodyBodyAccJerkMag-mean() : num  -0.933 -0.985 -0.976 -0.962 -0.977 ...
    ##  $ fBodyBodyAccJerkMag-std()  : num  -0.922 -0.985 -0.975 -0.958 -0.976 ...
    ##  $ fBodyBodyGyroMag-mean()    : num  -0.862 -0.972 -0.965 -0.962 -0.968 ...
    ##  $ fBodyBodyGyroMag-std()     : num  -0.824 -0.961 -0.955 -0.947 -0.959 ...
    ##  $ fBodyBodyGyroJerkMag-mean(): num  -0.942 -0.99 -0.984 -0.984 -0.985 ...
    ##  $ fBodyBodyGyroJerkMag-std() : num  -0.933 -0.989 -0.983 -0.983 -0.983 ...
    ##  - attr(*, "sorted")= chr  "activity name" "subject"
    ##  - attr(*, ".internal.selfref")=<externalptr>

### To Use the Tidy Data in R

The tidy data is saved as an R data.table in text and CSV formats. The following sample code may be used to read the data.table and restore its types as needed.

I don't run this code, just provide it as an example.

``` r
#
# To input the tidy 'wide' format data (my default preference) as an R data.table.
#
dtTidy <- read.table(tidy_txt_fname, stringsAsFactors = FALSE, header=TRUE)
dtTidy[, c(1)] <- sapply(dtTidy[, c(1)], as.factor)
# dtTidy is now in the same format as what was saved.

#
# To input the tidy 'tall' format data as an R data.table.
#
dtTidy <- read.table(tidy_txt_fname, stringsAsFactors = FALSE, header=TRUE)

# I think the following should work but doesn't on my system.
dtTidy[, c(1, 3:8)] <- sapply(dtTidy[, c(1, 3:8)], as.factor)

# This gets me back to the original form.
dtTidy[, c(1)] <- sapply(dtTidy[, c(1)], as.factor)
# And the following repeated, replacing 'x' with the number 3 through 8.
dtTidy[, c(x)] <- sapply(dtTidy[, c(x)], as.factor)
# dtTidy is now in the same format as what was saved.
```
