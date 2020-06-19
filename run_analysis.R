## Downloading zipped data
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip','Dataset.zip',mode='wb')
## Unzipping data file
unzip('Dataset.zip')

## Changing working directory to data directory
setwd('UCI HAR Dataset')
## Reading column names and activity labels into 'column_names' and 'activity_labels'
column_names <- read.table('features.txt')
## Converting column_names into 'vector' 
names_vector <- as.vector(column_names[,2])
activity_labels <- read.table('activity_labels.txt')

## Changing working directory to 'train' directory
setwd('train')
## Reading training data 
train_input <- read.table('X_train.txt')
train_label <- read.table('y_train.txt')
train_subject <- read.table('subject_train.txt')
## Changing variable names in training data
names(train_input) <- names_vector
names(train_label)<- c("activitylabel")
names(train_subject)<-c('subject')
## Merging input and output
train_data <- cbind(train_subject,train_input,train_label)
## Moving to 'test' directory
setwd('../test')
## Reading test data
test_input <- read.table('X_test.txt')
test_label <- read.table('y_test.txt')
test_subject <- read.table('subject_test.txt')
## Changing variable names in test data
names(test_input) <- names_vector
names(test_label)<- c("activitylabel")
names(test_subject)<-c('subject')
## Merging input and output
test_data <- cbind(test_subject,test_input,test_label)

## Creating a complete dataset by merging train and test data into single dataset............
dataset <- rbind(train_data,test_data)
#...............................................................................


## Creating dataset containing only mean and standard deviation variables....................
#.... Extracting variable indices for mean and standard deviation observations
req_indices <- grep('(-mean()|-std()|Mean)',names_vector)
#.... Extracting required mean and standard data
mean_std_data <- dataset[,names_vector[req_indices]]
#............................................................................................


## Creating dataset with descriptive activity names..........................................
labelled_dataset <- rbind(train_data,test_data)
for (i in 1:6)
{
  labelled_dataset[which(dataset$activitylabel==i),c('activitylabel')]=activity_labels$V2[i]
}
#............................................................................................

## Creating dataset with descriptive variable names..........................................
descriptive_names <- tolower(names(dataset))
descriptive_names <- sub('acc','-acceleration',descriptive_names)
descriptive_names <- sub('gyro','-angularvelocity',descriptive_names)
descriptive_names <- sub('jerk','-jerksignal',descriptive_names)
descriptive_names <- sub('^t','timedomainsignal:-',descriptive_names)
descriptive_names <- sub('mag','magnitude',descriptive_names)
descriptive_names <- sub('std','standarddeviation',descriptive_names)
descriptive_names <- sub('mad','medianabsolutedeviation',descriptive_names)
descriptive_names <- sub('sma','signalmagnitudearea',descriptive_names)
descriptive_names <- sub('iqr','interquartilerange',descriptive_names)
descriptive_names <- sub('entropy','signalentropy',descriptive_names)
descriptive_names <- sub('arcoeff','autoregressioncoefficient',descriptive_names)
descriptive_names <- sub('maxinds','maxvalueindex',descriptive_names)
descriptive_names <- sub('freq','frequency',descriptive_names)
descriptive_names <- sub('^f','frequencydomainsignal:-',descriptive_names)
descriptive_names <- sub('),',',',descriptive_names)
descriptive_names <- sub('\\(t','(timedomainsignal:-',descriptive_names)
descriptive_names <- sub('bodybody','body',descriptive_names)
descriptive_names <- sub(',','-',descriptive_names)

names(dataset) <- descriptive_names
names(labelled_dataset) <- descriptive_names
#............................................................................................


## Creating dataset with average of each variable for each activity and each subject.........
mean_dataset <- data.frame()
for (i in 1:30)
{
  for (j in 1:6)
  {
    data_req <- dataset[which(dataset$subject==i & dataset$activitylabel ==j),]
    cm <- colMeans(data_req)
    temp<- data.frame(as.list(cm))
    mean_dataset<-rbind(mean_dataset,temp)
  }
}

for (i in 1:6)
{
  mean_dataset[which(mean_dataset$activitylabel==i),c('activitylabel')]=activity_labels$V2[i]
}
#...........................................................................................

names(mean_dataset) <- names(dataset)
## Saving the created dataset in the project directory......................................
setwd('../../')