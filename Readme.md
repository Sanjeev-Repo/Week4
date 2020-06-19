The step involved are as follows-

1.  Download the data from
'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

2.  Extract the data in the same directory.

3.  Go to the directory containing data.
4.  Read the column names as vector('names_vector') and activity labels as dataframe
    ('activity_labels').
5.  Go to training dataset directory.
6.  Read input data ('X_train.txt')  ,output data ('y_train.txt')  and subject data
    ('subject_train.txt').
7.  Assign variable names to the input data using 'names_vector'.
8.  Assign appropriate names to output data and subject data.
9.  Merge subject data, input and output using cbind() .
10. Move to test dataset directory.
11. Read input data ('X_test.txt')  ,output data ('y_test.txt')  and subject data
    ('subject_test.txt').
12. Perform step 7,8 and 9.

13. Merge train dataset and test dataset obtained from step 9 and 12 respectively using      rbind() to obtain the complete dataset 'dataset'.

14. Extract data containing mean and standard deviation values into 'mean_std_data' by
    searching appropriate string in column names of 'dataset' using grep().

15. Assigning appropriate string values using values from 'activity_labels' to output
    column 'activitylabel' and storing the changed dataframe in a new dataframe
    'labelled dataset'.

16. Change variable names in 'dataset' by applying sub() function to variable names of
    'dataset' to appropriate variable names and apply those changes to both 'dataset' and
    'labelled_dataset'.

17. Calculate average value of dataset columns factored by 'activitylabel' and 'subject'
    column and store them as dataframe 'mean_dataset' .Assign variable names of 'dataset'
    to'mean_dataset' to avoid any error in variable names. 
18. Return to project directory.
