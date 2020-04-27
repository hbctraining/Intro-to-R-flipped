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

# 2. Another commonly used base function is `sort()`. Use this function to sort the `glengths` vector in **descending** order.
 
# 3. Write a function called `multiply_it`, which takes two inputs: a numeric value `x`, and a numeric value `y`. The function will return the product of these two numeric values, which is `x * y`. Apply this function and check if the result is as expected.

# 4. Set the **default** value of `y` as 5 in the `multiply_it` function (hint: this can be done by assigning the value inside the input parentheses). Apply this function by specifying only one input `x`, and check if the result is as expected. Also see if you can **overwrite** the default value of `y` by specifying both `x` and `y` values when applying this function.
