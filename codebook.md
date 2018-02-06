# code book

Content of the code book is the description of the used variables in the script run_analysis.R 
## variables
### Storage variables for reading issues
test.x - read data from file X_test.txt

test.y - read data from file Y_test.txt

train.y - read data from file X_train.txt

train.x - read data from file Y_train.txt

train.subject - read data from file subject_train.txt

test.subject - read data from file subject_test.txt

activitylables - read data from file activity_lables.txt

featurenames - read data from file features.txt

### Variables for merging issues
test - temporary DF for merging the test data

train - temporary DF for merging the training data

### working vriable
data - working dataset; just for working issues

### solutions of the subtasks
step1 - solution of the first instruction

step2 - solution of the second instruction

step3 - solution of the third instruction

step4 - solution of the fourth instruction

##functions

for clearing the workspace I used rm() and ls()

for reading the date I used read.table() because the default settings were perfect for the inputfiles

for merging the DFs I used data.frame() for putting DFs beside (oter way could be cbind()) and union() to put them under each other

for searching a pattern into a vector of characters I used grepl()

for replacing a pattern I used gsub()

for calculating means I used aggregate() (oter way could be first split(), then a nested sapply())

write.table() for output