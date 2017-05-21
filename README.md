## The dataset includes the following files:

* 'README.md'
* 'Tidied_Data.txt': The average of all mean and standard deviation variables for all subjects and activities.
* 'CodeBook.md': The steps taken to create 'Tidied_Data.txt' and a list of all variables.
* 'run_analysis.R': The script to create 'Tidied_Data.txt' from the original files.
	
## The script performs the following steps to create the 'Tidied_Data.txt' file:
 
* Changes the variable names in 'x_test.txt' and 'x_train.txt' to the list of features in features.txt'.
* Changes the variable name in 'y_test.txt' and 'y_train.txt' to 'activity'.
* Changes the variable name in 'subject_test.txt' and 'subject_train.txt' to 'subject'.
* Combines all test and train data into a single dataset.
* Converts all variable names to lowercase with no dots, per the week 4 'Editing Text Variables' lecture.
* Changes all activities factor names from numbers to the descriptive names in 'activity_labels.txt'.
* Extracts all mean and standard deviation columns.
* Calculates the average of all mean and standard deviation variables for all subjects and activities.
* Writes the result to the file named 'Tidied_Data.txt'.

## For each record, the following is provided:

* An identifier of the subject who carried out the experiment.
* The name of the activity. 
* An 86-variable vector with the average of all mean and standard deviation variables from the combined 'x_test.txt' and 'x_train.txt' data for all subjects and activities.
	
## Notes:

* The original files must be in the working directory to run 'run_analysis.R'.
* To read 'Tidied_Data.txt' into R, run 'read.table("Tidied_Data.txt", header = TRUE)' with 'Tidied_Data.txt' in the working directory.
