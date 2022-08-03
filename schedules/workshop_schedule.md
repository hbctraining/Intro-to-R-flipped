# Workshop Schedule

## Day 1

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 10:00 - 10:30 | [Workshop Introduction](../lectures/Intro_to_workshop_all.pdf) | Will |
| 10:30 - 11:45 | [Introduction to R and RStudio](../lessons/01_introR-R-and-RStudio.md) | Radhika |
| 11:45 - 12:00 | Overview of self-learning materials and homework submission | Will |

### Before the next class:

I. Please **study the contents** and **work through all the code** within the following lessons:
   1. [R Syntax and Data Structure](https://hbctraining.github.io/Intro-to-R-flipped/lessons/02_introR-syntax-and-data-structures.html)
      <details>
       <summary><i>Click here for a preview of this lesson</i></summary>
         <br>In order to utilize R effectively, you will need to understand what types of data you can use in R and also how you can store data in "objects" or "variables". <br><br>This lesson will cover:<br>
             - Assigning a value to a object<br>
             - What types of information can you store in R<br>
             - What are the different objects that you can use to store data in R<br><br>
        </details>
   
   2. [Functions and Arguments](../lessons/03_introR-functions-and-arguments.md)
      <details>
       <summary><i>Click here for a preview of this lesson</i></summary>
         <br>Functions are the basic "commands" used in R to get something done. To use functions (denoted by function_name followed by "()"), one has to enter some information within the parenthesis and optionally some arguments to change the default behavior of a function. 
         <br>You can also create your own functions! When you want to perform a task or a series of tasks more than once, creating a custom function is the best way to go. 
         <br><br>In this lesson you will explore:<br>
            - Using built-in functions<br>
            - Creating your own custom functions<br><br>
         </details>

   3. [Reading in and inspecting data](../lessons/06_reading_and_data_inspection.md)
      <details>
       <summary><i>Click here for a preview of this lesson</i></summary>
         <br>When using R, it is almost a certainty that you will have to bring data into the R environment. <br><br>In this lesson you will learn:<br>
            - Reading different types (formats) of data<br>
            - Inspecting the contents and structure of the dataset once you have read it in<br><br>
        </details>

II. **Complete the exercises**:
   * Each lesson above contains exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/oEFkv19DyJX7bGb1dw5d) the **day before the next class**.
   
### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

---

## Day 2

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 10:00 - 10:50 | Questions about self-learning | All |
| 10:50 - 11:15 | [In-class exercises](../activities/Day2_activities.md) + [Answer key](../activities/Day2_activities_answer_key.R) | Will |
| 11:15 - 12:00 | [Data Wrangling: Subsetting Vectors and Factors](../lessons/05_introR-data-wrangling.md) | Radhika |

### Before the next class:

I. Please **study the contents** and **work through all the code** within the following lessons:

   1. [Packages and libraries](../lessons/04_introR_packages.md)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>Base R is incredibly powerful, but it cannot do everything. R has been built to encourage community involvement in expanding functionality. Thousands of supplemental add-ons, also called "packages" have been contributed by the community. Each package comprises of several functions that enable users to perform their desired analysis. <br><br>This lesson will cover:<br>
             - Descriptions of package repositories<br>
             - Installing a package<br>
             - Loading a package<br>
             - Accessing the documention for your installed packages and getting help<br><br>
         </details>
        
   2. [Data wrangling: data frames, matrices and lists](../lessons/07_introR-data-wrangling2.md)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>In class we covered data wrangling (extracting/subsetting) information from single-dimensional objects (vectors, factors). The next step is to learn how to wrangle data in two-dimensional objects.<br><br>This lesson will cover:<br>
             - Examining and extracting values from two-dimensional data structures using indices, row names, or column names<br>
             - Retreiving information from lists<br><br>
         </details>

   3. [The %in% operator](../lessons/08_identifying-matching-elements.md)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>Very often you will have to compare two vectors to figure out if, and which, values are common between them. The <code>%in%</code> operator can be used for this purpose.<br><br>This lesson will cover:<br>
             - Implementing the <code>%in%</code> operator to evaluate two vectors<br>
             - Distinguishing <code>%in%</code> from <code>==</code> and other logical operators<br>
             - Using <code>any()</code> and <code>all()</code> functions<br><br>
         </details>

   4. [Reordering and matching](../lessons/09_reordering-to-match-datasets.md)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>Sometimes you will want to rearrange values within a vector (row names or column names). The <code>match()</code> function can be very powerful for this task.<br><br>This lesson will cover:<br>
             - Maunually rearranging values within a vector<br>
             - Implementing the <code>match()</code> function to automatically rearrange the values within a vector<br><br>
         </details>

   5. [Setting up a data frame to plot (+ the `map()` function)](../lessons/10_setting_up_to_plot.md)
       <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>We will be starting with visualization in the next class. To set up for this, you need to create a new metadata data frame with information from the counts data frame. You will need to use a function over every column within the counts data frame iteratively. You could do that manually, but it is error-prone; the <code>map()</code> family of functions makes this more efficient.<br><br>This lesson will cover:<br>
             - Utilizing <code>map_dbl()</code> to take the average of every column in a data frame<br>
             - Briefly discuss other functions within the <code>map()</code> family of functions<br>
             - Create a new data frame for plotting<br><br>
        </details>

II. **Complete the exercises**:
   * Each lesson above contains exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/7vXAqDV2tnyI2j6FoXxm) the **day before the next class**.

