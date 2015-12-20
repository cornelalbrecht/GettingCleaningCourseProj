# Load needed Libraries
library(dplyr)

# Read all files
feat <- read.table("./other/features.txt")
act.lab <- read.table("./other/activity_labels.txt")

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
write.table(grouped.data, file = "grouped_data.txt", row.names = FALSE)








