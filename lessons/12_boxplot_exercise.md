---
title: "Plotting and data visualization in R"
author: "Mary Piper, Meeta Mistry, Radhika Khetani"
date: "Wednesday, December 4, 2019"
---

Approximate time: 60 minutes

## Generating a Boxplot with ggplot2

A boxplot provides a graphical view of the distribution of data based on a five number summary: 
* The top and bottom of the box represent the (1) first and (2) third quartiles (25th and 75th percentiles, respectively). 
* The line inside the box represents the (3) median (50th percentile). 
* The whiskers extending above and below the box represent the (4) maximum, and (5) minimum of a data set. 
* The whiskers of the plot reach the minimum and maximum values that are not outliers. 

> In this case, **outliers** are determined using the interquartile range (IQR), which is defined as: Q3 - Q1. Any values that exceeds 1.5 x IQR below Q1 or above Q3 are considered outliers and are represented as points above or below the whiskers. 

### 1. Boxplot!
Generate a boxplot using the data in the new_metadata dataframe. Create a ggplot2 code chunk with the following instructions:

1. Use the `geom_boxplot()` layer to plot the differences in sample means between the Wt and KO genotypes.
2. Use the `fill` *aesthetic* to look at differences in sample means between the celltypes within each genotype.
3. Add a title to your plot.
4. Add labels, 'Genotype'for the x-axis and 'Mean expression' for the y-axis.
5. Make the following `theme()` changes:
	* Use the `theme_bw()` function to make the background white.
	* Change the size of your axes labels to 1.5x larger than the default.
	* Change the size of your plot title to 1.5x larger than default.
	* Center the plot title.

**After running the above code the boxplot should look something like that provided below.**

<p align="center">
<img src="../img/ggboxplot_new.png" width="600">
</p>

### 2. Changing default colors

You can color the boxplot differently by using some specific layers:

1. Add a new layer `scale_color_manual(values=c("purple","orange"))`. 
	* Do you observe a change?
2. Add another layer called `scale_fill_manual(values=c("purple","orange"))`.
	* What do you think is the difference between `scale_color_manual()` and `scale_fill_manual()`?
3. Change the colors in the `scale_fill_manual()` function to be your favorite 2 colors.
	* Are there any colors that you tried that did not work?

You are not restricted to using colors by writing them out as character vectors. You have the choice of a lot of colors in R, and you can do so by using their *hexadecimal code*, [click here for more information about color palettes in R](http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/).

We have [a separate lesson about using color palettes from the package RColorBrewer](https://hbctraining.github.io/Training-modules/Tidyverse_ggplot2/lessons/ggplot2.html#customizing-data-point-colors), if you are interested.

### 3. Create a custom function

Create a new custom function for all the thematic elements for the boxplot and rewrite the code.

---
*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
