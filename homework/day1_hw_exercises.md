## Day 1 Homework Exercises

### R syntax and data structures

1. Try changing the value of the variable `x` to 5. What happens to `number`?

2. Now try changing the value of variable `y` to contain the value 10. What do you need to do, to update the variable `number`?

3. Try to create a vector of numeric and character values by combining the two vectors that we just created (`glengths` and `species`). Assign this combined vector to a new variable called `combined`. Hint: you will need to use the combine `c()` function to do this. Print the `combined` vector in the console, what looks different compared to the original vectors?

4. Let's say that in our experimental analyses, we are working with three different sets of cells: normal, cells knocked out for geneA (a very exciting gene), and cells overexpressing geneA. We have three replicates for each celltype.

    - Create a vector named `samplegroup` with nine elements: 3 control ("CTL") values, 3 knock-out ("KO") values, and 3 over-expressing ("OE") values.

    - Turn `samplegroup` into a factor data structure.

5. Create a data frame called `favorite_books` with the following vectors as columns:

  ```r
  titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
  pages <- c(453, 432, 328)
  ```
  
6. Create a list called `list2` containing `species`, `glengths`, and `number`.

