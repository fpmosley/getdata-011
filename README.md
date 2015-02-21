# Getting and Cleaning Data Course Project

This script prepares tidy data to be used for later analysis.

The data used for this script comes from a study of wearable computing using a Samsung Galaxy S smartphone.  The full description of the study can be found here:

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data for this project can be obtained here:

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Requirements

Download the data, from the provided[link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and unzip to a directory named ‘UCI HAR Dataset’.

This script makes use of the ‘reshape2’ package to tidy the data.  Before running the script, make sure that the ‘reshape2’ package is installed.

### Check if ‘reshape2’ installed

Run the following:
`> installed.packages()`

Check for ‘reshape2’ in the output.

### Install ‘reshape2’ (if not already installed)

Run the following:
`> install.packages("reshape2”)`

## Run Analysis Script

### Usage

`run_analysis(outfile = "tidyData.txt”)`

### Arguments

`outfile` the name of the file to output the tidy data

### Example

```
> run_analysis()
Starting analysis of wearable data...
Reading in the data sets...
Merging the data...
Tidying the data...
The Tidy Data has been output to 'tidyData.txt'.
```

