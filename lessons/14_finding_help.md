---
title: Troubleshooting and finding help
author: Data Carpentry contributors, Mary Piper
date: "Wednesday, April 22, 2020"
---
Approximate time: 30 min

## Learning Objectives

* Identify different R-specific external sources to help with troubleshooting errors and obtaining more information about functions and packages.

## Asking for help

The key to getting help from someone is for them to grasp your problem rapidly. You should make it as easy as possible to pinpoint where the issue might be.

1. Try to **use the correct words** to describe your problem. For instance, a package is not the same thing as a library. Most people will understand what you meant, but others have really strong feelings about the difference in meaning. The key point is that it can make things confusing for people trying to help you. **Be as precise as possible when describing your problem.**

2. **Always include the output of `sessionInfo()`** as it provides critical information about your platform, the versions of R and the packages that you are using, and other information that can be very helpful to understand your problem.

	```r
	sessionInfo()  #This time it is not interchangeable with search()
	```

3. If possible, **reproduce the problem using a very small `data.frame`** instead of your 50,000 rows and 10,000 columns one, provide the small one with the description of your problem. When appropriate, try to generalize what you are doing so even people who are not in your field can understand the question. 
	- To share an object with someone else, you can provide either the raw file (i.e., your CSV file) with your script up to the point of the error (and after removing everything that is not relevant to your issue). Alternatively, in particular if your questions is not related to a `data.frame`, you can save any other R data structure that you have in your environment to a file:

		```r
		# DO NOT RUN THIS!

		save(iris, file="/tmp/iris.RData")
		```

		The content of this `.RData` file is not human readable and cannot be posted directly on stackoverflow. It can, however, be emailed to someone who can read it with this command:

		```r
		# DO NOT RUN THIS!

		load(file="~/Downloads/iris.RData")
		```

### Where to ask for help?

* **Google** is often your best friend for finding answers to specific questions regarding R. 
	- Cryptic error messages are very common in R - it is very likely that someone else has encountered this problem already! Start by googling the error message. However, this doesn't always work because often, package developers rely on the error catching provided by R. You end up with general error messages that might not be very helpful to diagnose a problem (e.g. "subscript out of bounds").
* **Stackoverflow**: Search using the `[r]` tag. Most questions have already been answered, but the challenge is to use the right words in the search to find the answers: [http://stackoverflow.com/questions/tagged/r](http://stackoverflow.com/questions/tagged/r). If your question hasn't been answered before and is well crafted, chances are you will get an answer in less than 5 min.
* **Your friendly colleagues**: if you know someone with more experience than you, they might be able and willing to help you.
* **AI tools**: You can submit your line of code and the resulting error to ChatGPT or other tools and ask it to interpret the error for you, or ask ChatGPT to write R code to accomplish the task you are struggling with and see where your solutions differ. Importantly, if you use any code written by AI, make sure you review the generated code line by line to check that it works and that you understand what it is doing!
* **The [R-help](https://stat.ethz.ch/mailman/listinfo/r-help)**: it is read by a lot of people (including most of the R core team), a lot of people post to it, but the tone can be pretty dry, and it is not always very welcoming to new users. If your question is valid, you are likely to get an answer very fast but don't expect that it will come with smiley faces. Also, here more than everywhere else, be sure to use correct vocabulary (otherwise you might get an answer pointing to the misuse of your words rather than answering your question). You will also have more success if your question is about a base function rather than a specific package.
* **The [Bioconductor support site](https://support.bioconductor.org/)**. This is very useful and if you tag your post, there is a high likelihood of getting an answer from the developer.
* If your question is about a specific package, see if there is a mailing list for it. Usually it's included in the DESCRIPTION file of the package that can be accessed using `packageDescription("name-of-package")`. You may also want to try to **email the author** of the package directly.
* There are also some **topic-specific mailing lists** (GIS, phylogenetics, etc...), the complete list is [here](http://www.r-project.org/mail.html).
  
### More resources
* The [Posting Guide](http://www.r-project.org/posting-guide.html) for the R mailing lists.
* [How to ask for R help](http://blog.revolutionanalytics.com/2014/01/how-to-ask-for-r-help.html) useful guidelines
* The [Introduction to R](http://cran.r-project.org/doc/manuals/R-intro.pdf) can also be dense for people with little programming experience but it is a good place to understand the underpinnings of the R language.
* The [R FAQ](http://cran.r-project.org/doc/FAQ/R-FAQ.html) is dense and technical but it is full of useful information.

***

**Exercises**

1. Run the following code chunks and fix all of the errors. (Note: The code chunks are independent from one another.)

	```r
	# Create vector of work days
	work_days <- c(Monday, Tuesday, Wednesday, Thursday, Friday)
	```
	
	```r
	# Create a function to round the output of the sum function
	round_the_sum <- function(x){
	        return(round(sum(x))
	}
	```
	
	```r
	# Create a function to add together three numbers
	add_numbers <- function(x,y,z){
	        sum(x,y,z)
	}
	
	add_numbers(5,9)
	
	```

2. You try to install a package and you get the following error message:

	```
	Error: package or namespace load failed for 'Seurat' in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]): there is no package called 'multtest'
	```
	
	What would you do to remedy the error?
	
3. You would like to ask for help on an online forum. To do this you want the users of the forum to reproduce your problem, so you want to provide them as much relevant information and data as possible.

	- You want to provide them with the list of packages that you currently have loaded, the version of R, your OS and package versions. Use the appropriate function(s) to obtain this information.
	- You want to also provide a small data frame that reproduces the error (if working with a large data frame, you'll need to subset it down to something small). For this exercise use the data frame `df`, and save it as an RData object called `df.RData`. 
	- What code should the people looking at your help request should use to read in `df.RData`?

---

*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*

* *The materials used in this lesson are adapted from work that is Copyright © Data Carpentry (http://datacarpentry.org/). 
All Data Carpentry instructional material is made available under the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0).*

