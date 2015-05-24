# GettingAndCleaningData
course project for getting and cleaning data - coursera data science specialization

Here is how the analysis file works:

0. Assumes the project data has been downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
to the working directory and unzipped.

1. The script reads all the relevant files and then performs some alterations to the data set.\
   A. sets the column names to be the observation names found in features.txt
   B. changes the activities in the raw data, which are identified by numbers, to friendly names (e.g. "SITTING")
   C. appends the subject number, activity name, and observation data to a single data frame
   D. removes all columns that don't have "mean" or "std" in the name
2. Next, the entire data table is written out to a text file called alldata.txt
3. The data is summarized; the mean is calculated grouped by subject and activity
4. summarized data is written to a file called summarydata.txt and also printed to the console

See codebook.md for more information
