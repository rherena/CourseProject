### Notes for project 1


'features.txt': List of all features.

Features has mean and std dev names in the data. 

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

'activity_labels.txt': Links the class labels with their activity name.

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The created data sets MergedDataSet_Full and SummarizedFinal will have the activity types named in text. 

the run_analysis.R will create a featuresnames variable which breaks the full list of 561 variables into the subset of mean and std dev values equating to roughly 68 variable types.
Full list pasted below: 


NumberLocation        FeatureMeasurement	measuredvalue	measuretype
1	1	tBodyAcc-mean()-X	tBodyAcc	mean()
2	2	tBodyAcc-mean()-Y	tBodyAcc	mean()
3	3	tBodyAcc-mean()-Z	tBodyAcc	mean()
4	4	tBodyAcc-std()-X	tBodyAcc	std()
5	5	tBodyAcc-std()-Y	tBodyAcc	std()
6	6	tBodyAcc-std()-Z	tBodyAcc	std()
7	41	tGravityAcc-mean()-X	tGravityAcc	mean()
8	42	tGravityAcc-mean()-Y	tGravityAcc	mean()
9	43	tGravityAcc-mean()-Z	tGravityAcc	mean()
10	44	tGravityAcc-std()-X	tGravityAcc	std()
11	45	tGravityAcc-std()-Y	tGravityAcc	std()
12	46	tGravityAcc-std()-Z	tGravityAcc	std()
13	81	tBodyAccJerk-mean()-X	tBodyAccJerk	mean()
14	82	tBodyAccJerk-mean()-Y	tBodyAccJerk	mean()
15	83	tBodyAccJerk-mean()-Z	tBodyAccJerk	mean()
16	84	tBodyAccJerk-std()-X	tBodyAccJerk	std()
17	85	tBodyAccJerk-std()-Y	tBodyAccJerk	std()
18	86	tBodyAccJerk-std()-Z	tBodyAccJerk	std()
19	121	tBodyGyro-mean()-X	tBodyGyro	mean()
20	122	tBodyGyro-mean()-Y	tBodyGyro	mean()
21	123	tBodyGyro-mean()-Z	tBodyGyro	mean()
22	124	tBodyGyro-std()-X	tBodyGyro	std()
23	125	tBodyGyro-std()-Y	tBodyGyro	std()
24	126	tBodyGyro-std()-Z	tBodyGyro	std()
25	161	tBodyGyroJerk-mean()-X	tBodyGyroJerk	mean()
26	162	tBodyGyroJerk-mean()-Y	tBodyGyroJerk	mean()
27	163	tBodyGyroJerk-mean()-Z	tBodyGyroJerk	mean()
28	164	tBodyGyroJerk-std()-X	tBodyGyroJerk	std()
29	165	tBodyGyroJerk-std()-Y	tBodyGyroJerk	std()
30	166	tBodyGyroJerk-std()-Z	tBodyGyroJerk	std()
31	201	tBodyAccMag-mean()	tBodyAccMag	mean()
32	202	tBodyAccMag-std()	tBodyAccMag	std()
33	214	tGravityAccMag-mean()	tGravityAccMag	mean()
34	215	tGravityAccMag-std()	tGravityAccMag	std()
35	227	tBodyAccJerkMag-mean()	tBodyAccJerkMag	mean()
36	228	tBodyAccJerkMag-std()	tBodyAccJerkMag	std()
37	240	tBodyGyroMag-mean()	tBodyGyroMag	mean()
38	241	tBodyGyroMag-std()	tBodyGyroMag	std()
39	253	tBodyGyroJerkMag-mean()	tBodyGyroJerkMag	mean()
40	254	tBodyGyroJerkMag-std()	tBodyGyroJerkMag	std()
41	266	fBodyAcc-mean()-X	fBodyAcc	mean()
42	267	fBodyAcc-mean()-Y	fBodyAcc	mean()
43	268	fBodyAcc-mean()-Z	fBodyAcc	mean()
44	269	fBodyAcc-std()-X	fBodyAcc	std()
45	270	fBodyAcc-std()-Y	fBodyAcc	std()
46	271	fBodyAcc-std()-Z	fBodyAcc	std()
47	345	fBodyAccJerk-mean()-X	fBodyAccJerk	mean()
48	346	fBodyAccJerk-mean()-Y	fBodyAccJerk	mean()
49	347	fBodyAccJerk-mean()-Z	fBodyAccJerk	mean()
50	348	fBodyAccJerk-std()-X	fBodyAccJerk	std()
51	349	fBodyAccJerk-std()-Y	fBodyAccJerk	std()
52	350	fBodyAccJerk-std()-Z	fBodyAccJerk	std()
53	424	fBodyGyro-mean()-X	fBodyGyro	mean()
54	425	fBodyGyro-mean()-Y	fBodyGyro	mean()
55	426	fBodyGyro-mean()-Z	fBodyGyro	mean()
56	427	fBodyGyro-std()-X	fBodyGyro	std()
57	428	fBodyGyro-std()-Y	fBodyGyro	std()
58	429	fBodyGyro-std()-Z	fBodyGyro	std()
59	503	fBodyAccMag-mean()	fBodyAccMag	mean()
60	504	fBodyAccMag-std()	fBodyAccMag	std()
61	516	fBodyBodyAccJerkMag-mean()	fBodyBodyAccJerkMag	mean()
62	517	fBodyBodyAccJerkMag-std()	fBodyBodyAccJerkMag	std()
63	529	fBodyBodyGyroMag-mean()	fBodyBodyGyroMag	mean()
64	530	fBodyBodyGyroMag-std()	fBodyBodyGyroMag	std()
65	542	fBodyBodyGyroJerkMag-mean()	fBodyBodyGyroJerkMag	mean()
66	543	fBodyBodyGyroJerkMag-std()	fBodyBodyGyroJerkMag	std()