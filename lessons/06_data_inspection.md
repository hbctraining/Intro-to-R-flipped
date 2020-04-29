---
title: 'Data subsetting with base R: vectors and factors'
date: "Friday, September 8, 2017"
authors: Meeta Mistry, Mary Piper, Radhika Khetani
---

## Learning Objectives

* Demonstrate how to read existing data into R
* Utilize base R functions to inspect data structures

## Reading data into R

### The basics
Regardless of the specific analysis in R we are performing, we usually need to bring data in for any analysis being done in R, so learning how to read in data is a crucial component of learning to use R.

Many functions exist to read data in, and the function in R you use will depend on the file format being read in. Below we have a table with some examples of functions that can be used for importing some common text data types (plain text).

| Data type               | Extension | Function          | Package            |
|:------------------------|:----------|:------------------|:-------------------|
| Comma separated values  | csv       | `read.csv()`      | utils (default)    |
|                         |           | `read_csv()`      | readr (tidyverse)  |
| Tab separated values    | tsv       | `read_tsv()`      | readr              |
| Other delimited formats | txt       | `read.table()`    | utils              |
|                         |           | `read_table()`    | readr              |
|                         |           | `read_delim()`    | readr              |

For example, if we have text file where the columns are separated by commas (comma-separated values or comma-delimited), you could use the function `read.csv`. However, if the data are separated by a different delimiter in a text file (e.g. ":", ";", " "), you could use the generic `read.table` function and specify the delimiter (`sep = " "`) as an argument in the function. 

In the above table we refer to base R functions as being contained in the "utils" package. In addition to base R functions, we have also listed functions from some other packages that can be used to import data, specifically the "readr" package that installs when you install the "tidyverse" suite of packages.

In addition to plain text files, you can also import data from other statistical analysis packages and Excel using functions from different packages. 

| Data type               | Extension | Function          | Package            |
|:------------------------|:----------|:------------------|:-------------------|
| Stata version 13-14     | dta       | `readdta()`       | haven              |
| Stata version 7-12      | dta       | `read.dta()`      | foreign            |
| SPSS                    | sav       | `read.spss()`     | foreign            |
| SAS                     | sas7bdat  | `read.sas7bdat()` | sas7bdat           |
| Excel                   | xlsx, xls | `read_excel()`    | readxl (tidyverse) |

Note, that these lists are not comprehensive, and may other functions exist for importing data. Once you have been using R for a bit, maybe you will have a preference for which functions you prefer to use for which data type.

### Metadata

When working with large datasets, you will very likely be working with "metadata" file which contains the information about each sample in our dataset.

<img src="../img/metadata_view.png" width="400"> 

