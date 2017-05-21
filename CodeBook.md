## Code Book for 'Tidied_Data.csv'

### The following steps were performed to create the 'Tidied_Data.csv' file:
 
* Changed the variable names in 'x_test.txt' and 'x_train.txt' to the list of features in features.txt'.
* Changed the variable name in 'y_test.txt' and 'y_train.txt' to 'activity'.
* Changed the variable name in 'subject_test.txt' and 'subject_train.txt' to 'subject'.
* Combined all test and train data into a single dataset.
* Converted all variable names to lowercase with no dots, per the week 4 'Editing Text Variables' lecture.
* Changed all activities factor names from numbers to the descriptive names in 'activity_labels.txt'.
* Extracted all mean and standard deviation columns.
* Calculated the average of all mean and standard deviation variables for all subjects and activities.
	
### 'Tidied_Data.csv' contains the factors 'subject' and 'activity', and the following variables:
	
* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodyaccmagmean
* tgravityaccmagmean
* tbodyaccjerkmagmean
* tbodygyromagmean
* tbodygyrojerkmagmean
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz
* fbodyaccmagmean
* fbodyaccmagmeanfreq
* fbodyaccjerkmagmean
* fbodyaccjerkmagmeanfreq
* fbodygyromagmean
* fbodygyromagmeanfreq
* fbodygyrojerkmagmean
* fbodygyrojerkmagmeanfreq
* angletbodyaccmeangravity
* angletbodyaccjerkmeangravitymean
* angletbodygyromeangravitymean
* angletbodygyrojerkmeangravitymean
* anglexgravitymean
* angleygravitymean
* anglezgravitymean
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodyaccmagstd
* tgravityaccmagstd
* tbodyaccjerkmagstd
* tbodygyromagstd
* tbodygyrojerkmagstd
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* fbodyaccmagstd
* fbodyaccjerkmagstd
* fbodygyromagstd
* fbodygyrojerkmagstd
