# R workshop with the Harvard Chan Bioinformatics Core

## Learning Objectives

1. **R syntax**: Understand the different 'parts of speech'.
2. **Data types structures in R**: Describe the various data types and data structures.
3. **Data inspection and wrangling**: Demonstrate the utilization of functions and indices to inspect and subset data from various data structures.
4. **Visualizing data**: Demonstrate the use of the ggplot2 package to create plots for easy data visualization.

## Instructors

[Dr. Radhika S. Khetani](https://bioinformatics.sph.harvard.edu/people/radhika-khetani) and [Dr. Mary E. Piper](https://bioinformatics.sph.harvard.edu/people/mary-piper)

## Installations

Download the most recent versions of R and RStudio:

 - [R](https://cran.r-project.org/) 
 - [RStudio](https://www.rstudio.com/products/rstudio/download/#download)

## Lessons

### Day 1

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 10:00 - 10:30 | [Workshop Introduction](../lectures/Intro_to_workshop_all.pdf) | Mary |
| 10:30 - 11:45 | [Introduction to R and RStudio](../lessons/01_introR-R-and-RStudio.md) | Meeta |
| 11:45 - 12:00 | Overview of self-learning materials and homework submission | Radhika |

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
| 10:00 - 10:50 | Questions about self-learning & [cheatsheet](https://docs.google.com/spreadsheets/d/1nZtAOWxYV0ocQeAIyb0OHIMliji7zWM_3-olXetvBzE/edit?usp=sharing) creation | Meeta |
| 10:50 - 11:15 | [In-class exercises](../activities/Day2_activities.md) + [Answer key](../activities/Day2_activities_answer_key.R) | Mary |
| 11:15 - 12:00 | [Data Wrangling: Subsetting Vectors and Factors](../lessons/05_introR-data-wrangling.md) | Radhika |

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
| 10:00 - 10:35 | Questions about self-learning lessons | Mary and Meeta |
| 10:35 - 11:15 | [In-class exercises](../activities/Day3_activities.md) + [Answer key](../activities/Day3_activities_answer_key.R)| Mary |
| 11:15 - 12:00 | [Plotting with the ggplot2 package](../lessons/11_ggplot2.md) | Meeta |

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
| 10:00 - 10:35 | Questions about self-learning lessons | All |
| 10:35 - 11:15 | [In-class exercises](../activities/Day4_activities.md) / [Rscript](../activities/day4_activities_skeleton.R) + [Answer key](../activities/Day4_activities_answer_key.R) | Radhika |
| 11:15 - 11:45 | Discussion, Q & A | All |
| 11:45 - 12:00 | [Wrap Up](../lectures/R_workshop_wrapup_all.pdf) | Mary |

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

## Resources
* [Online learning resources](https://hbctraining.github.io/bioinformatics_online/lists/online_trainings.html)
* [All hbctraining materials](https://hbctraining.github.io/main)

## Cheatsheets
* [base R cheatsheet](../img/base-r.pdf)
* [RStudio cheatsheet](https://rstudio.com/wp-content/uploads/2016/01/rstudio-IDE-cheatsheet.pdf)
* [ggplot2 cheatsheet](https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)