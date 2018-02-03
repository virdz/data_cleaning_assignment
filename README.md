# data_cleaning_assignment

The repository contains these files:
* run_analysis.R
* this README.md

## run_analysis.R
This script is divided into 
* Initialization,
* Extraction,
* Transformation and
* several filtrations

### Initialization
Here was the wd to set to the current directory, load the required librarys and remove everything from the environment.
### Extraction
all required data was loaded by read.table function (default params). For the DFs activitylables and featurenames were speaking columnn names given.
### Transformation
The DFs were merged without an ID. The parts are just putted asside and unioned into one DF 'step1'.
### Filtrations
The first filtration selects the features containing the means and standard deviation of the raw features and puts the data into DF 'step2'
After that filtration it was to map the codes for activity with the lables in the mapping file.
The second filtration 
