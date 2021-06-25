## Introduction to R and RStudio (RSK)

## R Syntax and Data Structure (MP)

1. Which statement is FALSE regarding vectors?
    - Vectors are created using the combine function (`c()`)
    - Vectors can only have values of a single data type
    - There is no limit to the number of elements in a vector
    - **Vectors are two-dimensional objects**
    - Variables in your environment can be vectors

1. Which statement is FALSE regarding data frames?
    - **Data frames can only have values of single data type**
    - Data frames are created by combining together vectors/factors into the columns of the data frame
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

## Data wrangling: data frames, matrices and lists (MP)

1. In the metadata data frame has the following features:

        * The output of `colnames(metadata)` is: `[1] "genotype" "celltype" "replicate"`
        * The output of `rownames(metadata)` is: `[1] "sample1" "sample2" "sample3" "sample4" "sample5" "sample6" "sample7" "sample8" "sample9" "sample10" "sample11" "sample12"`
        
   Which of the following code lines does NOT return the element in the 3rd row and 1st column?
    
    - `metadata$genotype[3]`
    - `metadata[1, 3]
    - `metadata["sample3", "genotype"]
    - `metadata[rownames(metadata) == "sample3", colnames(metadata) == "genotype"]
  
  
## The %in% operator (MP)

## Reordering and matching (MP)

## Setting up a data frame to plot (+ the map() function) (RSK)

## Plotting with the ggplot2 package (RSK)

## Using custom functions for consistent plots (JHL)

## Generating a boxplot with ggplot2 (RSK)

## Writing to file and exporting plots (RSK)

## Finding help (JHL)
