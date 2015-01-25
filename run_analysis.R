## run_analysis.R - Coursera / Johns Hopkins Data Science Specialization: Getting and Cleaning Data
## Student: Graham Ross
## Please see README.md for an explanation of this code.
##
## Citation: This data cleaning operation is using data provided by:
## [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
## Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
## International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

getActivityLabels <- function(){
  return (read.table("activity_labels.txt",col.names=c("activity.label","activity")))
}
getFeatureLabels <- function(){
  return (read.table("features.txt",col.names=c("feature.label","feature")))
}
getTrainSubjects <- function(){
  return (read.table("train/subject_train.txt",col.names="Subject"))
}
getTrainActivities <- function(){
  return (read.table("train/y_train.txt",col.names="ActivityNumber"))
}
getTrainFeatures <- function(featureLabels){
  return (read.table("train/X_train.txt",col.names=featureLabels[,2]))
}
getTestSubjects <- function(){
  return (read.table("test/subject_test.txt",col.names="Subject"))
}
getTestActivities <- function(){
  return (read.table("test/y_test.txt",col.names="ActivityNumber"))
}
getTestFeatures <- function(featureLabels){
  return (read.table("test/X_test.txt",col.names=featureLabels[,2]))
}


getSamsungData <- function(){
  #are we in the right directory??
  #setwd('.../UCI HAR Dataset')
  if (!file.exists("train") | !file.exists("test")) {
    print("Cannot see 'train' and 'test' in the working directory. You must setwd() to the raw dataset.")
    return(NULL)
  }
  
  #load the global metadata
  activityLabels <- getActivityLabels()
  featureLabels <- getFeatureLabels()
  #identify the interesting subset of the raw data
  meanFeatureBits <- with(featureLabels,grepl("mean\\(\\)",feature))
  stdFeatureBits <- with(featureLabels,grepl("std\\(\\)",feature))
  salientFeatureLabels <- featureLabels[meanFeatureBits | stdFeatureBits,]
  keeps <- salientFeatureLabels[,2]
  keeps <- gsub("[-\\)\\(]",".",keeps)
  
  #load the train data
  trainSubjects <- getTrainSubjects()
  trainActivities <- getTrainActivities()
  trainFeatures <- getTrainFeatures(featureLabels)
  
  #enhance the Activity data (add Activity column, delete ActivityNumber column)
  trainActivities$Activity <- activityLabels[match(trainActivities$ActivityNumber,activityLabels$activity.label),"activity"]
  trainActivities$ActivityNumber <- NULL
  
  #delete unused train columns
  trainFeatures <- trainFeatures[,keeps]
  
  #bind the train columns
  allTrainColumns <- cbind(trainSubjects, trainActivities, trainFeatures)
  
  #load the test data
  testSubjects <- getTestSubjects()
  testActivities <- getTestActivities()
  testFeatures <- getTestFeatures(featureLabels)
  
  #enhance the Activity data (add Activity column, delete ActivityNumber column)
  testActivities$Activity <- activityLabels[match(testActivities$ActivityNumber,activityLabels$activity.label),"activity"]
  testActivities$ActivityNumber <- NULL
  
  #delete unused train columns
  testFeatures <- testFeatures[,keeps]
  
  #bind the test columns
  allTestColumns <- cbind(testSubjects, testActivities, testFeatures)
  
  #merge the test and train datasets (bind the rows)
  all <- rbind(allTrainColumns, allTestColumns)
  
  #return the resulting tidy dataset
  return (all)  
}

#Pass a pathname into which the file averages.txt will be created.
saveSamsungMeansPerStepFive <- function(destfile,sd){ #parameter is the result of getSamsungData, above.
  means <- aggregate(sd[,3:68],list(sd$Subject,sd$Activity), FUN=mean, simplify=F)
  means[,2] <- as.character(means[,2])
  #n.b.: Columns Subject and Activity in means have been renamed, but we discard column names in write.table.
  write.table(means, file=destfile, quote=F, col.names=F, row.names=F)
}

doItAll <- function(destfile){
  samsungData <- getSamsungData()
  saveSamsungMeansPerStepFive(destfile,samsungData)
}