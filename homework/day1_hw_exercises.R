## Day 1 Homework Exercises

### R syntax and data structures

# 1. Try changing the value of the variable `x` to 5. What happens to `number`?
  
# 2. Now try changing the value of variable `y` to contain the value 10. What do you need to do, to update the variable `number`?
  
# 3. Try to create a vector of numeric and character values by combining the two vectors that we just created (`glengths` and `species`). Assign this combined vector to a new variable called `combined`. Hint: you will need to use the combine `c()` function to do this. Print the `combined` vector in the console, what looks different compared to the original vectors?
  
# 4. Let's say that in our experimental analyses, we are working with three different sets of cells: normal, cells knocked out for geneA (a very exciting gene), and cells overexpressing geneA. We have three replicates for each celltype.

#   i. Create a vector named `samplegroup` with nine elements: 3 control ("CTL") values, 3 knock-out ("KO") values, and 3 over-expressing ("OE") values.
 
#   ii. Turn `samplegroup` into a factor data structure.
 
# 5. Create a data frame called `favorite_books` with the following vectors as columns:
 
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)

# 6. Create a list called `list2` containing `species`, `glengths`, and `number`.

##################################### 

### Functions and arguments

# 1. Let's use base R function to calculate **mean** value of the `glengths` vector. You might need to search online to find what function can perform this task.

# 2. Create a new vector `test <- c(1, NA, 2, 3, NA, 4)`. Use the same base R function from exercise 1 (with addition of proper argument), and calculate mean value of the `test` vector. The output should be `2.5`.
    #	*NOTE:* In R, missing values are represented by the symbol `NA` (not available). It’s a way to make sure that users know they have missing data, and make a conscious decision on how to deal with it. There are ways to ignore `NA` during statistical calculations, or to remove `NA` from the vector. More information related to missing data can be found at this link -> https://www.statmethods.net/input/missingdata.html.

# 3. Another commonly used base function is `sort()`. Use this function to sort the `glengths` vector in **descending** order.
 
# 4. Write a function called `multiply_it`, which takes two inputs: a numeric value `x`, and a numeric value `y`. The function will return the product of these two numeric values, which is `x * y`. For example, `multiply_it(x=4, y=6)` will return output `24`.

# 5. Re-write the function `multiply_it`, where `y` is set with a **default** value of 6 (hint: assign the value when defining the input). Apply this function by providing only one input `x`. For example, `multiply_it(x=4)` will return output `24`. Also test if you can **overwrite** the default value of `y` by providing both `x` and `y` values as arguments in the function. For example, `multiply_it(x=4, y=8)` will return output `32`, but not `24`.

############################

### Reading in and inspecting data

# 1. Download this tab-delimited .txt file (https://www.dropbox.com/s/k2mlcqn4823g400/project-summary.txt?dl=1) and save it in your project’s data folder.
#       i. Read it in to R using read.table() and store it as the variable proj_summary, keeping in mind that: 
#               a. all the columns have column names 
#               b. you want the first column to be used as rownames (hint: look up the row.names = argument)
#       ii. Display the contents of proj_summary in your console

# 2. Use the class() function on glengths and metadata, how does the output differ between the two?

# 3. Use the summary() function on the proj_summary dataframe, what is the median rRNA_rate?

# 4. How long is the samplegroup factor?

# 5. What are the dimensions of the proj_summary dataframe?

# 6. When you use the rownames() function on metadata, what is the data structure of the output?

# 7. How many elements in (how long is) the output of colnames(proj_summary)? Don’t count, but use another function to determine this.
