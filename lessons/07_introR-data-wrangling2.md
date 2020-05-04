---
title: "Data wrangling: dataframes, matrices, and lists"
authors: Meeta Mistry, Mary Piper
date: "Tuesday, April, 21, 2020"
---
Approximate time: 60 min

## Learning Objectives

* Demonstrate how to subset, merge, and create new datasets from existing data structures in R.

### Dataframes

Dataframes (and matrices) have 2 dimensions (rows and columns), so if we want to select some specific data from it we need to specify the "coordinates" we want from it. We use the same square bracket notation but rather than providing a single index, there are *two indices required*. Within the square bracket, **row numbers come first followed by column numbers (and the two are separated by a comma)**. Let's explore the `metadata` dataframe, shown below are the first six samples:

![metadata](../img/metadata.png)

Let's say we wanted to extract the wild type (`Wt`) value that is present in the first row and the first column. To extract it, just like with vectors, we give the name of the data frame that we want to extract from, followed by the square brackets. Now inside the square brackets we give the coordinates or indices for the rows in which the value(s) are present, followed by a comma, then the coordinates or indices for the columns in which the value(s) are present. We know the wild type value is in the first row if we count from the top, so we put a one, then a comma. The wild type value is also in the first column, counting from left to right, so we put a one in the columns space too. 


```r
# Extract value 'Wt'
metadata[1, 1]
```

Now let's extract the value `1` from the first row and third column.

```r
# Extract value '1'
metadata[1, 3] 
```

Now if you only wanted to select based on rows, you would provide the index for the rows and leave the columns index blank. The key here is to include the comma, to let R know that you are accessing a 2-dimensional data structure:

```r
# Extract third row
metadata[3, ] 
```
What kind of data structure does the output appear to be? We see that it is two-dimensional with row names and column names, so we can surmise that it's likely a data frame.


If you were selecting specific columns from the data frame - the rows are left blank:

```r
# Extract third column
metadata[ , 3]   
```

What kind of data structure does this output appear to be? It looks different from the data frame, and we really just see a series of values output, indicating a vector data structure. This happens be default if just selecting a single column from a data frame. R will drop to the simplest data structure possible. Since a single column in a data frame is really just a vector, R will output a vector data structure as the simplest data structure. Oftentimes we would like to keep our single column as a data frame. To do this, there is an argument we can add when subsetting called `drop`, meaning do we want to drop down to the simplest data structure. By default it is `TRUE`, but we can change it's value to `FALSE` in order to keep the output as a data frame.

```r
# Extract third column as a data frame
metadata[ , 3, drop = FALSE] 
```

Just like with vectors, you can select multiple rows and columns at a time. Within the square brackets, you need to provide a vector of the desired values. 

We can extract consecutive rows or columns using the colon (`:`) to create the vector of indices to extract.

```r
# Dataframe containing first two columns
metadata[ , 1:2] 
```

Alternatively, we can use the combine function (`c()`) to extract any number of rows or columns. Let's extract the first, third, and sixth rows.

```r
# Data frame containing first, third and sixth rows
metadata[c(1,3,6), ] 
```

For larger datasets, it can be tricky to remember the column number that corresponds to a particular variable. (Is celltype in column 1
or 2? oh, right... they are in column 1). In some cases, the column/row number for values can change if the script you are using adds or removes columns/rows. It's, therefore, often better to use column/row names to refer to extract particular values, and it makes your code easier to read and your intentions clearer.

```r
# Extract the celltype column for the first three samples
metadata[c("sample1", "sample2", "sample3") , "celltype"] 
```

It's important to type the names of the columns/rows in the exact way that they are typed in the data frame; for instance if I had spelled `celltype` with a capital `C`, it would not have worked.

If you need to remind yourself of the column/row names, the following functions are helpful:

```r
# Check column names of metadata data frame
colnames(metadata)

# Check row names of metadata data frame
rownames(metadata)
```

If only a single column is to be extracted from a data frame, there is a useful shortcut available. If you type the name of the data frame, then the `$`, you have the option to choose which column to extract. For instance, let's extract the entire genotype column from our dataset:

```r
# Extract the genotype column
metadata$genotype 
```

The output will always be a vector, and if desired, you can continue to treat it as a vector. For example, if we wanted the genotype information for the first five samples in `metadata`, we can use the square brackets (`[]`) with the indices for the values from the vector to extract:

```r
# Extract the first five values/elements of the genotype column
metadata$genotype[1:5]
```

Unfortunately, there is no equivalent `$` syntax to select a row by name. 

***
**Exercises**

1. Return the `genotype` and `replicate` column values for `sample2` and `sample8`.
2. Return the fourth and ninth values of the `replicate` column.
3. Extract the `replicate` column as a data frame.

***

#### Selecting using indices with logical operators

With data frames, similar to vectors, we can use logical expressions to extract the rows or columns in the data frame with specific values. First, we need to determine the indices in a rows or columns where a logical expression is `TRUE`, then we can extract those rows or columns from the data frame. 

For example, if we want to return only those rows of the data frame with the `celltype` column having a value of `typeA`, we would perform two steps:

1. Identify which rows in the celltype column have a value of `typeA`.
2. Use those TRUE values to extract those rows from the data frame.

To do this we would extract the column of interest as a vector, with the first value corresponding to the first row, the second value corresponding to the second row, so on and so forth. We use that vector in the logical expression. Here we are looking for values to be equal to `typeA`, so our logical expression would be:

```r
metadata$celltype == "typeA"
```

This will output TRUE and FALSE values for the values in the vector. The first six values are `TRUE`, while the last six are `FALSE`. This means the first six rows of our metadata have a vale of `typeA` while the last six do not. We can save these values to a variable, which we can call whatever we would like; let's call it `logical_idx`.

