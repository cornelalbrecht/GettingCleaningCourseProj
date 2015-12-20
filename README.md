---
title: "Readme"
output: html_document
---

### Summary and Purpose

The file *run_analysis.R* cleans test and training data from the [Human Activity Reconition Study](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Output

The analysis function outputs a file *grouped_data.txt* that contains the **mean** and **standard deviation** values for the various sensor measurements grouped by **activity** and **participant** (please refer to the source code and the codebook for more detail).

The data is grouped by the activity performed and by participant within the study. The values given are mean values of all measurement readings.

At 6 different activities assessed and 30 participants, there are 180 values of 86 variables. In addition, an actvity and participant identifier are found for every observation making the outoput matrix [180 x 88]-dimensional.


### Steps

The following steps are performed within the script:

1. Read-in of all the data files.
2. The data is then filtered for only mean and std values as we are only interested in these values.
3. The different data-frames are then merged into one large data frame.
4. The activities are identified by their ID and added to the data frame for better readability.
5. The column names are set to the respective measurements for better readability.
6. The final data frame is grouped by activity and participant and the mean values are calculated.
7. The grouped data with mean values is exported into a fixed-width delimited file called *grouped_data.txt*.

### Source Code
``` r
# Load needed Libraries
library(dplyr)

# Read all files
feat <- read.table("features.txt")
act.lab <- read.table("activity_labels.txt")

test.X <- read.table("./test/X_test.txt")
test.y <- read.table("./test/y_test.txt")
test.subj <- read.table("./test/subject_test.txt")

train.X <- read.table("./train/X_train.txt")
train.y <- read.table("./train/y_train.txt")
train.subj <- read.table("./train/subject_train.txt")


# Filter the mean() and std() values from the data
filt.vars <- grep("mean()", feat$V2, ignore.case = TRUE)
filt.vars <- append(filt.vars, grep("std()", feat$V2, ignore.case = TRUE))

# RBind Test and Training Sets
X <- rbind(test.X, train.X)
y <- rbind(test.y, train.y)
subj <- rbind(test.subj, train.subj)

# Subset X variables for only mean() and std() variables
Xsub <- X[,filt.vars]

# CBind all datasets into one
dat <- cbind(y, subj, Xsub)

# Assign temporary column names for merging (this is quick and dirty code, but it works :-) )
colnames(dat) <- c("act", "subj", "data")

# Merge Data on Activity ID
dat <- merge(act.lab, dat, by.x = "V1", by.y = "act")
dat <- dat[,-1] # Remove extra column with Activity ID that stems from the merging process

# Make the Column names all nice
desc <- feat[filt.vars,]
colnames(dat) <- c("Activity", "Subject", as.character(desc$V2))

# Group and summarize data with dplyr package 
grouped.data <- dat %>% group_by(Activity,Subject) %>% summarise_each(funs(mean))

# Write data to file
write.table(grouped.data, file = "grouped_data.txt")
```


