# Getting and Cleaning Data: Code Book #

See README.md for instructions to create these two datasets.

## samsungData ##
Each row in this table is one observation and contains 68 columns.

The variables in each row are:  
Subject - A numeric value from 1 to 30 denoting the volunteer whose movement is recorded in the row.  
Activity - A character value in c("WALKING","WALKING\_UPSTAIRS","WALKING\_DOWNSTAIRS","SITTING","STANDING","LAYING")  
The remaining variables in the table are as follows. They are explained in the code book for the raw data. In all cases the values are numeric values in the range [-1,1].
<table>
<tr><td>Variable</td><td>Feature name in raw data</td><td>Column index in raw data</td></tr>
<tr><td>tBodyAcc.mean...X</td><td>tBodyAcc-mean()-X</td><td>1</td></tr>/
<tr><td>tBodyAcc.mean...Y</td><td>tBodyAcc-mean()-Y</td><td>2</td></tr>/
<tr><td>tBodyAcc.mean...Z</td><td>tBodyAcc-mean()-Z</td><td>3</td></tr>/
<tr><td>tBodyAcc.std...X</td><td>tBodyAcc-std()-X</td><td>4</td></tr>/
<tr><td>tBodyAcc.std...Y</td><td>tBodyAcc-std()-Y</td><td>5</td></tr>/
<tr><td>tBodyAcc.std...Z</td><td>tBodyAcc-std()-Z</td><td>6</td></tr>/
<tr><td>tGravityAcc.mean...X</td><td>tGravityAcc-mean()-X</td><td>41</td></tr>/
<tr><td>tGravityAcc.mean...Y</td><td>tGravityAcc-mean()-Y</td><td>42</td></tr>/
<tr><td>tGravityAcc.mean...Z</td><td>tGravityAcc-mean()-Z</td><td>43</td></tr>/
<tr><td>tGravityAcc.std...X</td><td>tGravityAcc-std()-X</td><td>44</td></tr>/
<tr><td>tGravityAcc.std...Y</td><td>tGravityAcc-std()-Y</td><td>45</td></tr>/
<tr><td>tGravityAcc.std...Z</td><td>tGravityAcc-std()-Z</td><td>46</td></tr>/
<tr><td>tBodyAccJerk.mean...X</td><td>tBodyAccJerk-mean()-X</td><td>81</td></tr>/
<tr><td>tBodyAccJerk.mean...Y</td><td>tBodyAccJerk-mean()-Y</td><td>82</td></tr>/
<tr><td>tBodyAccJerk.mean...Z</td><td>tBodyAccJerk-mean()-Z</td><td>83</td></tr>/
<tr><td>tBodyAccJerk.std...X</td><td>tBodyAccJerk-std()-X</td><td>84</td></tr>/
<tr><td>tBodyAccJerk.std...Y</td><td>tBodyAccJerk-std()-Y</td><td>85</td></tr>/
<tr><td>tBodyAccJerk.std...Z</td><td>tBodyAccJerk-std()-Z</td><td>86</td></tr>/
<tr><td>tBodyGyro.mean...X</td><td>tBodyGyro-mean()-X</td><td>121</td></tr>/
<tr><td>tBodyGyro.mean...Y</td><td>tBodyGyro-mean()-Y</td><td>122</td></tr>/
<tr><td>tBodyGyro.mean...Z</td><td>tBodyGyro-mean()-Z</td><td>123</td></tr>/
<tr><td>tBodyGyro.std...X</td><td>tBodyGyro-std()-X</td><td>124</td></tr>/
<tr><td>tBodyGyro.std...Y</td><td>tBodyGyro-std()-Y</td><td>125</td></tr>/
<tr><td>tBodyGyro.std...Z</td><td>tBodyGyro-std()-Z</td><td>126</td></tr>/
<tr><td>tBodyGyroJerk.mean...X</td><td>tBodyGyroJerk-mean()-X</td><td>161</td></tr>/
<tr><td>tBodyGyroJerk.mean...Y</td><td>tBodyGyroJerk-mean()-Y</td><td>162</td></tr>/
<tr><td>tBodyGyroJerk.mean...Z</td><td>tBodyGyroJerk-mean()-Z</td><td>163</td></tr>/
<tr><td>tBodyGyroJerk.std...X</td><td>tBodyGyroJerk-std()-X</td><td>164</td></tr>/
<tr><td>tBodyGyroJerk.std...Y</td><td>tBodyGyroJerk-std()-Y</td><td>165</td></tr>/
<tr><td>tBodyGyroJerk.std...Z</td><td>tBodyGyroJerk-std()-Z</td><td>166</td></tr>/
<tr><td>tBodyAccMag.mean</td><td>tBodyAccMag-mean()</td><td>201</td></tr>/
<tr><td>tBodyAccMag.std</td><td>tBodyAccMag-std()</td><td>202</td></tr>/
<tr><td>tGravityAccMag.mean</td><td>tGravityAccMag-mean()</td><td>214</td></tr>/
<tr><td>tGravityAccMag.std</td><td>tGravityAccMag-std()</td><td>215</td></tr>/
<tr><td>tBodyAccJerkMag.mean</td><td>tBodyAccJerkMag-mean()</td><td>227</td></tr>/
<tr><td>tBodyAccJerkMag.std</td><td>tBodyAccJerkMag-std()</td><td>228</td></tr>/
<tr><td>tBodyGyroMag.mean</td><td>tBodyGyroMag-mean()</td><td>240</td></tr>/
<tr><td>tBodyGyroMag.std</td><td>tBodyGyroMag-std()</td><td>241</td></tr>/
<tr><td>tBodyGyroJerkMag.mean</td><td>tBodyGyroJerkMag-mean()</td><td>253</td></tr>/
<tr><td>tBodyGyroJerkMag.std</td><td>tBodyGyroJerkMag-std()</td><td>254</td></tr>/
<tr><td>fBodyAcc.mean...X</td><td>fBodyAcc-mean()-X</td><td>266</td></tr>/
<tr><td>fBodyAcc.mean...Y</td><td>fBodyAcc-mean()-Y</td><td>267</td></tr>/
<tr><td>fBodyAcc.mean...Z</td><td>fBodyAcc-mean()-Z</td><td>268</td></tr>/
<tr><td>fBodyAcc.std...X</td><td>fBodyAcc-std()-X</td><td>269</td></tr>/
<tr><td>fBodyAcc.std...Y</td><td>fBodyAcc-std()-Y</td><td>270</td></tr>/
<tr><td>fBodyAcc.std...Z</td><td>fBodyAcc-std()-Z</td><td>271</td></tr>/
<tr><td>fBodyAccJerk.mean...X</td><td>fBodyAccJerk-mean()-X</td><td>345</td></tr>/
<tr><td>fBodyAccJerk.mean...Y</td><td>fBodyAccJerk-mean()-Y</td><td>346</td></tr>/
<tr><td>fBodyAccJerk.mean...Z</td><td>fBodyAccJerk-mean()-Z</td><td>347</td></tr>/
<tr><td>fBodyAccJerk.std...X</td><td>fBodyAccJerk-std()-X</td><td>348</td></tr>/
<tr><td>fBodyAccJerk.std...Y</td><td>fBodyAccJerk-std()-Y</td><td>349</td></tr>/
<tr><td>fBodyAccJerk.std...Z</td><td>fBodyAccJerk-std()-Z</td><td>350</td></tr>/
<tr><td>fBodyGyro.mean...X</td><td>fBodyGyro-mean()-X</td><td>424</td></tr>/
<tr><td>fBodyGyro.mean...Y</td><td>fBodyGyro-mean()-Y</td><td>425</td></tr>/
<tr><td>fBodyGyro.mean...Z</td><td>fBodyGyro-mean()-Z</td><td>426</td></tr>/
<tr><td>fBodyGyro.std...X</td><td>fBodyGyro-std()-X</td><td>427</td></tr>/
<tr><td>fBodyGyro.std...Y</td><td>fBodyGyro-std()-Y</td><td>428</td></tr>/
<tr><td>fBodyGyro.std...Z</td><td>fBodyGyro-std()-Z</td><td>429</td></tr>/
<tr><td>fBodyAccMag.mean</td><td>fBodyAccMag-mean()</td><td>503</td></tr>/
<tr><td>fBodyAccMag.std</td><td>fBodyAccMag-std()</td><td>504</td></tr>/
<tr><td>fBodyBodyAccJerkMag.mean</td><td>fBodyBodyAccJerkMag-mean()</td><td>516</td></tr>/
<tr><td>fBodyBodyAccJerkMag.std</td><td>fBodyBodyAccJerkMag-std()</td><td>517</td></tr>/
<tr><td>fBodyBodyGyroMag.mean</td><td>fBodyBodyGyroMag-mean()</td><td>529</td></tr>/
<tr><td>fBodyBodyGyroMag.std</td><td>fBodyBodyGyroMag-std()</td><td>530</td></tr>/
<tr><td>fBodyBodyGyroJerkMag.mean</td><td>fBodyBodyGyroJerkMag-mean()</td><td>542</td></tr>/
<tr><td>fBodyBodyGyroJerkMag.std</td><td>fBodyBodyGyroJerkMag-std()</td><td>543</td></tr>/
</table>


## samsungMeans ##
Each row in this table is the average of all values in samsungData that share the same Subject and Activity. Each row contains 68 columns. No two rows have the same values for both Subject and Activity.

The variables in each row are the same as for samsungData (above).