```r
logical_idx <- metadata$celltype == "typeA"
```

Now we can use those `TRUE` and `FALSE` values to extract the rows that correspond to the `TRUE` values from the metadata data frame. We will extract as we normally would a data frame with `metadata[ , ]`, and we need to make sure we put the `logical_idx` in the row's space, since those `TRUE` and `FALSE` values correspond to the ROWS for which the expression is `TRUE`/`FALSE`. We will leave the column's space blank to return all columns.

```r
metadata[logical_idx, ]
```

##### Selecting indices with logical operators using the `which()` function

As you might have guessed, we can also use the `which()` function to return the indices for which the logical expression is TRUE. For example, we can find the indices where the `celltype` is `typeA` within the `metadata` dataframe:

```r
which(metadata$celltype == "typeA")
```

This returns the values one through six, indicating that the first 6 values or rows are true, or equal to typeA.  We can save our indices for which rows the logical expression is true to a variable we'll call idx, but, again, you could call it anything you want.

```r
idx <- which(metadata$celltype == "typeA")
```

Then, we can use these indices to indicate the rows that we would like to return by extracting that data as we have previously, giving the `idx` as the rows that we would like to extract, while returning all columns:

```r
metadata[idx, ]
```

Let's try another subsetting. Extract the rows of the metadata data frame for only the replicates 2 and 3. First, let's create the logical expression for the column of interest (`replicate`):

```r
which(metadata$replicate > 1)
```

This should return the indices for the rows in the `replicate` column within `metadata` that have a value of 2 or 3. Now, we can save those indices to a variable and use that variable to extract those corresponding rows from the `metadata` table.

```r
idx <- which(metadata$replicate > 1)
	
metadata[idx, ]
```

Alternatively, instead of doing this in two steps, we could use nesting to perform in a single step:

```r
metadata[which(metadata$replicate > 1), ]
```

Either way works, so use the method that is most intuitive for you.

So far we haven't stored as variables any of the extractions/subsettings that we have performed. Let's save this output to a variable called `sub_meta`:

```r
sub_meta <- metadata[which(metadata$replicate > 1), ]
```

***

**Exercise**  

Subset the `metadata` dataframe to return only the rows of data with a genotype of `KO`.
	
***

> **NOTE:** There are easier methods for subsetting **dataframes** using logical expressions, including the `filter()` and the `subset()` functions. These functions will return the rows of the dataframe for which the logical expression is TRUE, allowing us to subset the data in a single step. We will explore the `filter()` function in more detail in a later lesson.

### Lists

Selecting components from a list requires a slightly different notation, even though in theory a list is a vector (that contains multiple data structures). To select a specific component of a list, you need to use double bracket notation `[[]]`. Let's use the `list1` that we created previously, and index the second component:

```r
list1[[2]]
```

What do you see printed to the console? Using the double bracket notation is useful for **accessing the individual components whilst preserving the original data structure.** When creating this list we know we had originally stored a dataframe in the second component. With the `class` function we can check if that is what we retrieve:

```r
comp2 <- list1[[2]]
class(comp2)
```

You can also reference what is inside the component by adding an additional bracket. For example, in the first component we have a vector stored. 

```r
list1[[1]]
	
[1] "ecoli" "human" "corn" 
```

Now, if we wanted to reference the first element of that vector we would use:

```r
list1[[1]][1]

[1] "ecoli"
```

You can also do the same for dataframes and matrices, although with larger datasets it is not advisable. Instead, it is better to save the contents of a list component to a variable (as we did above) and further manipulate it. Also, it is important to note that when selecting components we can only **access one at a time**. To access multiple components of a list, see the note below. 

> **NOTE:** Using the single bracket notation also works wth lists. The difference is the class of the information that is retrieved. Using single bracket notation i.e. `list1[1]` will return the contents in a list form and *not the original data structure*. The benefit of this notation is that it allows indexing by vectors so you can access multiple components of the list at once.

***

**Exercises**  

1. Create a list named `random` with the following components: `metadata`, `age`, `list1`, `samplegroup`, and `number`.

2. Extract the `samplegroup` component.
	
***

Assigning names to the components in a list can help identify what each list component contains, as well as, facilitating the extraction of values from list components. 

Adding names to components of a list uses the `names()` function. Let's check and see if the `list1` has names for the components:

```r
names(list1) 
```

When we created the list we had combined the `species` vector with  a dataframe `df` and the `number` variable. Let's assign the original names to the components. To do this we can use the assignment operator in a new context. If we add `names(list1)` to the left side of the assignment arrow to be assigned to, then anything on the right side of the arrow will be assigned. Since we have three components in `list1`, we need three names to assign. We can create a vector of names using the combine (`c()`) function, and inside the combine function we give the names to assign to the components in the order we would like. So the first name is assigned to the first component of the list, and so on.

```r
# Name components of the list
names(list1) <- c("species", "df", "number")
	
names(list1)
```

Now that we have named our list components, we can extract components using the `$` similar to extracting columns from a data frame. To obtain a component of a list using the component name, use `list_name$component_name`:

To extract the `df` dataframe from the `list1` list:

```r
# Extract 'df' component
list1$df
```

***

**Exercise**

Let's practice combining ways to extract data from the data structures we have covered so far:

1. Set names for the `random` list you created in the last exercise.

2. Extract the `age` component using the `$` notation

***

> ### An R package for data wrangling
> The methods presented above are using base R functions for data wrangling. Later we will explore the **Tidyverse suite of packages**, specifically designed to make data wrangling easier.

---

*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*

* *The materials used in this lesson are adapted from work that is Copyright © Data Carpentry (http://datacarpentry.org/). 
All Data Carpentry instructional material is made available under the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0).*
