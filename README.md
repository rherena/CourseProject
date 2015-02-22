### Read me on R scripts

Run_analysis.R will create 3 things.

1st it will download and unzip the dataset specified in the link within the code. the UCI HAR dataset.

Second it will create 2 files. MergedDataSet_Full and SummarizedFinal data set.

the first file (MergedDataSet_Full) is a flat file with variable names as columns and variable categories as columns. 

This merges the training and test data sets and applys column headers to mean and std values.

The second set is SummarizedFinal.txt 

This takes the first set and melts it into a tall skinny data set with 2 categories: participants and activity types. it also has variable name column and an average value column.

The variable names will correspond to the data set mean and std dev variables, with the value column or averagevalue being the average of the variable within each participant and activity type.

IE variable A average values values for the subset participant B with activity type Z.

Please see the Codebook.md for a description of the variable names. 
