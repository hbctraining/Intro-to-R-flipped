---
title: "Plotting and data visualization in R"
author: "Mary Piper, Meeta Mistry, Radhika Khetani"
date: "Wednesday, December 4, 2019"
---

Approximate time: 60 minutes


## Generate a Boxplot with ggplot2

A boxplot provides a graphical view of the distribution of data based on a five number summary. The top and bottom of the box represent the (1) first and (2) third quartiles (25th and 75th percentiles, respectively). The line inside the box represents the (3) median (50th percentile). The whiskers extending above and below the box represent the (4) maximum, and (5) minimum of a data set. The whiskers of the plot reach the minimum and maximum values that are not outliers. 

Outliers are determined using the interquartile range (IQR), which is defined as: Q3 - Q1. Any values that exceeds 1.5 x IQR below Q1 or above Q3 are considered outliers and are represented as points above or below the whiskers. These outliers are useful to identify any unexpected observations.

1. Use the `geom_boxplot()` layer to plot the differences in sample means between the Wt and KO genotypes.
2. Use the `fill` aesthetic to look at differences in sample means between the celltypes within each genotype.
3. Add a title to your plot.
4. Add 'Genotype' as your x-axis label and 'Mean expression' as your y-axis labels.
5. Theme changes:
	* Use the `theme_bw()` function to make the background white.
	* Change the size of your axes labels to 1.5x larger than the default.
	* Change the size of your plot title to 1.5x larger than default.
	* Center the plot title.

**Our final figure should look something like that provided below.**

<p align="center">
<img src="../img/ggboxplot_new.png" width="600">
</p>

**Code for making the boxplot above can be [found here](boxplot_solution.md)**

> *NOTE:* If you wanted to change the colors of these boxplots you would add another layer `scale_fill_manual()` to the code, and within the function specify which colors you want to use using the `values` argument.  For example, if the factor column you are coloring with has 2 levels, you will need to give 2 values as follows `scale_fill_manual(values=c("purple","orange"))`.
>
> *NOTE:* You are not restricted to colors specified as above, you have the choice of a lot of colors using their *hexadecimal code*, [click here for more information about color palettes in R](http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/).


---
*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