III. Prepare for **in-class exercise**:
   * Download the [animals.csv](https://raw.githubusercontent.com/hbctraining/Intro-to-R-flipped/master/data/animals.csv), by right-clicking on the link and "Save Link As..." to place the file into the `data` directory.
   * Read the `.csv` file into your environment and assign it to a variable called `animals`. **Be sure to check that your row names are the different animals.**
   * Save the R project when you close Rstudio.
   
### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

---

## Day 3

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 10:00 - 10:35 | Questions about self-learning lessons | All |
| 10:35 - 11:15 | [In-class exercises](../activities/Day3_activities.md) + [Answer key](../activities/Day3_activities_answer_key.R)| Radhika |
| 11:15 - 12:00 | [Plotting with the ggplot2 package](../lessons/11_ggplot2.md) | Will |

### Before the next class:

I. Please **study the contents** and **work through all the code** within the following lessons:

   1. [Using custom functions for consistent plots](../lessons/11b_Custom_Functions_ggplot2.md)
      <details>
        <summary><i>Click here for a preview of this lesson</i></summary>
          <br>When creating your plots in ggplot2 you may want to have consistent formatting (using <code>theme()</code> functions) across your plots, e.g. if you are generating plots for a manuscript. <br><br>This lesson will cover:<br>
            - Developing a custom function for creating consistently formatted plots<br>
        </details>
   2. [Generating a boxplot with ggplot2](../lessons/12_boxplot_exercise.md)
        <details>
         <summary><i>Click here for a preview of this lesson</i></summary>
           <br>Previously, you created a scatterplot using ggplot2. However, ggplot2 can be used to create a very wide variety of plots. One of the other frequently used plots you can create with ggplot2 is a barplot.<br><br>This lesson will cover:<br>
              - Creating and customizing a barplot using ggplot2<br>
         </details>
   3. [Writing to file and exporting plots](../lessons/13_exporting_data_and_plots.md)
         <details>
            <summary><i>Click here for a preview of this lesson</i></summary>
             <br>Now that you have completed some analysis in R, you will need to eventually export that work out of R/RStudio. R provides lots of flexibility in what and how you export your data and plots.<br><br>This lesson will cover:<br>
                - Exporting your figures from R using a variety of file formats<br>
                - Writing your data from R to a file<br>
          </details>
   4. [Finding help](../lessons/14_finding_help.md)
         <details>
            <summary><i>Click here for a preview of this lesson</i></summary>
             <br>Hopefully, this course has given you the basic tools you need to be successful when using R. However, it would be impossible to cover every aspect of R and you will need to be able to troubleshoot future issues as they arise.<br><br>This lesson will cover:<br>
                - Suggestions for how to best ask for help<br>
                - Where to look for help<br>
          </details>
   6. [Tidyverse](../lessons/15_tidyverse.md)
         <details>
            <summary><i>Click here for a preview of this lesson</i></summary>
             <br>The <a href="https://tidyverse.tidyverse.org/articles/paper.html">Tidyverse suite of integrated packages</a> are designed to work together to make common data science operations more user friendly. Tidyverse is becoming increasingly prevalent and it is necessary that R users are conversant in the basics of Tidyverse. We have already used two Tidyverse packages in this workshop (<code>ggplot2</code> and <code>purrr</code>) and in this lesson we will learn some key features from a few additional packages that make up Tidyverse. <br><br>This lesson will cover:<br>
                - Usage of pipes for connecting together multiple commands<br>
                - Tibbles for two-dimensional data storage<br>
                - Data wrangling within Tidyverse
          </details>

II. **Complete the exercises**:
   * Each lesson above contains exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/lLAKnQbTJfaPY92ZAW42) the **day before the next class**.
   
### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

---

## Day 4

| Time            |  Topic  | Instructor |
|:------------------------:|:------------------------------------------------:|:--------:|
| 10:00 - 10:35 | Questions about self-learning lessons | All |
| 10:35 - 11:15 | [In-class exercises](../activities/Day4_activities.md) + [Answer key](../activities/Day4_activities_answer_key.R) | Will |
| 11:15 - 11:45 | Discussion, Q & A | All |
| 11:45 - 12:00 | [Wrap Up](..//lectures/R_workshop_wrapup_all.pdf) | Radhika |

### Final Exercises
* [**Exercises**](https://hbctraining.github.io/Intro-to-R/homework/Intro_to_R_hw.html)

### Answer Keys
* [**Day 1 homework**](../homework/day1_hw_answer-key.R)
* [**Day 2 homework**](../homework/day2_hw_answer-key.R)
* [**Day 3 homework**](../homework/day3_hw_answer-key.R)
* [**Final exercises**](https://hbctraining.github.io/Intro-to-R/homework/Intro_to_R_key.html)

## Building on the basic R knowledge
* [DGE workshop](https://hbctraining.github.io/DGE_workshop_salmon/)
* [Single-cell RNA-seq workshop](https://hbctraining.github.io/scRNA-seq/)
* [RMarkdown](https://hbctraining.github.io/Training-modules/Rmarkdown/)
* [Functional analysis](https://hbctraining.github.io/Training-modules/DGE-functional-analysis/)
* [More ggplot2](https://hbctraining.github.io/publication_perfect/)
* [ggplot2 cookbook](http://www.cookbook-r.com/Graphs/)
* [Running R and Rstudio on O2](https://harvardmed.atlassian.net/wiki/spaces/O2/pages/1623425967/RStudio+on+O2)

## Resources
* [Online learning resources](https://hbctraining.github.io/bioinformatics_online/lists/online_trainings.html)
* [All hbctraining materials](https://hbctraining.github.io/main)

## Cheatsheets
* [base R cheatsheet](../cheatsheets/base-r.pdf)
* [RStudio cheatsheet](../cheatsheets/rstudio-ide.pdf)
* [ggplot2 cheatsheet](../cheatsheets/data-visualization-2.1.pdf)
