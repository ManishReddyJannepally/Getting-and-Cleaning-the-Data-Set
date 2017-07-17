getwd()
setwd("C:/Users/janne/Desktop/R - Coursera/Project")
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "data.zip", mode = 'wb')

unzip("data.zip")
#reading all the data
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt",colClasses = "character")
features = read.table("UCI HAR Dataset/features.txt",col.names = c("ActivityID", "Activity"))

subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
x_test = read.table("UCI HAR Dataset/test/X_test.txt")
y_test = read.table("UCI HAR Dataset/test/Y_test.txt")

subject_train =  read.table("UCI HAR Dataset/train/subject_train.txt")
x_train = read.table("UCI HAR Dataset/train/X_train.txt")
y_train = read.table("UCI HAR Dataset/train/Y_train.txt")

#binding the test, train and subject data row-wise
x_binded = rbind(x_train,x_test)
y_binded = rbind(y_train,y_test)
subject_binded = rbind(subject_train,subject_test)

#naming the columns
names(subject_binded) = "Subject"
names(y_binded) = "ActivityId"
names(x_binded) = as.character(features[,2])

#Merges the training and the test sets to create one data set
#merging the train and test datasets
Pre_data = cbind(subject_binded,y_binded)
data = cbind(x_binded,Pre_data)

#Extracts only the measurements on the mean and standard deviation for each measurement
#greping the merged data with required features
data_grepped = data[,grepl("mean|std|Subject|ActivityId", names(data))]

#Uses descriptive activity names to name the activities in the data set
#macthing the activity names with the acticity id
data_matched = join(data_grepped, activity_labels, by = 'ActivityId')

#Appropriately labels the data set with descriptive variable names
# Remove parentheses
names(data_matched) <- gsub('\\(|\\)',"",names(data_matched), perl = TRUE)
# Make syntactically valid names
names(data_matched) <- make.names(names(data_matched))
# Make clearer names
names(data_matched) <- gsub('Acc',"Acceleration",names(data_matched))
names(data_matched) <- gsub('GyroJerk',"AngularAcceleration",names(data_matched))
names(data_matched) <- gsub('Gyro',"AngularSpeed",names(data_matched))
names(data_matched) <- gsub('Mag',"Magnitude",names(data_matched))
names(data_matched) <- gsub('^t',"TimeDomain.",names(data_matched))
names(data_matched) <- gsub('^f',"FrequencyDomain.",names(data_matched))
names(data_matched) <- gsub('\\.mean',".Mean",names(data_matched))
names(data_matched) <- gsub('\\.std',".StandardDeviation",names(data_matched))
names(data_matched) <- gsub('Freq\\.',"Frequency.",names(data_matched))
names(data_matched) <- gsub('Freq$',"Frequency",names(data_matched))

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject
data_avg_by_act_sub = ddply(data_matched, c("Subject","Activity"), numcolwise(mean))
write.table(data_avg_by_act_sub, file = "data_avg_by_act_sub.txt")
