# Data Science 3 Project - Getting and Cleaning Data
* __Author:__ *pjtx4657, Patrick (Pat) T.*
* __GitHub Project Link:__ [project](https://github.com/pjtoms/ds3-gcd "GitHub project link")

## Contents

* [Summary](#project)
* [Deliverables](#deliverables)
* [Analysis](#analysis)
  * [What Is Tidy Data](#whatIsTidy)
  * [Getting To Tidy Data](#gettingToTidy)
  * [Deriving the Tidy Data](#deriving)
* [Solution](#solution)
  * [Output Tidy Data Format](#tidyDataFmt)
* [References](#references)

_**NOTE:** Some project notes are paraphrased from the Coursera project notes._

### <a name="project"></a>Project Summary
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare a tidy data file that can be used for later analysis.

I provide scripts to download and prepare a subset "tidy" data set from [UCI HAR smartphone data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "from UCI Machine Learning Repository - citation request at bottom of page"). The subset of data will only include the provided mean and standard deviation values. These values are then summarized by activity and subject. A codebook for the new tidy data set is also provided.

### <a name="deliverables"></a>Deliverables
The project requires the following to be submitted.
1. Tidy data set as described below.
2. Link to a Github repository with the script(s) for performing the analysis (see link above).
3. Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called __CodeBook.md__.
4. Include a __README.md__ in the repository with the scripts explaining how all of the scripts work and how they are connected.

My [repository](https://github.com/pjtoms/ds3-gcd "GitHub project link") contains the following.
* [README.md](https://github.com/pjtoms/ds3-gcd/blob/master/README.md "this file") - This file
* Code - File [run_analysis.R](https://github.com/pjtoms/ds3-gcd/blob/master/run_analysis.R "Initial script") (R) and [run_analysis.Rmd](https://github.com/pjtoms/ds3-gcd/blob/master/run_analysis.Rmd "main processing") (Rmarkdown). I chose to use RMarkdown based on comments from others that it allows for co-located documentation and code and a formatted presentation of the script and its output. The output from the R Markdown is at [run_analysis.html](http://htmlpreview.github.com/?https://github.com/pjtoms/ds3-gcd/blob/master/run_analysis.html "run_analysis.Rmd output")
* [Codebook.Rmd](https://github.com/pjtoms/ds3-gcd/blob/master/Codebook.Rmd "code book generator script") and [Codebook.md](https://github.com/pjtoms/ds3-gcd/blob/master/Codebook.md "code book markdown output"). Codebook.md provides a full description of derived tidy data set in markdown format.
* Support files [grepDictionary.txt](https://github.com/pjtoms/ds3-gcd/blob/master/grepDictionary.txt "grep expressions to support codebook production") and [namesDictionary.txt](https://github.com/pjtoms/ds3-gcd/blob/master/namesDictionary.txt "names dictionary to support codebook production") used in Codebook production.
* Output - Tidy format files in text, [uciMeanStdDevTidy.txt](https://github.com/pjtoms/ds3-gcd/blob/master/uciMeanStdDevTidy.txt "text tidy file"), and csv, [uciMeanStdDevTidy.csv](https://github.com/pjtoms/ds3-gcd/blob/master/uciMeanStdDevTidy.csv "csv tidy file"), formats.

### <a name="analysis"></a>Analysis
A brief look at the data files shows a large, wide set of data, with accompanying column description files. So let's go from there.

#### <a name="whatIsTidy"></a>What Is Tidy Data
From [Hadley Wickham](http://vita.had.co.nz/papers/tidy-data.pdf "tidy data paper") tidy data has these characteristics:

* each variable is a column
* each observation is a row
* each type of observational unit is a table

And another way of [saying](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/ "project notes from forum reference") this (summarized):

* data has headings
* variables in different columns
* no duplicate columns

#### <a name="gettingToTidy"></a>Getting To Tidy Data
The main tidy data set characteristic mssing is that the columns are not labelled. Other issues depend on your view of the data. My view is described next.

I looked at the data in two different ways when it came to producting the tidy data set. First, each row has a numerous variables that could be independently summarized with factors(keys) based on the supplied column headings. This would lead to a tall format (lots of rows, few columns) tidy representation. If I was doing a data base I might go this route.

A second view of the data is that each row represents the telemetry values and related calculations from a point in time. Putting this view into a tidy format would lead to a wide, short tidy representation. It would also allow for the same column titles to be used for the new tidy representation. I chose this view for my tidy data set output for a few reasons - it's more human readable from my point of view, it easily flows into an R data table or spreadsheet view, and it leaves the original naming convention intact for consistency.

#### <a name="deriving"></a>Deriving the Tidy Data
From the project requirements we know that we need to get the average of the mean and standard deviation values for each activity, by subject ID. Reading the *features_info.txt* file and then looking at the various column labels from *features.txt* we can see that supplied data falls into the following example forms for mean and standard deviation.

##### Column/Feature Name Examples
* tBodyAccJerk-mean()-X
* tBodyGyroJerkMag-std()
* tGravityAcc-std()
* fBodyBodyAccJerkMag-mean()
* fBodyGyro-std()-Z
* ...

##### Column/Feature Name Generalized Format
So an R regular expression to fully encompass these column names could be as follows.

* __R grep() complete expression:__ <code>"\^[[tf]](Body|Gravity|BodyBody)(Acc|Gyro)(Jerk|Mag|JerkMag)?(-mean\\(\\)(-[XYZ])?|-std\\(\\)(-[XYZ])?)\$"</code>

To just look for mean and standard deviation (std) columns the following works.

* __R grep() mean/std expression:__ <code>".*-mean\\(\\)*|.*-std\\(\\)*"</code>

### <a name="solution"></a>Solution
The solution provided is primarily a data manipulation process. It extracts the mean and standard devation columns, adds column labels, and then summarizes the data by activity and subject. A count for the number of observations summarized is added to the data.


### <a name="references"></a>References
* [Hadley Wickham Tidy Data Paper](http://vita.had.co.nz/papers/tidy-data.pdf "IMO - indispensable for this project, sections 3 and 5 really helped")
* [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet "instructional")
* [R Markdown Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf "instructional")
* [Sharing Data with a Statistician](http://blogs.biomedcentral.com/bmcblog/2013/11/26/how-to-share-data-with-a-statistician/ "codebook info")
* [Another View on the Assignment](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/ "another view")
* [UCI Data Citation](http://archive.ics.uci.edu/ml/citation_policy.html "from UCI Citation Policy")

