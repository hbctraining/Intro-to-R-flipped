## Introduction to R and RStudio (RSK)

1. Which of the following panels in the RStudio interface directly communicate with R? 
    - **the console**
    - the script editor
    - **the environment**
    - the files tab

1. The command prompt is represented by which symbol?
    - %
    - $
    - >
    - #

1. If you run an incomplete line of code, the command prompt in the Console will change to something else. What is it?
    - *
    - –
    - **+**
    - /

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
1. Which of these functions will output the data type of a vector or the data structure of a non-vector object? (select all that apply)
    - **class()**
    - **str()**
    - summary()
    - dim()

1. What is the data structure output by colnames() or rownames()?
    - list
    - data frame
    - **vector**
    - matrix

## Data Wrangling: Subsetting Vectors and Factors (RSK)
1. Given a vector `bike <- c("B", "I", "C", "Y", "C", "L", "E")`
   
   What is the exact output of `bike[3:7`]?
   
   - CYCLE
   - **[1] "C" "Y" "C" "L" "E"**
   - [3] "C" "Y" "C" "L" "E"
   - [1] FALSE FALSE TRUE TRUE TRUE TRUE TRUE

1. Given a vector `bike <- c("B", "I", "C", "Y", "C", "L", "E")`
   
   What is the exact output of `bike == "C"`?
   
    - [1] "C" "C"   
    - **[1] FALSE FALSE TRUE FALSE TRUE FALSE FALSE**
    - "C" "C"
    - [1] 3 5

1. Given a vector `bike <- c("B", "I", "C", "Y", "C", "L", "E")`
   
   What is the exact output of `which(bike == "C")`?
   
    - [1] "C" "C"   
    - [1] FALSE FALSE TRUE FALSE TRUE FALSE FALSE
    - **[1] 3 5**
    - "C" "C"


## Packages and libraries (JHL)
1. (**True** or False) If you exit the Rstudio environment, reopen it, and check sessionInfo(), libraries that were loaded in the previous previous session will not show up.

## Data wrangling: data frames, matrices and lists (MP)

1. The metadata data frame has the following features:

    * The output of `colnames(metadata)` is: `[1] "genotype" "celltype" "replicate"`
    * The output of `rownames(metadata)` is: `[1] "sample1" "sample2" "sample3" "sample4" "sample5" "sample6" "sample7" "sample8" "sample9" "sample10" "sample11" "sample12"`
        
   Which of the following code lines does **NOT** return the element in the 3rd row and 1st column?
    
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

## Plotting with the ggplot2 package (RSK)

1. Which of the following lines of code will **initialize** a plot?
    - ggplot2(name_of_data_frame)
    - **ggplot(name_of_data_frame)**
    - name_of_data_frame
    - geom_point(name_of_data_frame)

1. Which of the following will plot a scatterplot without an error? (multiple answers)
    - ggplot(data_frame) + geom_point(x=column1, y=column3)
    - **ggplot(data_frame, aes(x=column1, y=column3)) + geom_point()**
    - ggplot(data_frame) + scatterplot(aes(x=column1, y=column3)) 
    - **ggplot(data_frame) + geom_point(aes(x=column1, y=column3))**

1. I have used the following code to make a barplot
    ggplot(data_frame) + geom_bar(aes(x = column1, y = column6, fill = column3))
  
  What function (layer) should I add to make sure that my selected colors are used for the plot?
    - color(c("purple", "white", "orange"))
    - fill(c("purple", "white", "orange"))
    - scale_color_manual(c("purple", "white", "orange"))
    - **scale_fill_manual(c("purple", "white", "orange"))**
    
1. How many theme() layers can you have in a ggplot code chunk?
    - 3
    - 8
    - **no limit**
    - 1

## Finding help (JHL)
1. Which of the following is **NOT** the best practice when finding help:
    - Include sessionInfo() output
    - Attach a representative, yet smaller dataset if needed
    - Be precise about the terminology
    - **Post the question online without checking previous solutions**
