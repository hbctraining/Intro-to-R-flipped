# R Bootcamp!

Welcome to the R Bootcamp for HSPH's summer internship in Epidemiology.

## Learning Objectives

* **R syntax**: Understand the different 'parts of speech'.
* **Data types structures in R**: Describe the various data types and data structures.
* **Data inspection and wrangling**: Demonstrate the utilization of functions and indices to inspect and subset data from various data structures.
* **Visualizing data**: Demonstrate the use of the ggplot2 package to create plots for easy data visualization.

## Instructors

[Dr. Meeta Mistry](https://bioinformatics.sph.harvard.edu/people/meeta-mistry) and [Dr. Jihe Liu](https://bioinformatics.sph.harvard.edu/people/jihe-liu)

## Installations

Download the most recent versions of R and RStudio:

 - [R](https://cran.r-project.org/) 
 - [RStudio](https://www.rstudio.com/products/rstudio/download/#download)


# Workshop Schedule 

## Day 1

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
|13:00 - 13:30 | [Workshop Introduction](https://github.com/hbctraining/Intro-to-R-flipped/raw/master/lectures/Intro_to_workshop_EpiR.pdf) | Meeta |
|13:30 - 14:15 | [Introduction to R and RStudio](https://hbctraining.github.io/Intro-to-R-flipped/lessons/01_introR-R-and-RStudio.html) | Jihe |
|14:15 - 14:20 | Break | |
|14:20 - 15:00 | [R Syntax and Data Structure](https://hbctraining.github.io/Intro-to-R-flipped/lessons/02_introR-syntax-and-data-structures.html) | Meeta |


## Day 2

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
|13:00 - 13:45 | [Functions and Arguments](https://hbctraining.github.io/Intro-to-R-flipped/lessons/03_introR-functions-and-arguments.html) | Jihe |
|13:45 - 14:10 | [Packages and Libraries](https://hbctraining.github.io/Intro-to-R-flipped/lessons/04_introR_packages.html) | Jihe |
|14:10 - 14:15 | Break | |
|14:15 - 15:00 | [Reading in and Inspecting Data](https://hbctraining.github.io/Intro-to-R-flipped/lessons/06_reading_and_data_inspection.html) |  Meeta |


## Day 3

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
|13:00 - 14:15 | [Data Wrangling: Subsetting Vectors and Factors](https://hbctraining.github.io/Intro-to-R-flipped/lessons/05_introR-data-wrangling.html) | Meeta |
|14:15 - 14:20 | Break | |
|14:20 - 15:00 | [More Data Wrangling: Dataframes, Matrices and Lists](https://hbctraining.github.io/Intro-to-R-flipped/lessons/07_introR-data-wrangling2.html) | Jihe |

## Day 4

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 13:00 - 13:20|[Setting up for data visualization](https://hbctraining.github.io/Intro-to-R-flipped/lessons/10_setting_up_to_plot.html) | Meeta |
| 13:20 - 14:00| [Plotting with the ggplot2 package](https://hbctraining.github.io/Intro-to-R-flipped/lessons/11_ggplot2.html) | Meeta |
| 14:00 - 14:05 | Break | |
| 14:05 - 14:30| [In-class exercise: Generating a boxplot](https://hbctraining.github.io/Intro-to-R-flipped/lessons/12_boxplot_exercise.html) | Jihe |
| 14:30 - 14:45 | Review of additional materials and exercises | Jihe|
| 14:30 - 14:45 | [Wrap-up]() | Meeta |


## Additional Lessons
Below we have listed a few extra lessons for you to peruse through. These are detailed lessons that utilize the same data set used in the workshop. We encourage you take a look as they cover some concepts that **can enhance your understanding of programming in R**. 

* [The %in% operator](https://hbctraining.github.io/Intro-to-R-flipped/lessons/08_identifying-matching-elements.html)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>Very often you will have to compare two vectors to figure out if, and which, values are common between them. The <code>%in%</code> operator can be used for this purpose.<br><br>This lesson will cover:<br>
             - Implementing the <code>%in%</code> operator to evaluate two vectors<br>
             - Distinguishing <code>%in%</code> from <code>==</code> and other logical operators<br>
             - Using <code>any()</code> and <code>all()</code> functions<br><br>
         </details>

* [Reordering and matching](https://hbctraining.github.io/Intro-to-R-flipped/lessons/09_reordering-to-match-datasets.html)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>Sometimes you will want to rearrange values within a vector (row names or column names). The <code>match()</code> function can be very powerful for this task.<br><br>This lesson will cover:<br>
             - Maunually rearranging values within a vector<br>
             - Implementing the <code>match()</code> function to automatically rearrange the values within a vector<br><br>
         </details>
         
* [Using custom functions for consistent plots](https://hbctraining.github.io/Intro-to-R-flipped/lessons/11b_Custom_Functions_ggplot2.html)
      <details>
        <summary><i>Click here for a preview of this lesson</i></summary>
          <br>When creating your plots in ggplot2 you may want to have consistent formatting (using <code>theme()</code> functions) across your plots, e.g. if you are generating plots for a manuscript. <br><br>This lesson will cover:<br>
            - Developing a custom function for creating consistently formatted plots<br>
        </details>

* [Writing to file and exporting plots](https://hbctraining.github.io/Intro-to-R-flipped/lessons/13_exporting_data_and_plots.html)
         <details>
            <summary><i>Click here for a preview of this lesson</i></summary>
             <br>Now that you have completed some analysis in R, you will need to eventually export that work out of R/RStudio. R provides lots of flexibility in what and how you export your data and plots.<br><br>This lesson will cover:<br>
                - Exporting your figures from R using a variety of file formats<br>
                - Writing your data from R to a file<br>
          </details>
          
* [Finding help](https://hbctraining.github.io/Intro-to-R-flipped/lessons/14_finding_help.html)
         <details>
            <summary><i>Click here for a preview of this lesson</i></summary>
             <br>Hopefully, this course has given you the basic tools you need to be successful when using R. However, it would be impossible to cover every aspect of R and you will need to be able to troubleshoot future issues as they arise.<br><br>This lesson will cover:<br>
                - Suggestions for how to best ask for help<br>
                - Where to look for help<br>
          </details>
          
* [Tidyverse](https://hbctraining.github.io/Intro-to-R-flipped/lessons/15_tidyverse.html)
         <details>
            <summary><i>Click here for a preview of this lesson</i></summary>
             <br>The <a href="https://tidyverse.tidyverse.org/articles/paper.html">Tidyverse suite of integrated packages</a> are designed to work together to make common data science operations more user friendly. Tidyverse is becoming increasingly prevalent and it is necessary that R users are conversant in the basics of Tidyverse. We have already used two Tidyverse packages in this workshop (<code>ggplot2</code> and <code>purrr</code>) and in this lesson we will learn some key features from a few additional packages that make up Tidyverse. <br><br>This lesson will cover:<br>
                - Usage of pipes for connecting together multiple commands<br>
                - Tibbles for two-dimensional data storage<br>
                - Data wrangling within Tidyverse
          </details>

## Exercises

The key to mastering a skill is through application. In this workshop, we have provided you with the fundamental concepts required to get started in R. We encourage you to **build upon that base through some practical application**. We have created the exercises below, which allow you to play and practice your coding in R. For each set of exercises, we also provide the answer key. 

Go ahead and give it a try! 


* [Practicing with custom functions](https://hbctraining.github.io/Intro-to-R-flipped/activities/Day2_activities.html) + [Answer key](https://hbctraining.github.io/Intro-to-R-flipped/activities/Day2_activities_answer_key.R)
* [Fun with data wrangling](https://hbctraining.github.io/Intro-to-R-flipped/activities/Day3_activities.html) + [Answer key](https://hbctraining.github.io/Intro-to-R-flipped/activities/Day3_activities_answer_key.R)
* [Tidyverse and data visualization](https://hbctraining.github.io/Intro-to-R-flipped/activities/Day4_activities.html) + [Answer key](https://hbctraining.github.io/Intro-to-R-flipped/activities/Day4_activities_answer_key.R)
* [Overall practice with R](https://hbctraining.github.io/Intro-to-R/homework/Intro_to_R_hw.html) + [Answer key](https://hbctraining.github.io/Intro-to-R/homework/Intro_to_R_key.html)


## Resources for Learning R
* [R for Data Science online book](https://r4ds.had.co.nz/)
* [RMarkdown](https://hbctraining.github.io/Training-modules/Rmarkdown/)
* [More ggplot2](https://hbctraining.github.io/Training-modules/Tidyverse_ggplot2/lessons/ggplot2.html)
* [ggplot2 cookbook](http://www.cookbook-r.com/Graphs/)

## Cheatsheets
* [base R cheatsheet](../cheatsheets/base-r.pdf)
* [RStudio cheatsheet](../cheatsheets/rstudio-ide.pdf)
* [ggplot2 cheatsheet](../cheatsheets/data-visualization-2.1.pdf)
