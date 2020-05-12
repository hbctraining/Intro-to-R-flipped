# Day 3 Activities

## Reading in and inspecting data

1. Download the [animals.csv](https://raw.githubusercontent.com/hbctraining/Intro-to-R-flipped/master/data/animals.csv), by right-clicking on the link and "Save Link As..." to place the file into the `data` directory.
2. Read the csv file into your environment and assign it to a variable called `animals`. Be sure to check that your row names are the different animals.
3. Check to make sure that `animals` is a dataframe.
4. How many rows are in the `animals` dataframe? How many columns?


## Data wrangling

1. Extract the `speed` value of 40 km/h from the `animals` dataframe.
2. Return the rows with animals that are the `color` Tan.
3. Return the rows with animals that have `speed` greater than 50 km/h and output only the `color` column. Keep the output as a data frame.  
4. Change the color of "Grey" to "Gray". 
5. Create a list called `animals_list` in which the first element contains the speed column of the `animals` dataframe and the second element contains the color column of the `animals` dataframe. 
6. Give each element of your list the appropriate name (i.e speed and color).

## The %in% operator

1. In your environment you should have a dataframe called `proj_summary` which contains quality metric information for an RNA-seq dataset. We have the sample IDs listed below for the control samples only. Copy and paste the code below to create a vector of control sample names:

`ctrl_samples <- c("sample3", "sample7", "sample9", "sample10", "sample15")`

2. Do we we have quality metrics for all of the control samples in our `proj_summary` dataframe? Use the %in% operator to check.
3. Keep only the rows in `proj_summary` which correspond to control samples. Do this with the %in% operator and without. Save it to a variable called `proj_summary_ctrl`.
