## The dataset includes the following files:

* 'README.md'
* 'Tidied_Data.csv': The average of all mean and standard deviation variables for all subjects and activities.
* 'CodeBook.md': The steps taken to create 'Tidied_Data' and a list of all variables.
* 'run_analysis.R': The script to create 'Tidied_Data.csv' from the original files.
	

## For each record, the following is provided:

* An identifier of the subject who carried out the experiment.
* The name of the activity. 
* An 88-variable vector with the average of all mean and standard deviation variables from the combined 'x_test.txt' and 'x_train.txt' data for all subjects and activities.
	
## Notes:

* The original files must be in the working directory to run 'run_analysis.R'.
* To read 'Tidied_Data.csv' into R, run 'read.table("Tidied_Data.csv", header = TRUE, sep = ",")' with 'Tidied_Data.csv' in the working directory.
