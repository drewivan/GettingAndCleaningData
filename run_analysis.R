library (plyr)

ActivityLabels <- read.table("activity_labels.txt")  ## get list of activities as mapped to code numbers
colNames <- read.table("features.txt", colClasses = "character")   ## get list of observation names

TestSubjectTest <- read.table("test/subject_test.txt", sep="")
TestXtest <- read.table("test/X_test.txt", sep="", col.names=colNames[,2])  ## set col names to observation names
TestYtest <- read.table("test/Y_test.txt", sep="")
## substitute activity label for Y values
TestYtestNamed <- join(ActivityLabels, TestYtest, by = "V1", type="right")

TrainSubjectTrain <- read.table("train/subject_train.txt", sep="")
TrainXtrain <- read.table("train/X_train.txt", sep="", col.names=colNames[,2])
TrainYtrain <- read.table("train/Y_train.txt", sep="")
## substitute activity label for Y values
TrainYtrainNamed <- join(ActivityLabels, TrainYtrain, by = "V1", type="right")

allTest <- cbind(TestSubjectTest, TestYtestNamed, TestXtest)
allTrain <- cbind(TrainSubjectTrain, TrainYtrainNamed, TrainXtrain)

allData <- rbind(allTest, allTrain)
colnames(allData)[1] <- "subject"
colnames(allData)[3] <- "activity"

