# CodeBook.md
## This file describes the variables, data and the transformations those performed for getting and cleaning data

### Variable Names
The following expansions of abbreviations were used to give the descriptive variable names for the data that contained only mean and standard deviation of any measurement   
These expansions were borrowed from the codebook that was provided with the data.
		* t					time domain
		* Acc				acceleration
		* X					X axis of the phone
		* Y					Y axis of the phone
		* Z 				Z axis of the phone
		* Gyro 				angular velocity
		* Mag 				magnitude
		* f 				frequency domain
		* meanFreq			weighted
		* std 				standard deviation

### Descriptive Variable Names for the data_mean_std (see README.md and run.analysis.R)



		1.	"tBodyAcc-mean()-X"                               	mean of body acceleration in the time domain on the X axis of the phone
		2.	"tBodyAcc-mean()-Y"                                	mean of body acceleration in the time domain on the Y axis of the phone
		3. 	"tBodyAcc-mean()-Z"                                	mean of body acceleration in the time domain on the Z axis of the phone
		4.	"tGravityAcc-mean()-X"                           	mean of gravity acceleration in the time domain on the X axis of the phone
		5.	"tGravityAcc-mean()-Y"                           	mean of gravity acceleration in the time domain on the Y axis of the phone
		6.	"tGravityAcc-mean()-Z"                           	mean of gravity acceleration in the time domain on the Z axis of the phone
		7. 	"tBodyAccJerk-mean()-X"                       		mean of jerk of the body acceleration in the time domain on the X axis of the phone
		8.	"tBodyAccJerk-mean()-Y"                       		mean of jerk of the body acceleration in the time domain on the Y axis of the phone
		9.	"tBodyAccJerk-mean()-Z"                       		mean of jerk of the body acceleration in the time domain on the Z axis of the phone
		10.	"tBodyGyro-mean()-X"                             	mean of body angular velociy in the time domain on the X axis of the phone
		11.	"tBodyGyro-mean()-Y"                             	mean of body angular velociy in the time domain on the Y axis of the phone
		12.	"tBodyGyro-mean()-Z"                             	mean of body angular velociy in the time domain on the Z axis of the phone
		13.	"tBodyGyroJerk-mean()-X"                    		mean of jerk of the body angular velociy in the time domain on the X axis of the phone
		14.	"tBodyGyroJerk-mean()-Y"                     		mean of jerk of the body angular velociy in the time domain on the Y axis of the phone
		15.	"tBodyGyroJerk-mean()-Z"                     		mean of jerk of the body angular velociy in the time domain on the Z axis of the phone
		16.	"tBodyAccMag-mean()"                           		mean of body acceleration magnitude in the time domain
		17.	"tGravityAccMag-mean()"                       		mean of gravity acceleration magnitude in the time domain
		18.	"tBodyAccJerkMag-mean()"                            mean of body acceleration jerk magnitude in the time domain
		19.	"tBodyGyroMag-mean()"                             	mean of body angular velocity magnitude in the time domain
		20.	"tBodyGyroJerkMag-mean()"                           mean of body angular velocity jerk magnitude in the time domain
		21.	"fBodyAcc-mean()-X"                                	mean of body acceleration in the frequency domain on the X axis of the phone
		22.	"fBodyAcc-mean()-Y"                                	mean of body acceleration in the frequency domain on the Y axis of the phone
		23.	"fBodyAcc-mean()-Z"                                	mean of body acceleration in the frequency domain on the Z axis of the phone
		24.	"fBodyAcc-meanFreq()-X"                             weighted average of the frequency components of body acceleration in the frequency domain on the X axis of the phone
		25.	"fBodyAcc-meanFreq()-Y"                             weighted average of the frequency components of body acceleration in the frequency domain on the Y axis of the phone
		26. "fBodyAcc-meanFreq()-Z"                             weighted average of the frequency components of body acceleration in the frequency domain on the Z axis of the phone
		27.	"fBodyAccJerk-mean()-X"                             mean of the jerk of the body acceleration in the frequency domain on the X axis of the phone
		28.	"fBodyAccJerk-mean()-Y"                             mean of the jerk of the body acceleration in the frequency domain on the Y axis of the phone
		29.	"fBodyAccJerk-mean()-Z"                             mean of the jerk of the body acceleration in the frequency domain on the Z axis of the phone
		30.	"fBodyAccJerk-meanFreq()-X"                      	weighted average of the frequency components of body acceleration jerk in the frequency domain on the X axis of the phone
		31.	"fBodyAccJerk-meanFreq()-Y"                       	weighted average of the frequency components of body acceleration jerk in the frequency domain on the Y axis of the phone
		32.	"fBodyAccJerk-meanFreq()-Z"                      	weighted average of the frequency components of body acceleration jerk in the frequency domain on the Z axis of the phone
		33.	"fBodyGyro-mean()-X"                             	mean of body angular velocity in the frequency domain on the X axis of the phone
		34.	"fBodyGyro-mean()-Y"                             	mean of body angular velocity in the frequency domain on the Y axis of the phone
		35. "fBodyGyro-mean()-Z"                             	mean of body angular velocity in the frequency domain on the Z axis of the phone
		36. "fBodyGyro-meanFreq()-X"							weighted average of the frequency components of body angular velocity in the frequency domain on the X axis of the phone
		37. "fBodyGyro-meanFreq()-Y"                            weighted average of the frequency components of body angular velocity in the frequency domain on the Y axis of the phone
		38. "fBodyGyro-meanFreq()-Z"                            weighted average of the frequency components of body angular velocity in the frequency domain on the Z axis of the phone
		39. "fBodyAccMag-mean()"                               	mean of body acceleration magnitude in the frequency domain
		40. "fBodyAccMag-meanFreq()"                         	weighted average of the frequency components of the body acceleration magnitude in the frequency domain
		41. "fBodyBodyAccJerkMag-mean()"                        mean of jerk of  body body acceleration magnitude in the frequency domain
		42. "fBodyBodyAccJerkMag-meanFreq()"                    weighted average of the frequency components  of jerk of  body body acceleration magnitude in the frequency domain
		43. "fBodyBodyGyroMag-mean()"                           mean of  body body angular velocity magnitude in the frequency domain
		44. "fBodyBodyGyroMag-meanFreq()"                       Weighted average of the frequency components  of  body body acceleration magnitude in the frequency domain
		45. "fBodyBodyGyroJerkMag-mean()"                       mean of jerk of  body body angular velocity magnitude in the frequency domain
		46. "fBodyBodyGyroJerkMag-meanFreq()"                   Weighted average of the frequency components  of jerk of  body body angular velocity magnitude in the frequency domain
		47. "tBodyAcc-std()-X"                                  standard deviation of body acceleration in the time domain on the X axis of the phone
		48.	"tBodyAcc-std()-Y"                                  standard deviation of body acceleration in the time domain on the Y axis of the phone
		49.	"tBodyAcc-std()-Z"                                  standard deviation of body acceleration in the time domain on the Z axis of the phone
		50. "tGravityAcc-std()-X"                               standard deviation of gravity acceleration in the time domain on the X axis of the phone
		51.	"tGravityAcc-std()-Y"                               standard deviation of gravity acceleration in the time domain on the Y axis of the phone
		52.	"tGravityAcc-std()-Z"                               standard deviation of gravity acceleration in the time domain on the Z axis of the phone
		53.	"tBodyAccJerk-std()-X"                            	standard deviation of jerk of the body acceleration in the time domain on the X axis of the phone
		54. "tBodyAccJerk-std()-Y"                             	standard deviation of jerk of the body acceleration in the time domain on the Y axis of the phone
		55. "tBodyAccJerk-std()-Z"                             	standard deviation of jerk of the body acceleration in the time domain on the Z axis of the phone
		56. "tBodyGyro-std()-X"                                 standard deviation of body angular velocity in the time domain on the X axis of the phone
		57. "tBodyGyro-std()-Y"                                 standard deviation of body angular velocity in the time domain on the Y axis of the phone
		58. "tBodyGyro-std()-Z"                                 standard deviation of body angular velocity in the time domain on the Z axis of the phone
		59.	"tBodyGyroJerk-std()-X"                          	standard deviation of jerk of the body angular velocity in the time domain on the X axis of the phone
		60.	"tBodyGyroJerk-std()-Y"                          	standard deviation of jerk of the body angular velocity in the time domain on the Y axis of the phone
		61	"tBodyGyroJerk-std()-Z"                          	standard deviation of jerk of the body angular velocity in the time domain on the Z axis of the phone
		62. "tBodyAccMag-std()"                                	standard deviation of body acceleration magnitude in the time domain
		63.	"tGravityAccMag-std()"                            	standard deviation of gravity acceleration magnitude in the time domain
		64. "tBodyAccJerkMag-std()"                        		standard deviation of  the jerk of body acceleration magnitude in the time domain
		65. "tBodyGyroMag-std()"                              	standard deviation of body angular velocity magnitude in the time domain
		66. "tBodyGyroJerkMag-std()"                     		standard deviation of  the jerk of body angular velocity magnitude in the time domain
		67. "fBodyAcc-std()-X"                                  standard deviation of body acceleration in the frequency domain on the X axis of the phone
		68. "fBodyAcc-std()-Y"                                  standard deviation of body acceleration in the frequency domain on the Y axis of the phone
		69. "fBodyAcc-std()-Z"                                  standard deviation of body acceleration in the frequency domain on the Z axis of the phone
		70. "fBodyAccJerk-std()-X"                            	standard deviation of the jerk of the body acceleration in the frequency domain on the X axis of the phone
		71. "fBodyAccJerk-std()-Y"                             	standard deviation of the jerk of the body acceleration in the frequency domain on the Y axis of the phone
		72. "fBodyAccJerk-std()-Z"                             	standard deviation of the jerk of the body acceleration in the frequency domain on the Z axis of the phone
		73. "fBodyGyro-std()-X"                                 standard deviation of body angular velocity in the frequency domain on the X axis of the phone
		74. "fBodyGyro-std()-Y"                                 standard deviation of body angular velocity in the frequency domain on the Y axis of the phone
		75. "fBodyGyro-std()-Z"                                 standard deviation of body angular velocity in the frequency domain on the Z axis of the phone
		76. "fBodyAccMag-std()"                                	standard deviation of body acceleration magnitude in the frequency domain
		77. "fBodyBodyAccJerkMag-std()"              			standard deviation of jerk of body acceleration magnitude in the frequency domain
		78. "fBodyBodyGyroMag-std()"                   			standard deviation of body angular velocity magnitude in the frequency domain
		79. "fBodyBodyGyroJerkMag-std()"           				standard deviation jerk of body angular velocity magnitude in the frequency domain

		
* The above descriptive variables were stored in excel file and saved as column names.csv in the working directory to use it in getting and cleaning data (see README.md and run_analysis.R).
* Purposefully removed the data that measured angle, which is not a mean of any measurement.
* For the final tidy data a separate column names used, which has "average" as a prefix to every variable name in averagecolumn names.csv.
* The column names for the final tidy data were stored in a excel and saved as avgcolumn names.csv in the working directory.