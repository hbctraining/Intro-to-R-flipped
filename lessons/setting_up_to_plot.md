---
title: "Plotting and data visualization in R"
author: "Mary Piper, Meeta Mistry, Radhika Khetani"
date: "Wednesday, December 4, 2019"
---


## Learning Objectives 

* Describe the "map" function for iterative tasks on data structures.

## Setting up a data frame for visualization

In this lesson we want to make plots to evaluate the average expression in each sample and its relationship with the age of the mouse. So, to this end, we will be adding a couple of additional columns of information to the `metadata` data frame that we can utilize for plotting. 

<p align="center">
<img src="../img/new_metadata.png" width="600">
</p>


### Calculating average expression

Let's take a closer look at our counts data. Each column represents a sample in our experiment, and each sample has ~38K values corresponding to the expression of different transcripts. We want to compute **the average value of expression** for each sample eventually. Taking this one step at a time, what would we do if we just wanted the average expression for Sample 1 (across all transcripts)? We can use the R base package provided function called `mean()`:

```r
mean(rpkm_ordered$sample1)
```

That is great, if we only wanted the average from one of the samples (1 column in a data frame), but we need to get this information from all 12 samples, so all 12 columns. It would be ideal to get a vector of 12 values that we can add to the metadata data frame. What is the best way to do this?

Programming languages typically have a way to allow the execution of a single line of code or several lines of code multiple times, or in a "loop". While "for loops" are available in R, there are other easier-to-use functions that can achieve this -  for example, the `apply()` family of functions and the `map()` family of functions. 

The `map()` family is a bit more intuitive to use than `apply()` and we will be using it today. However, if you are interested in learning more about the`apply()` family of functions we have [materials available here](https://hbctraining.github.io/Intro-to-R/lessons/apply_functions.html).

To obtain **mean values for all samples** we can use the `map_dbl()` function which generates a numeric vector. 

```r
library(purrr)  # Load the purrr

samplemeans <- map_dbl(rpkm_ordered, mean) 
```

> #### The `map` family of functions
> 
> The `map()` family of functions is available from the **`purrr`** package, which is part of the tidyverse suite of packages. More detailed information is available in the [R for Data Science](http://r4ds.had.co.nz/iteration.html#the-map-functions) book. This family includes several functions, each taking a vector as input and outputting a vector of a specified type. For example, we can use these functions to execute some task/function on every element in a vector, or every column in a dataframe, or every component of a list, and so on. 
> 
> - `map()` creates a list.
> - `map_lgl()` creates a logical vector.
> - `map_int()` creates an integer vector.
> - `map_dbl()` creates a "double" or numeric vector.
> - `map_chr()` creates a character vector.
> 
> The syntax for the `map()` family of functions is: 
> 
> ```r
> ## DO NOT RUN
> map(object, function_to_apply)
> ```
> 
> If you would like to practice with the `map()` family of functions, we have [additional materials](https://hbctraining.github.io/Intro-to-R/lessons/map_purrr.html) available.

### Creating a new metadata object with additional information

Because the input was 12 columns of information the output of `map_dbl()` is a *named* vector of length 12. 

```r
# Named vectors have a name assigned to each element instead of just referring to them as indices ([1], [2] and so on)
samplemeans

# Check length of the vector before adding it to the data frame
length(samplemeans)
```

Since we have 12 rows in the data frame, we can add the 12 element vector as a column to our metadata data frame using the `data.frame()` function.
	
Before we add the new column, let's create a vector with the ages of each of the mice in our data set.

```r
# Create a numeric vector with ages. Note that there are 12 elements here
age_in_days <- c(40, 32, 38, 35, 41, 32, 34, 26, 28, 28, 30, 32)    	
```

Now, we are ready to combine the `metadata` data frame with the 2 new vectors to create a new data frame with 5 columns

```r
# Add the new vector as the last column to the new_metadata dataframe
new_metadata <- data.frame(metadata, samplemeans, age_in_days) 

# Take a look at the new_metadata object
View(new_metadata)
```

We are now ready for plotting and data visualization!

---
*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