## remove columns not related to mean or standard deviation
allData[2] <- NULL
allData$tBodyAcc.mad...X <- NULL
allData$tBodyAcc.mad...Y <- NULL
allData$tBodyAcc.mad...Z <- NULL
allData$tBodyAcc.max...X <- NULL
allData$tBodyAcc.max...Y <- NULL
allData$tBodyAcc.max...Z <- NULL
allData$tBodyAcc.min...X <- NULL
allData$tBodyAcc.min...Y <- NULL
allData$tBodyAcc.min...Z <- NULL
allData$tBodyAcc.sma.. <- NULL
allData$tBodyAcc.energy...X <- NULL
allData$tBodyAcc.energy...Y <- NULL
allData$tBodyAcc.energy...Z <- NULL
allData$tBodyAcc.iqr...X <- NULL
allData$tBodyAcc.iqr...Y <- NULL
allData$tBodyAcc.iqr...Z <- NULL
allData$tBodyAcc.entropy...X <- NULL
allData$tBodyAcc.entropy...Y <- NULL
allData$tBodyAcc.entropy...Z <- NULL
allData$tBodyAcc.arCoeff...X.1 <- NULL
allData$tBodyAcc.arCoeff...X.2 <- NULL
allData$tBodyAcc.arCoeff...X.3 <- NULL
allData$tBodyAcc.arCoeff...X.4 <- NULL
allData$tBodyAcc.arCoeff...Y.1 <- NULL
allData$tBodyAcc.arCoeff...Y.2 <- NULL
allData$tBodyAcc.arCoeff...Y.3 <- NULL
allData$tBodyAcc.arCoeff...Y.4 <- NULL
allData$tBodyAcc.arCoeff...Z.1 <- NULL
allData$tBodyAcc.arCoeff...Z.2 <- NULL
allData$tBodyAcc.arCoeff...Z.3 <- NULL
allData$tBodyAcc.arCoeff...Z.4 <- NULL
allData$tBodyAcc.correlation...X.Y <- NULL
allData$tBodyAcc.correlation...X.Z <- NULL
allData$tBodyAcc.correlation...Y.Z <- NULL
allData$tGravityAcc.mad...X <- NULL
allData$tGravityAcc.mad...Y <- NULL
allData$tGravityAcc.mad...Z <- NULL
allData$tGravityAcc.max...X <- NULL
allData$tGravityAcc.max...Y <- NULL
allData$tGravityAcc.max...Z <- NULL
allData$tGravityAcc.min...X <- NULL
allData$tGravityAcc.min...Y <- NULL
allData$tGravityAcc.min...Z <- NULL
allData$tGravityAcc.sma.. <- NULL
allData$tGravityAcc.energy...X <- NULL
allData$tGravityAcc.energy...Y <- NULL
allData$tGravityAcc.energy...Z <- NULL
allData$tGravityAcc.iqr...X <- NULL
allData$tGravityAcc.iqr...Y <- NULL
allData$tGravityAcc.iqr...Z <- NULL
allData$tGravityAcc.entropy...X <- NULL
allData$tGravityAcc.entropy...Y <- NULL
allData$tGravityAcc.entropy...Z <- NULL
allData$tGravityAcc.arCoeff...X.1 <- NULL
allData$tGravityAcc.arCoeff...X.2 <- NULL
allData$tGravityAcc.arCoeff...X.3 <- NULL
allData$tGravityAcc.arCoeff...X.4 <- NULL
allData$tGravityAcc.arCoeff...Y.1 <- NULL
allData$tGravityAcc.arCoeff...Y.2 <- NULL
allData$tGravityAcc.arCoeff...Y.3 <- NULL
allData$tGravityAcc.arCoeff...Y.4 <- NULL
allData$tGravityAcc.arCoeff...Z.1 <- NULL
allData$tGravityAcc.arCoeff...Z.2 <- NULL
allData$tGravityAcc.arCoeff...Z.3 <- NULL
allData$tGravityAcc.arCoeff...Z.4 <- NULL
allData$tGravityAcc.correlation...X.Y <- NULL
allData$tGravityAcc.correlation...X.Z <- NULL
allData$tGravityAcc.correlation...Y.Z <- NULL
allData$tBodyAccJerk.mad...X <- NULL
allData$tBodyAccJerk.mad...Y <- NULL
allData$tBodyAccJerk.mad...Z <- NULL
allData$tBodyAccJerk.max...X <- NULL
allData$tBodyAccJerk.max...Y <- NULL
allData$tBodyAccJerk.max...Z <- NULL
allData$tBodyAccJerk.min...X <- NULL
allData$tBodyAccJerk.min...Y <- NULL
allData$tBodyAccJerk.min...Z <- NULL
allData$tBodyAccJerk.sma.. <- NULL
allData$tBodyAccJerk.energy...X <- NULL
allData$tBodyAccJerk.energy...Y <- NULL
allData$tBodyAccJerk.energy...Z <- NULL
allData$tBodyAccJerk.iqr...X <- NULL
allData$tBodyAccJerk.iqr...Y <- NULL
allData$tBodyAccJerk.iqr...Z <- NULL
allData$tBodyAccJerk.entropy...X <- NULL
allData$tBodyAccJerk.entropy...Y <- NULL
allData$tBodyAccJerk.entropy...Z <- NULL
allData$tBodyAccJerk.arCoeff...X.1 <- NULL
allData$tBodyAccJerk.arCoeff...X.2 <- NULL
allData$tBodyAccJerk.arCoeff...X.3 <- NULL
allData$tBodyAccJerk.arCoeff...X.4 <- NULL
allData$tBodyAccJerk.arCoeff...Y.1 <- NULL
allData$tBodyAccJerk.arCoeff...Y.2 <- NULL
allData$tBodyAccJerk.arCoeff...Y.3 <- NULL
allData$tBodyAccJerk.arCoeff...Y.4 <- NULL
allData$tBodyAccJerk.arCoeff...Z.1 <- NULL
allData$tBodyAccJerk.arCoeff...Z.2 <- NULL
allData$tBodyAccJerk.arCoeff...Z.3 <- NULL
allData$tBodyAccJerk.arCoeff...Z.4 <- NULL
allData$tBodyAccJerk.correlation...X.Y <- NULL
allData$tBodyAccJerk.correlation...X.Z <- NULL
allData$tBodyAccJerk.correlation...Y.Z <- NULL
allData$tBodyGyro.mad...X <- NULL
allData$tBodyGyro.mad...Y <- NULL
allData$tBodyGyro.mad...Z <- NULL
allData$tBodyGyro.max...X <- NULL
allData$tBodyGyro.max...Y <- NULL
allData$tBodyGyro.max...Z <- NULL
allData$tBodyGyro.min...X <- NULL
allData$tBodyGyro.min...Y <- NULL
allData$tBodyGyro.min...Z <- NULL
allData$tBodyGyro.sma.. <- NULL
allData$tBodyGyro.energy...X <- NULL
allData$tBodyGyro.energy...Y <- NULL
allData$tBodyGyro.energy...Z <- NULL
allData$tBodyGyro.iqr...X <- NULL
allData$tBodyGyro.iqr...Y <- NULL
allData$tBodyGyro.iqr...Z <- NULL
allData$tBodyGyro.entropy...X <- NULL
allData$tBodyGyro.entropy...Y <- NULL
allData$tBodyGyro.entropy...Z <- NULL
allData$tBodyGyro.arCoeff...X.1 <- NULL
allData$tBodyGyro.arCoeff...X.2 <- NULL
allData$tBodyGyro.arCoeff...X.3 <- NULL
allData$tBodyGyro.arCoeff...X.4 <- NULL
allData$tBodyGyro.arCoeff...Y.1 <- NULL
allData$tBodyGyro.arCoeff...Y.2 <- NULL
allData$tBodyGyro.arCoeff...Y.3 <- NULL
allData$tBodyGyro.arCoeff...Y.4 <- NULL
allData$tBodyGyro.arCoeff...Z.1 <- NULL
allData$tBodyGyro.arCoeff...Z.2 <- NULL
allData$tBodyGyro.arCoeff...Z.3 <- NULL
allData$tBodyGyro.arCoeff...Z.4 <- NULL
allData$tBodyGyro.correlation...X.Y <- NULL
allData$tBodyGyro.correlation...X.Z <- NULL
allData$tBodyGyro.correlation...Y.Z <- NULL
allData$tBodyGyroJerk.mad...X <- NULL
allData$tBodyGyroJerk.mad...Y <- NULL
allData$tBodyGyroJerk.mad...Z <- NULL
allData$tBodyGyroJerk.max...X <- NULL
allData$tBodyGyroJerk.max...Y <- NULL
allData$tBodyGyroJerk.max...Z <- NULL
allData$tBodyGyroJerk.min...X <- NULL
allData$tBodyGyroJerk.min...Y <- NULL
allData$tBodyGyroJerk.min...Z <- NULL
allData$tBodyGyroJerk.sma.. <- NULL
allData$tBodyGyroJerk.energy...X <- NULL
allData$tBodyGyroJerk.energy...Y <- NULL
allData$tBodyGyroJerk.energy...Z <- NULL
allData$tBodyGyroJerk.iqr...X <- NULL
allData$tBodyGyroJerk.iqr...Y <- NULL
allData$tBodyGyroJerk.iqr...Z <- NULL
allData$tBodyGyroJerk.entropy...X <- NULL
allData$tBodyGyroJerk.entropy...Y <- NULL
allData$tBodyGyroJerk.entropy...Z <- NULL
allData$tBodyGyroJerk.arCoeff...X.1 <- NULL
allData$tBodyGyroJerk.arCoeff...X.2 <- NULL
allData$tBodyGyroJerk.arCoeff...X.3 <- NULL
allData$tBodyGyroJerk.arCoeff...X.4 <- NULL
allData$tBodyGyroJerk.arCoeff...Y.1 <- NULL
allData$tBodyGyroJerk.arCoeff...Y.2 <- NULL
allData$tBodyGyroJerk.arCoeff...Y.3 <- NULL
allData$tBodyGyroJerk.arCoeff...Y.4 <- NULL
allData$tBodyGyroJerk.arCoeff...Z.1 <- NULL
allData$tBodyGyroJerk.arCoeff...Z.2 <- NULL
allData$tBodyGyroJerk.arCoeff...Z.3 <- NULL
allData$tBodyGyroJerk.arCoeff...Z.4 <- NULL
allData$tBodyGyroJerk.correlation...X.Y <- NULL
allData$tBodyGyroJerk.correlation...X.Z <- NULL
allData$tBodyGyroJerk.correlation...Y.Z <- NULL
allData$tBodyAccMag.mad.. <- NULL
allData$tBodyAccMag.max.. <- NULL
allData$tBodyAccMag.min.. <- NULL
allData$tBodyAccMag.sma.. <- NULL
allData$tBodyAccMag.energy.. <- NULL
allData$tBodyAccMag.iqr.. <- NULL
allData$tBodyAccMag.entropy.. <- NULL
allData$tBodyAccMag.arCoeff..1 <- NULL
allData$tBodyAccMag.arCoeff..2 <- NULL
allData$tBodyAccMag.arCoeff..3 <- NULL
allData$tBodyAccMag.arCoeff..4 <- NULL
allData$tGravityAccMag.mad.. <- NULL
allData$tGravityAccMag.max.. <- NULL
allData$tGravityAccMag.min.. <- NULL
allData$tGravityAccMag.sma.. <- NULL
allData$tGravityAccMag.energy.. <- NULL
allData$tGravityAccMag.iqr.. <- NULL
allData$tGravityAccMag.entropy.. <- NULL
allData$tGravityAccMag.arCoeff..1 <- NULL
allData$tGravityAccMag.arCoeff..2 <- NULL
allData$tGravityAccMag.arCoeff..3 <- NULL
allData$tGravityAccMag.arCoeff..4 <- NULL
allData$tBodyAccJerkMag.mad.. <- NULL
allData$tBodyAccJerkMag.max.. <- NULL
allData$tBodyAccJerkMag.min.. <- NULL
allData$tBodyAccJerkMag.sma.. <- NULL
allData$tBodyAccJerkMag.energy.. <- NULL
allData$tBodyAccJerkMag.iqr.. <- NULL
allData$tBodyAccJerkMag.entropy.. <- NULL
allData$tBodyAccJerkMag.arCoeff..1 <- NULL
allData$tBodyAccJerkMag.arCoeff..2 <- NULL
allData$tBodyAccJerkMag.arCoeff..3 <- NULL
allData$tBodyAccJerkMag.arCoeff..4 <- NULL
allData$tBodyGyroMag.mad.. <- NULL
allData$tBodyGyroMag.max.. <- NULL
allData$tBodyGyroMag.min.. <- NULL
allData$tBodyGyroMag.sma.. <- NULL
allData$tBodyGyroMag.energy.. <- NULL
allData$tBodyGyroMag.iqr.. <- NULL
allData$tBodyGyroMag.entropy.. <- NULL
allData$tBodyGyroMag.arCoeff..1 <- NULL
allData$tBodyGyroMag.arCoeff..2 <- NULL
allData$tBodyGyroMag.arCoeff..3 <- NULL
allData$tBodyGyroMag.arCoeff..4 <- NULL
allData$tBodyGyroJerkMag.mad.. <- NULL
allData$tBodyGyroJerkMag.max.. <- NULL
allData$tBodyGyroJerkMag.min.. <- NULL
allData$tBodyGyroJerkMag.sma.. <- NULL
allData$tBodyGyroJerkMag.energy.. <- NULL
allData$tBodyGyroJerkMag.iqr.. <- NULL
allData$tBodyGyroJerkMag.entropy.. <- NULL
allData$tBodyGyroJerkMag.arCoeff..1 <- NULL
allData$tBodyGyroJerkMag.arCoeff..2 <- NULL
allData$tBodyGyroJerkMag.arCoeff..3 <- NULL
allData$tBodyGyroJerkMag.arCoeff..4 <- NULL
allData$fBodyAcc.mad...X <- NULL
allData$fBodyAcc.mad...Y <- NULL
allData$fBodyAcc.mad...Z <- NULL
allData$fBodyAcc.max...X <- NULL
allData$fBodyAcc.max...Y <- NULL
allData$fBodyAcc.max...Z <- NULL
allData$fBodyAcc.min...X <- NULL
allData$fBodyAcc.min...Y <- NULL
allData$fBodyAcc.min...Z <- NULL
allData$fBodyAcc.sma.. <- NULL
allData$fBodyAcc.energy...X <- NULL
allData$fBodyAcc.energy...Y <- NULL
allData$fBodyAcc.energy...Z <- NULL
allData$fBodyAcc.iqr...X <- NULL
allData$fBodyAcc.iqr...Y <- NULL
allData$fBodyAcc.iqr...Z <- NULL
allData$fBodyAcc.entropy...X <- NULL
allData$fBodyAcc.entropy...Y <- NULL
allData$fBodyAcc.entropy...Z <- NULL
allData$fBodyAcc.maxInds.X <- NULL
allData$fBodyAcc.maxInds.Y <- NULL
allData$fBodyAcc.maxInds.Z <- NULL
allData$fBodyAcc.skewness...X <- NULL
allData$fBodyAcc.kurtosis...X <- NULL
allData$fBodyAcc.skewness...Y <- NULL
allData$fBodyAcc.kurtosis...Y <- NULL
allData$fBodyAcc.skewness...Z <- NULL
allData$fBodyAcc.kurtosis...Z <- NULL
allData$fBodyAcc.bandsEnergy...1.8 <- NULL
allData$fBodyAcc.bandsEnergy...9.16 <- NULL
allData$fBodyAcc.bandsEnergy...17.24 <- NULL
allData$fBodyAcc.bandsEnergy...25.32 <- NULL
allData$fBodyAcc.bandsEnergy...33.40 <- NULL
allData$fBodyAcc.bandsEnergy...41.48 <- NULL
allData$fBodyAcc.bandsEnergy...49.56 <- NULL
allData$fBodyAcc.bandsEnergy...57.64 <- NULL
allData$fBodyAcc.bandsEnergy...1.16 <- NULL
allData$fBodyAcc.bandsEnergy...17.32 <- NULL
allData$fBodyAcc.bandsEnergy...33.48 <- NULL
allData$fBodyAcc.bandsEnergy...49.64 <- NULL
allData$fBodyAcc.bandsEnergy...1.24 <- NULL
allData$fBodyAcc.bandsEnergy...25.48 <- NULL
allData$fBodyAcc.bandsEnergy...1.8.1 <- NULL
allData$fBodyAcc.bandsEnergy...9.16.1 <- NULL
allData$fBodyAcc.bandsEnergy...17.24.1 <- NULL
allData$fBodyAcc.bandsEnergy...25.32.1 <- NULL
allData$fBodyAcc.bandsEnergy...33.40.1 <- NULL
allData$fBodyAcc.bandsEnergy...41.48.1 <- NULL
allData$fBodyAcc.bandsEnergy...49.56.1 <- NULL
allData$fBodyAcc.bandsEnergy...57.64.1 <- NULL
allData$fBodyAcc.bandsEnergy...1.16.1 <- NULL
allData$fBodyAcc.bandsEnergy...17.32.1 <- NULL
allData$fBodyAcc.bandsEnergy...33.48.1 <- NULL
allData$fBodyAcc.bandsEnergy...49.64.1 <- NULL
allData$fBodyAcc.bandsEnergy...1.24.1 <- NULL
allData$fBodyAcc.bandsEnergy...25.48.1 <- NULL
allData$fBodyAcc.bandsEnergy...1.8.2 <- NULL
allData$fBodyAcc.bandsEnergy...9.16.2 <- NULL
allData$fBodyAcc.bandsEnergy...17.24.2 <- NULL
allData$fBodyAcc.bandsEnergy...25.32.2 <- NULL
allData$fBodyAcc.bandsEnergy...33.40.2 <- NULL
allData$fBodyAcc.bandsEnergy...41.48.2 <- NULL
allData$fBodyAcc.bandsEnergy...49.56.2 <- NULL
allData$fBodyAcc.bandsEnergy...57.64.2 <- NULL
allData$fBodyAcc.bandsEnergy...1.16.2 <- NULL
allData$fBodyAcc.bandsEnergy...17.32.2 <- NULL
allData$fBodyAcc.bandsEnergy...33.48.2 <- NULL
allData$fBodyAcc.bandsEnergy...49.64.2 <- NULL
allData$fBodyAcc.bandsEnergy...1.24.2 <- NULL
allData$fBodyAcc.bandsEnergy...25.48.2 <- NULL
allData$fBodyAccJerk.mad...X <- NULL
allData$fBodyAccJerk.mad...Y <- NULL
allData$fBodyAccJerk.mad...Z <- NULL
allData$fBodyAccJerk.max...X <- NULL
allData$fBodyAccJerk.max...Y <- NULL
allData$fBodyAccJerk.max...Z <- NULL
allData$fBodyAccJerk.min...X <- NULL
allData$fBodyAccJerk.min...Y <- NULL
allData$fBodyAccJerk.min...Z <- NULL
allData$fBodyAccJerk.sma.. <- NULL
allData$fBodyAccJerk.energy...X <- NULL
allData$fBodyAccJerk.energy...Y <- NULL
allData$fBodyAccJerk.energy...Z <- NULL
allData$fBodyAccJerk.iqr...X <- NULL
allData$fBodyAccJerk.iqr...Y <- NULL
allData$fBodyAccJerk.iqr...Z <- NULL
allData$fBodyAccJerk.entropy...X <- NULL
allData$fBodyAccJerk.entropy...Y <- NULL
allData$fBodyAccJerk.entropy...Z <- NULL
allData$fBodyAccJerk.maxInds.X <- NULL
allData$fBodyAccJerk.maxInds.Y <- NULL
allData$fBodyAccJerk.maxInds.Z <- NULL
allData$fBodyAccJerk.skewness...X <- NULL
allData$fBodyAccJerk.kurtosis...X <- NULL
allData$fBodyAccJerk.skewness...Y <- NULL
allData$fBodyAccJerk.kurtosis...Y <- NULL
allData$fBodyAccJerk.skewness...Z <- NULL
allData$fBodyAccJerk.kurtosis...Z <- NULL
allData$fBodyAccJerk.bandsEnergy...1.8 <- NULL
allData$fBodyAccJerk.bandsEnergy...9.16 <- NULL
allData$fBodyAccJerk.bandsEnergy...17.24 <- NULL
allData$fBodyAccJerk.bandsEnergy...25.32 <- NULL
allData$fBodyAccJerk.bandsEnergy...33.40 <- NULL
allData$fBodyAccJerk.bandsEnergy...41.48 <- NULL
allData$fBodyAccJerk.bandsEnergy...49.56 <- NULL
allData$fBodyAccJerk.bandsEnergy...57.64 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.16 <- NULL
allData$fBodyAccJerk.bandsEnergy...17.32 <- NULL
allData$fBodyAccJerk.bandsEnergy...33.48 <- NULL
allData$fBodyAccJerk.bandsEnergy...49.64 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.24 <- NULL
allData$fBodyAccJerk.bandsEnergy...25.48 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.8.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...9.16.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...17.24.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...25.32.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...33.40.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...41.48.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...49.56.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...57.64.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.16.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...17.32.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...33.48.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...49.64.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.24.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...25.48.1 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.8.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...9.16.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...17.24.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...25.32.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...33.40.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...41.48.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...49.56.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...57.64.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.16.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...17.32.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...33.48.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...49.64.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...1.24.2 <- NULL
allData$fBodyAccJerk.bandsEnergy...25.48.2 <- NULL
allData$fBodyGyro.mad...X <- NULL
allData$fBodyGyro.mad...Y <- NULL
allData$fBodyGyro.mad...Z <- NULL
allData$fBodyGyro.max...X <- NULL
allData$fBodyGyro.max...Y <- NULL
allData$fBodyGyro.max...Z <- NULL
allData$fBodyGyro.min...X <- NULL
allData$fBodyGyro.min...Y <- NULL
allData$fBodyGyro.min...Z <- NULL
allData$fBodyGyro.sma.. <- NULL
allData$fBodyGyro.energy...X <- NULL
allData$fBodyGyro.energy...Y <- NULL
allData$fBodyGyro.energy...Z <- NULL
allData$fBodyGyro.iqr...X <- NULL
allData$fBodyGyro.iqr...Y <- NULL
allData$fBodyGyro.iqr...Z <- NULL
allData$fBodyGyro.entropy...X <- NULL
allData$fBodyGyro.entropy...Y <- NULL
allData$fBodyGyro.entropy...Z <- NULL
allData$fBodyGyro.maxInds.X <- NULL
allData$fBodyGyro.maxInds.Y <- NULL
allData$fBodyGyro.maxInds.Z <- NULL
allData$fBodyGyro.skewness...X <- NULL
allData$fBodyGyro.kurtosis...X <- NULL
allData$fBodyGyro.skewness...Y <- NULL
allData$fBodyGyro.kurtosis...Y <- NULL
allData$fBodyGyro.skewness...Z <- NULL
allData$fBodyGyro.kurtosis...Z <- NULL
allData$fBodyGyro.bandsEnergy...1.8 <- NULL
allData$fBodyGyro.bandsEnergy...9.16 <- NULL
allData$fBodyGyro.bandsEnergy...17.24 <- NULL
allData$fBodyGyro.bandsEnergy...25.32 <- NULL
allData$fBodyGyro.bandsEnergy...33.40 <- NULL
allData$fBodyGyro.bandsEnergy...41.48 <- NULL
allData$fBodyGyro.bandsEnergy...49.56 <- NULL
allData$fBodyGyro.bandsEnergy...57.64 <- NULL
allData$fBodyGyro.bandsEnergy...1.16 <- NULL
allData$fBodyGyro.bandsEnergy...17.32 <- NULL
allData$fBodyGyro.bandsEnergy...33.48 <- NULL
allData$fBodyGyro.bandsEnergy...49.64 <- NULL
allData$fBodyGyro.bandsEnergy...1.24 <- NULL
allData$fBodyGyro.bandsEnergy...25.48 <- NULL
allData$fBodyGyro.bandsEnergy...1.8.1 <- NULL
allData$fBodyGyro.bandsEnergy...9.16.1 <- NULL
allData$fBodyGyro.bandsEnergy...17.24.1 <- NULL
allData$fBodyGyro.bandsEnergy...25.32.1 <- NULL
allData$fBodyGyro.bandsEnergy...33.40.1 <- NULL
allData$fBodyGyro.bandsEnergy...41.48.1 <- NULL
allData$fBodyGyro.bandsEnergy...49.56.1 <- NULL
allData$fBodyGyro.bandsEnergy...57.64.1 <- NULL
allData$fBodyGyro.bandsEnergy...1.16.1 <- NULL
allData$fBodyGyro.bandsEnergy...17.32.1 <- NULL
allData$fBodyGyro.bandsEnergy...33.48.1 <- NULL
allData$fBodyGyro.bandsEnergy...49.64.1 <- NULL
allData$fBodyGyro.bandsEnergy...1.24.1 <- NULL
allData$fBodyGyro.bandsEnergy...25.48.1 <- NULL
allData$fBodyGyro.bandsEnergy...1.8.2 <- NULL
allData$fBodyGyro.bandsEnergy...9.16.2 <- NULL
allData$fBodyGyro.bandsEnergy...17.24.2 <- NULL
allData$fBodyGyro.bandsEnergy...25.32.2 <- NULL
allData$fBodyGyro.bandsEnergy...33.40.2 <- NULL
allData$fBodyGyro.bandsEnergy...41.48.2 <- NULL
allData$fBodyGyro.bandsEnergy...49.56.2 <- NULL
allData$fBodyGyro.bandsEnergy...57.64.2 <- NULL
allData$fBodyGyro.bandsEnergy...1.16.2 <- NULL
allData$fBodyGyro.bandsEnergy...17.32.2 <- NULL
allData$fBodyGyro.bandsEnergy...33.48.2 <- NULL
allData$fBodyGyro.bandsEnergy...49.64.2 <- NULL
allData$fBodyGyro.bandsEnergy...1.24.2 <- NULL
allData$fBodyGyro.bandsEnergy...25.48.2 <- NULL
allData$fBodyAccMag.mad.. <- NULL
allData$fBodyAccMag.max.. <- NULL
allData$fBodyAccMag.min.. <- NULL
allData$fBodyAccMag.sma.. <- NULL
allData$fBodyAccMag.energy.. <- NULL
allData$fBodyAccMag.iqr.. <- NULL
allData$fBodyAccMag.entropy.. <- NULL
allData$fBodyAccMag.maxInds <- NULL
allData$fBodyAccMag.skewness.. <- NULL
allData$fBodyAccMag.kurtosis.. <- NULL
allData$fBodyBodyAccJerkMag.mad.. <- NULL
allData$fBodyBodyAccJerkMag.max.. <- NULL
allData$fBodyBodyAccJerkMag.min.. <- NULL
allData$fBodyBodyAccJerkMag.sma.. <- NULL
allData$fBodyBodyAccJerkMag.energy.. <- NULL
allData$fBodyBodyAccJerkMag.iqr.. <- NULL
allData$fBodyBodyAccJerkMag.entropy.. <- NULL
allData$fBodyBodyAccJerkMag.maxInds <- NULL
allData$fBodyBodyAccJerkMag.skewness.. <- NULL
allData$fBodyBodyAccJerkMag.kurtosis.. <- NULL
allData$fBodyBodyGyroMag.mad.. <- NULL
allData$fBodyBodyGyroMag.max.. <- NULL
allData$fBodyBodyGyroMag.min.. <- NULL
allData$fBodyBodyGyroMag.sma.. <- NULL
allData$fBodyBodyGyroMag.energy.. <- NULL
allData$fBodyBodyGyroMag.iqr.. <- NULL
allData$fBodyBodyGyroMag.entropy.. <- NULL
allData$fBodyBodyGyroMag.maxInds <- NULL
allData$fBodyBodyGyroMag.skewness.. <- NULL
allData$fBodyBodyGyroMag.kurtosis.. <- NULL
allData$fBodyBodyGyroJerkMag.mad.. <- NULL
allData$fBodyBodyGyroJerkMag.max.. <- NULL
allData$fBodyBodyGyroJerkMag.min.. <- NULL
allData$fBodyBodyGyroJerkMag.sma.. <- NULL
allData$fBodyBodyGyroJerkMag.energy.. <- NULL
allData$fBodyBodyGyroJerkMag.iqr.. <- NULL
allData$fBodyBodyGyroJerkMag.entropy.. <- NULL
allData$fBodyBodyGyroJerkMag.maxInds <- NULL
allData$fBodyBodyGyroJerkMag.skewness.. <- NULL
allData$fBodyBodyGyroJerkMag.kurtosis.. <- NULL


write.table(allData, "alldata.txt")


summarizedData <- ddply(allData, .(subject, activity), numcolwise(mean))
write.table(summarizedData, "summarydata.txt", row.name=FALSE)

summarizedData

