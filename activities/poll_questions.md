## Introduction to R and RStudio (RSK)

## R Syntax and Data Structure (MP)

1. Which statement is FALSE regarding vectors?
    - Vectors are created using the combine function (`c()`)
    - Vectors can only have values of a single data type
    - There is no limit to the number of elements in a vector
    - **Vectors are two-dimensional objects**
    - Variables in your environment can be vectors

1. Which statement is FALSE regarding data frames?
    - **Data frames can only have values of a single data type**
    - Data frames are created by combining together vectors/factors into the columns of the data frame using the `data.frame()` function
    - Data frames are two-dimensional objects
    - There is no limit to the number of rows/columns in a data frame
    - Variables in your environment can be data frames

## Functions and Arguments (MP)

1. The `grep()` function searches for characters or a pattern within each element of a character vector. Which argument for the `grep()` function can we change if we want the matching elements in the vector returned rather than the indices for the matching elements?
    - `pattern`
    - `x`
    - `ignore.case`
    - `perl`
    - **`value`**
    - `fixed`
    
## Reading in and inspecting data (RSK)

## Data Wrangling: Subsetting Vectors and Factors (RSK)

## Packages and libraries (JHL)
1. (**True** or False) If you exit the Rstudio environment, reopen it, and check sessionInfo(), libraries that were loaded in the previous previous session will not show up.

## Data wrangling: data frames, matrices and lists (MP)

1. In the metadata data frame has the following features:

    * The output of `colnames(metadata)` is: `[1] "genotype" "celltype" "replicate"`
    * The output of `rownames(metadata)` is: `[1] "sample1" "sample2" "sample3" "sample4" "sample5" "sample6" "sample7" "sample8" "sample9" "sample10" "sample11" "sample12"`
        
   Which of the following code lines does NOT return the element in the 3rd row and 1st column?
    
    - `metadata$genotype[3]`
    - **`metadata[1, 3]`**
    - `metadata["sample3", "genotype"]`
    - `metadata[rownames(metadata) == "sample3", colnames(metadata) == "genotype"]`
  
  
## The %in% operator (MP)

1. We have two data frames, and  we want to extract the columns from `df1` with the column names that are present in the row names of `df2`. Which code below would achieve this?

    - `df1[df1 %in% df2]`
    - `df2[ , rownames(df2) %in% colnames(df1)]`
    - `df1[ , rownames(df2) %in% colnames(df1)]`
    - `colnames(df2)[rownames(df2) %in% colnames(df1)]`
    - `colnames(df1)[rownames(df2) %in% colnames(df1)]`
    - **`df1[ , colnames(df1) %in% rownames(df2)]`**
    - `df2[ , colnames(df1) %in% rownames(df2)]`
    - `df1[colnames(df1) %in% rownames(df2), ]`
    - `df2[colnames(df1) %in% rownames(df2), ]`
    - `df1[df2 %in% df1]`
  
    
## Reordering and matching (MP)

1. We have the two vectors: x and y, which are given below.
    * x <- c(4, 8, 6, 10, 2)
    * y <- c(8, 5, 9, 2, 4, 7, 10, 6)

    Which code would reorder `y` to match the order of `x`?
    
    - **`y[c(5,1,8,7,4)]`**
    - `y[c(2,NA,NA,5,1,NA,4,3)]`
    - `y[c(4,8,6,10,2)]`
    - `y[5,1,8,7,4]`
    - `match(y,x)`
    - `y[2,NA,NA,5,1,NA,4,3]`
    - `y[4,8,6,10,2]`

## Setting up a data frame to plot (+ the map() function) (RSK)

## Plotting with the ggplot2 package (RSK)

## Using custom functions for consistent plots (JHL)

## Generating a boxplot with ggplot2 (RSK)

## Writing to file and exporting plots (RSK)

## Finding help (JHL)
1. Which of the following is **NOT** the best practice when finding help:
    - Include sessionInfo() output
    - Attach a representative, yet smaller dataset if needed
    - Be precise about the terminology
    - **Post the question online without checking previous solutions**