The metadata is very important information and we encourage you to think about creating a document with as much metadata you can record before you bring the data into R. [Here is some additional reading on metadata](https://datamanagement.hms.harvard.edu/metadata-overview) from the [HMS Data Management Working Group](https://datamanagement.hms.harvard.edu/).

### The `read.csv()` function

Let's bring in the metadata file we downloaded earlier (`mouse_exp_design.csv` or `mouse_exp_design.txt`) using the `read.csv` function. 

First, check the arguments for the function using the `?` to ensure that you are entering all the information appropriately:

```r
?read.csv
```

<img src="../img/read.table-help.png" width="450"> 

The first thing you will notice is that you've pulled up the documentation for `read.table()`, this is because that is the parent function and all the other functions are in the same family. 

The next is the function description which specifies that the output of this set of functions is going to be a data frame - "*Reads a file in table format and **creates a data frame from it**, with cases corresponding to lines and variables to fields in the file.*"

In usage, all of the arguments listed for `read.table()` are the default values for all of the family members unless otherwise specified for a given function. Let's take a look at 2 examples:
1. **The separator** - 
	* in the case of `read.table()` it is `sep = ""` (space or tab)
	* whereas for `read.csv()` it is `sep = ","` (a comma).
2. **The `header`** - This argument refers to the column headers that may (`TRUE`) or may not (`FALSE`) exist **in the plain text file you are reading in**. 
	* in the case of `read.table()` it is `header = FALSE` (by default, it assumes you do not have column names)
	* whereas for `read.csv()` it is `header = TRUE` (by default, it assumes that all your columns have names listed). 

The take-home from the "Usage" section for `read.csv()` is that it has one mandatory argument, the path to the file and filename in quotations. In our case that is `data/mouse_exp_design.csv` or `data/mouse_exp_design.txt`. 

> Note that this family of functions will coerces columns that contain character values into a column of `factor` or categorical data type. Depending on what you want to do with the data, you may want to keep these columns as `character` values (e.g. gene names are usually not categorical data); to do so, you can set `stringsAsFactors = FALSE`.

At this point, please check within your data folder the extension for the `mouse_exp_design` file. You will have to type it accordingly within the `read.csv()` function.

> `read.csv` is not fussy about extensions for plain text files, so even though the file we are reading in is a comma-separated value file, it will be read in properly even with a `.txt` extension.

Let's read in the `mouse_exp_design` file and create a new data frame called `metadata`.

```r
metadata <- read.csv(file="data/mouse_exp_design.csv")

# OR 
# metadata <- read.csv(file="data/mouse_exp_design.txt")
```

Go to your Global environment and click on the name of the data frame you just created. 

<img src="../img/metadata_env.png" width="300">

When you do this the metadata table will pop up on the top left hand corner of RStudio, right next to the R script.

<img src="../img/metadata_display.png" width="300">

You should see a subtle coloring (blue-gray) of the first row and first column, the rest of the table will have a white background. This is because your first row and first columns have different properties than the rest of the table, they are the names of the rows and columns respectively. 

<img src="../img/metadata_display_row_cols.png" width="300">

We already noted that this file had column headers and how `read.csv()` deals with that. It also assumes that the first column contains the row names. Not all functions in the `read.table()` family of functions will do this and depending on which one you use, you may have to specify and additional argument to properly assign the row names.

> Row names and column names are really handy ways to subset data and also to identify samples or genes. We almost always use them with data frames.

***
**Exercise 1**

* Download [this tab-delimited `.txt` file](https://www.dropbox.com/s/k2mlcqn4823g400/project-summary.txt?dl=1) and save it in your  project's `data` folder.
* Read it in to R using `read.table()` and store is as the variable `proj_summary`, keeping in mind that -
	- all the columns have column names
	- you want the first column to be used as rownames (*hint: look up the `row.names =` argument*)
* Display the contents of `proj_summary` in your console

***

## Inspecting data structures

There are a wide selection of base functions in R that are useful for inspecting your data and summarizing it. Let's use the `metadata` file that we created to test out data inspection functions. 

Take a look at the dataframe by typing out the variable name `metadata` and pressing return; the variable contains information describing the samples in our study. Each row holds information for a single sample, and the columns contain categorical information about the sample `genotype`(WT or KO),  `celltype` (typeA or typeB), and `replicate number` (1,2, or 3).


```r
metadata

          genotype celltype replicate
sample1        Wt    typeA		1
sample2        Wt    typeA		2
sample3        Wt    typeA		3
sample4        KO    typeA		1
sample5        KO    typeA		2
sample6        KO    typeA		3
sample7        Wt    typeB		1
sample8        Wt    typeB		2
sample9        Wt    typeB		3
sample10       KO    typeB		1
sample11       KO    typeB		2
sample12       KO    typeB		3

```

Suppose we had a larger file, we might not want to display all the contents in the console. Instead we could check the top (the first 6 lines) of this `data.frame` using the function `head()`:

```r
head(metadata)
```

Previously, we had mentioned that character values get converted to factors by default using `data.frame`. One way to assess this change would be to use the __`str`__ucture function. You will get specific details on each column:


```r
str(metadata)

'data.frame':	12 obs. of  3 variables:
 $ genotype : Factor w/ 2 levels "KO","Wt": 2 2 2 1 1 1 2 2 2 1 ...
 $ celltype : Factor w/ 2 levels "typeA","typeB": 1 1 1 1 1 1 2 2 2 2 ...
 $ replicate: num  1 2 3 1 2 3 1 2 3 1 ...
```

As you can see, the columns `genotype` and `celltype` are of the `factor` class, whereas the replicate column has been interpreted as integer data type.

__You can also get this information from the "Environment" tab in RStudio.__

### List of functions for data inspection

We already saw how the functions `head()` and `str()` can be useful to check the
content and the structure of a `data.frame`. Here is a non-exhaustive list of
functions to get a sense of the content/structure of data.

* All data structures - content display:
	- **`str()`:** compact display of data contents (env.)
	- **`class()`:** data type (e.g. character, numeric, etc.) of vectors and data structure of dataframes, matrices, and lists.
	- **`summary()`:** detailed display, including descriptive statistics, frequencies
	- **`head()`:** will print the beginning entries for the variable
	- **`tail()`:** will print the end entries for the variable
* Vector and factor variables: 
	- **`length()`:** returns the number of elements in the vector or factor
* Dataframe and matrix variables:
	- **`dim()`:** returns dimensions of the dataset
	- **`nrow()`:** returns the number of rows in the dataset
	- **`ncol()`:** returns the number of columns in the dataset
	- **`rownames()`:** returns the row names in the dataset  
	- **`colnames()`:** returns the column names in the dataset

---

*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*

* *The materials used in this lesson are adapted from work that is Copyright © Data Carpentry (http://datacarpentry.org/). 
All Data Carpentry instructional material is made available under the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0).*
