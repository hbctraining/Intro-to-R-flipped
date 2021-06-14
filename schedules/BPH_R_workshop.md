# R workshop with the Harvard Chan Bioinformatics Core

## Learning Objectives

1. **R syntax**: Understand the different 'parts of speech'.
2. **Data types structures in R**: Describe the various data types and data structures.
3. **Data inspection and wrangling**: Demonstrate the utilization of functions and indices to inspect and subset data from various data structures.
4. **Visualizing data**: Demonstrate the use of the ggplot2 package to create plots for easy data visualization.

## Instructors

[Dr. Mary E. Piper](https://bioinformatics.sph.harvard.edu/people/mary-piper) and [Dr. Jihe Liu](https://bioinformatics.sph.harvard.edu/people/jihe-liu)

## Installations

Download the most recent versions of R and RStudio:

 - [R](https://cran.r-project.org/) 
 - [RStudio](https://www.rstudio.com/products/rstudio/download/#download)

## Lessons

### Day 1

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 14:00 - 14:30 | [Workshop Introduction](../lectures/Intro_to_workshop_all.pdf) | Mary |
| 14:30 - 15:45 | [Introduction to R and RStudio](../lessons/01_introR-R-and-RStudio.md) | Jihe |
| 15:45 - 16:00 | Overview of self-learning materials and homework submission | Mary |

#### Before the next class:

1. Please **study the contents** and **work through all the code** within the following lessons:
   * [R Syntax and Data Structure](https://hbctraining.github.io/Intro-to-R-flipped/lessons/02_introR-syntax-and-data-structures.html)
   * [Functions and Arguments](../lessons/03_introR-functions-and-arguments.md)
   * [Reading in and inspecting data](../lessons/06_reading_and_data_inspection.md)

2. **Complete the exercises**:
   * Each lesson above contain exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/d4s6478ATbNhggbOFVLW) the **day before the next class**.
   
#### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

---

### Day 2

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 14:00 - 14:50 | Questions about self-learning & [cheatsheet]() creation | Mary and Jihe |
| 14:50 - 15:15 | [In-class exercises](../activities/Day2_activities.md) + [Answer key](../activities/Day2_activities_answer_key.R) | Jihe |
| 15:15 - 16:00 | [Data Wrangling: Subsetting Vectors and Factors](../lessons/05_introR-data-wrangling.md) | Mary |

#### Before the next class:

1. Please **study the contents** and **work through all the code** within the following lessons:
    * [Packages and libraries](../lessons/04_introR_packages.md)
    * [Data wrangling: data frames, matrices and lists](../lessons/07_introR-data-wrangling2.md)
    * [The %in% operator](../lessons/08_identifying-matching-elements.md)
    * [Reordering and matching](../lessons/09_reordering-to-match-datasets.md)
    * [Setting up a data frame to plot (+ the `map()` function)](../lessons/10_setting_up_to_plot.md)

2. **Complete the exercises**:
   * Each lesson above contain exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/N3z2PwAYFWwTDLaXtUoQ) the **day before the next class**.

3. Prepare for **in-class exercise**:
      * Download the [animals.csv](https://raw.githubusercontent.com/hbctraining/Intro-to-R-flipped/master/data/animals.csv), by right-clicking on the link and "Save Link As..." to place the file into the `data` directory.
      * Read the `.csv` file into your environment and assign it to a variable called `animals`. **Be sure to check that your row names are the different animals.**
      * Save the R project when you close Rstudio.
   
#### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

---

### Day 3

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 14:00 - 14:35 | Questions about self-learning lessons | Mary and Jihe |
| 14:35 - 15:15 | [In-class exercises](../activities/Day3_activities.md) + [Answer key](../activities/Day3_activities_answer_key.R)| Jihe |
| 15:15 - 16:00 | [Plotting with the ggplot2 package](../lessons/11_ggplot2.md) | Mary |

#### Before the next class:

1. Please **study the contents** and **work through all the code** within the following lessons:
    * [Using custom functions for consistent plots](../lessons/11b_Custom_Functions_ggplot2.md)
    * [Generating a boxplot with ggplot2](../lessons/12_boxplot_exercise.md)
    * [Writing to file and exporting plots](../lessons/13_exporting_data_and_plots.md)
    * [Finding help](../lessons/14_finding_help.md)
    * [Tidyverse](https://hbctraining.github.io/Training-modules/Tidyverse_ggplot2/lessons/intro_tidyverse.html)

2. **Complete the exercises**:
   * Each lesson above contain exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/9AVwr4cMJIbHv04b2cYz) the **day before the next class**.
   
#### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

---

### Day 4

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 14:00 - 14:35 | Questions about self-learning lessons | Mary and Jihe |
| 14:35 - 15:15 | [In-class exercises](../activities/Day4_activities.md) / [Rscript](../activities/day4_activities_skeleton.R) + [Answer key](../activities/Day4_activities_answer_key.R) | Jihe |
| 15:15 - 15:45 | Discussion, Q & A | Mary and Jihe |
| 15:45 - 16:00 | [Wrap Up]() | Mary |

#### Final Exercises
* [**Exercises**](https://hbctraining.github.io/Intro-to-R/homework/Intro_to_R_hw.html)

#### Answer Keys
* [**Day 1 homework**](../homework/day1_hw_answer-key.R)
* [**Day 2 homework**](../homework/day2_hw_answer-key.R)
* [**Day 3 homework**](../homework/day3_hw_answer-key.R)
* [**Final exercises**](https://hbctraining.github.io/Intro-to-R/homework/Intro_to_R_key.html)

## Learning resource (requires log in with Harvard Key)
[HBC and Harvard Catalyst's R learning resource](https://projects.iq.harvard.edu/hcatrresource/video-library)

## Building on the basic R knowledge
* [DGE workshop](https://hbctraining.github.io/DGE_workshop_salmon/)
* [Single-cell RNA-seq workshop](https://hbctraining.github.io/scRNA-seq/)
* [RMarkdown](https://hbctraining.github.io/Training-modules/Rmarkdown/)
* [Functional analysis](https://hbctraining.github.io/Training-modules/DGE-functional-analysis/)
* [More ggplot2](https://hbctraining.github.io/Training-modules/Tidyverse_ggplot2/lessons/ggplot2.html)
* [ggplot2 cookbook](http://www.cookbook-r.com/Graphs/)
* [R for Data Science](https://r4ds.had.co.nz/)

## Resources
* [Online learning resources](https://hbctraining.github.io/bioinformatics_online/lists/online_trainings.html)
* [All hbctraining materials](https://hbctraining.github.io/main)

## Cheatsheets
* [base R cheatsheet](../cheatsheets/base-r.pdf)
* [RStudio cheatsheet](../cheatsheets/rstudio-ide.pdf)
* [ggplot2 cheatsheet](../cheatsheets/data-visualization-2.1.pdf)
