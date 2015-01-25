Getting and Cleaning Data -- Class Project

This project implements an R script for creating a tidy dataset.

This project references prior work and republishes results of that work. That work requires that it be cited in publications thus:

*[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

----------

INSTRUCTIONS

Assumption: The raw data is too big to store in github. It is available at:  
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
I assume that the person running my script has downloaded the raw data. 

To execute the script, in R-studio:
> setwd(".../UCI HAR Dataset") #where ... is the path to this directory  
> source(".../run_analysis.R") #... is the path to my script  
> samsungData <- getSamsungData() #instruction steps 1-4  
> samsungMeans <- getSamsungMeans() #instruction step 5

----------

CONTENTS

Contents of this github repo directory are as follows:


- githublink.md: contains a link to this directory: the github repository where I have placed this project's required products.
- CodeBook.md: project code book.
- README.md: this file.
- run_analysis.R: required R script which contains a number of functions. One of the functions makes a tidy dataset from the primary source data. Another function derives a second tidy dataset from the first. See instructions above.
- averages.txt: a tidy dataset created in step 5 of the instructions.
- salient_features.txt: a list of the "features" from the original dataset that I used in this project. I also used the subject ID and the activity ID.

----------
REMARKS ON TIDINESS (from the Week 1 lecture "The components of tidy data.")

My task is to present: 1) the raw data; 2) a tidy data set; 3) a code book; and 4) an explicit and exact recipe I used to go from (1) to (2 and 3).

Why is our raw data not tidy? Tidy data has each variable in one column. Our raw data separates test and train data. Tidy data places each "kind" of variable in exactly one table. Our raw data separates each observation into three tables: subject, activity, and features. Tidy data is accompanied by a clear, concise and correct code book. Our raw data's code book is broken into partially redundant pieces and reportedly contains some errors and conflicts.

----------

INTERPRETATION

Step 1.  I think the data fits "tidily" into one table. I haven't even added a "test vs. train" variable because it is not needed for any of the subsequent steps.

Step 2. All the features that I have included end with -mean() or -std(), sometimes followed by "-X," "-Y" or "-Z". I concluded that the presence of "mean" or "std" elsewhere in the name of a feature was not important. The result is 66 features, which I have listed in CodeBook.md.

Step 3. I took activity names verbatim from activity_labels.txt.

Step 4. I took variable names verbatim from features.txt.

Step 5. This is a computation. For example, for a given triple (activity,subject,feature) roughly 60 values contribute to the computed average. 

----------

IMPLEMENTATION NOTES

These notes assume that the reader is familiar with the Smartphone dataset as provided in the course materials (cited and linked above).

I have completely ignored the inertial data directories. The means and standard deviations provided in X_*.txt are usable. The purpose of the exercise is preparation of the data for downstream processes (i.e., tidying), not re-doing the computations of the original research team.

Upon reading the data into a data.frame, the column names are changed to be legal in R. I decided to run with these defaults. This makes it as unambiguous as the system requires it to be. Though the names might look clumsy, there is nothing more to say about it, which is a virtue.

The number of lines (rows) in the files subject_test.txt, X_test.txt, and y_test.txt are equal. It is as if a tidy dataset had been broken column-wise. The file subject_test.txt is the column indicating the person wearing the phone (the subject). The file y_test.txt is the column indicating the activity (e.g., WALKING). The same is true of the corresponding "_train" files. The columns can be joined using something like R's cbind().

The number and organization of the columns in the "test" files is identical to the number and organization of the columns in the "train" files. It is as if a tidy dataset had been broken row-wise into two pieces. These rows can be "unioned" using something like R's rbind().

There is a lot of consistency across the raw dataset. One exception to this is that different subjects have slightly different numbers of observations associated with them. For example, nine subjects (30% of the 30) are represented in the Test data. One might assume that the number of observations in this portion of the dataset would be divisible by three. It isn't. One might assume that the number of observations in the Train portion would be 7/3 or 2-1/3 times the number in the Test portion. Instead it is just under 2-1/2 times.
