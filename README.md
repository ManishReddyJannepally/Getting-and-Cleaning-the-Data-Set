# Getting-and-Cleaning-the-Data-Set

This is project involves in getting the data from a website and bringing together the parts we bought in as a clean dataset. Simply,The goal is to prepare tidy data that can be used for later analysis

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

                        http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
                        
Here are the data used for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script, run_analysis.R, does the following:

--> Download the dataset if it does not already exist in the working directory
--> Load the activity and feature info
--> Loads both the training and test datasets and merge them into single dataset
--> Loads the activity and subject data for each dataset, and merges those columns with the merged dataset
--> Converts the activity and subject columns into factors and keep only those columns which reflect a mean or standard deviation
--> Create a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

CodeBook.md describes the variables, the data, and any transformations or work that was performed to clean up the data..
