---
title: "Advanced R, reordering to match datasets"
authors: Meeta Mistry, Mary Piper
date: "Wednesday, April 22, 2020"
---
Approximate time: 110 min


## Learning Objectives

* Implement manual reordering of vectors and data frames
* Utilize the `match()` function to reorder vectors and data frames so that unique identifiers are in the same order


## Reordering data using indices

Indexing `[ ]` can be used to extract values from a dataset as we saw earlier, but we can also use it to rearrange our data values. 

```r
teaching_team <- c("Jihe", "Mary", "Meeta", "Radhika")
```
<img src="../img/teaching-team.png" width="400">

Remember that we can return values in a vector by specifying it's position or index:

```r
teaching_team[c(2, 4)] # Extracting values from a vector
teaching_team
```

We can also extract the values and reorder them:

```r
teaching_team[c(4, 2)] # Extracting values and reordering them
```

Similarly, we can extract all of the values and reorder them:

```r
teaching_team[c(4, 2, 1, 3)]
```

If we want to save our results, we need to assign to a variable:

```r
reorder_teach <- teaching_team[c(4, 2, 1, 3)] # Saving the results to a variable
```

## The `match` function

Now that we know how to reorder using indices, we can use the `match()` function to match the values in two vectors. We'll be using it to evaluate which samples are present in both our counts and metadata dataframes, and then to re-order the columns in the counts matrix to match the row names in the metadata matrix. 

`match()` takes at least 2 arguments: 

1. a vector of values in the order you want
2. a vector of values to be reordered

The function returns the position of the matches (indices) with respect to the second vector, which can be used to re-order it so that it matches the order in the first vector.  Let's create vectors `first` and `second` to demonstrate how it works:

```r
first <- c("A","B","C","D","E")
second <- c("B","D","E","A","C")  # same letters but different order
```
![matching4](../img/match1.png)

***How would you reorder `second` vector to match `first` using indices?***

If we had large datasets, it would be difficult to reorder them by searching for the indices of the matching elements. This is where the `match` function comes in really handy:
	
```r
match(first,second)
[1] 4 1 5 2 3
```

The function should return a vector of size `length(first)`. Each number that is returned represents the index of the `second` vector where the matching value was observed. 

Now, we can just use the indices to reorder the elements of the `second` vector to be in the same positions as the matching elements in the `first` vector:

```r
reorder_idx <- match(first,second) # Saving indices for how to reorder `second` to match `first`

second[reorder_idx]  # Reordering the second vector to match the order of the first vector
second_reordered <- second[reorder_idx]  # Reordering and saving the output to a variable
```

![matching7](../img/match3-reordered.png)


Now that we know how `match()` works, let's change vector `second` so that only a subset are retained:

```r	
first <- c("A","B","C","D","E")
second <- c("D","B","A")  # remove values
```

![matching5](../img/match2.png)

And try to `match()` again:

```r
match(first,second)

[1]  3  2 NA  1 NA
```

>**NOTE:** For values that don't match by default return an `NA` value. You can specify what values you would have it assigned using `nomatch` argument. Also, if there is more than one matching value found only the first is reported.

### Reordering genomic data using `match()` function

Using the `match` function, we now would like to match the row names of our metadata to the column names of our expression data*, so these will be the arguments for `match`. Using these two arguments we will retrieve a vector of match indices. The resulting vector represents the re-ordering of the column names in our data matrix to be identical to the rows in metadata:
 
 ```r
rownames(metadata)
	
colnames(rpkm_data)
	
genomic_idx <- match(rownames(metadata), colnames(rpkm_data))
genomic_idx
```

Now we can create a new data matrix in which columns are re-ordered based on the match indices:

```r
rpkm_ordered  <- rpkm_data[,genomic_idx]
```

Check and see what happened by using `head`. You can also verify that column names of this new data matrix matches the metadata row names by using the `all` function:

```r
head(rpkm_ordered)
all(rownames(metadata) == colnames(rpkm_ordered))
```

Now that our samples are ordered the same in our metadata and counts data, **if these were raw counts** we could proceed to perform differential expression analysis with this dataset.


---
*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
