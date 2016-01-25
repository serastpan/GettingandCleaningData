# 1.- Create a directory with Data
if (!file.exists("data"))
{ dir.create("data") }
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "Accelerometer.zip")

# Unzip Data
filesList <- unzip("Accelerometer.zip", list = TRUE)
unzip("Accelerometer.zip", exdir = "data")

# 2.- Looking for the path of the files
Xtest <- sapply(filesList$Name, grepl, pattern = "X_test.txt")
Xtrain <- sapply(filesList$Name, grepl, pattern = "X_train.txt")
Ytest <- sapply(filesList$Name, grepl, pattern = "/y_test.txt")
Ytrain <- sapply(filesList$Name, grepl, pattern = "/y_train.txt")
featuresFile <- sapply(filesList$Name, grepl, pattern = "features.txt")
SubjTestFile <- sapply(filesList$Name, grepl, pattern = "subject_test.txt")
SubjTrainFile <- sapply(filesList$Name, grepl, pattern = "subject_train.txt")

# Reading the files
XtestSet <- read.table(paste("data/",filesList$Name[Xtest], sep = ""))
XtrainSet <- read.table(paste("data/",filesList$Name[Xtrain], sep = ""))
YtestSet <- read.table(paste("data/",filesList$Name[Ytest], sep = ""))
YtrainSet <- read.table(paste("data/",filesList$Name[Ytrain], sep = ""))
features <- read.table(paste("data/",filesList$Name[featuresFile], sep = ""))
subjectTest <- read.table(paste("data/",filesList$Name[SubjTestFile], sep = ""))
subjectTrain <- read.table(paste("data/",filesList$Name[SubjTrainFile], sep = ""))

# 3.- Add subjects and activities to the data frame
XtestSet <- cbind(subjectTest, YtestSet, XtestSet)
names(XtestSet)[1] <- "subject"
names(XtestSet)[2] <- "activity"
XtrainSet <- cbind(subjectTrain, YtrainSet, XtrainSet)
names(XtrainSet)[1] <- "subject"
names(XtrainSet)[2] <- "activity"

# 4.- Merge train and test sets
totalSet <- merge(XtestSet, XtrainSet, by = names(XtestSet), all = TRUE)

# 5.- Assign names to the variables according to features.txt
for (i in 3:dim(totalSet)[2]) {
  names(totalSet)[i] = as.character(features$V2[i-2])
}

# 6.- Extract mean and standard deviation for each measurement
meanL <- grepl("mean\\(\\)", names(totalSet))
stdL <- grepl("std\\(\\)", names(totalSet))
id <- grepl("subject", names(totalSet))
act <- grepl("activity", names(totalSet))
cols <- meanL | stdL | id | act
subTotalSet <- subset(totalSet[cols])

# 7.- Load descriptive activity names and add them to the dataset
activityFile <- sapply(filesList$Name, grepl, pattern = "activity_labels.txt")
activities <- read.table(paste("data/",filesList$Name[activityFile], sep = ""))
activities$V2 <- as.character(levels(activities$V2))[activities$V2]
for (i in 1:dim(activities)[1]) {
  logVector <- grepl(activities$V1[i],subTotalSet$activities)
  subTotalSet$activities[logVector]<-activities$V2[i]
}

# Assign descriptive names according to two principles:
#     - Tidy data variable names must contain only numeric or letters
#     - Variable names must be only lowercase letters
names(subTotalSet) <- gsub("-", "", names(subTotalSet))
names(subTotalSet) <- gsub("\\(", "", names(subTotalSet))
names(subTotalSet) <- gsub("\\)", "", names(subTotalSet))
names(subTotalSet) <- tolower(names(subTotalSet))

# 8.- Create an independent tidy data set with the average of each 
# variable for each activity and each subject
library(dplyr)
subjects <- group_by(subTotalSet, subject, activity)
cols <- names(subjects)[3:dim(subjects)[2]]
func <- sapply(cols, function(x) substitute(mean(x), list(x=as.name(x))))
averageTable <- do.call(summarise, c(list(.data=subjects), func))

# 9.- Write to a file the generated tidy data
write.table(averageTable, "TidyDataSet.txt", row.names = FALSE)
