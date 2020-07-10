#### self-learning 1 - Using custom functions for consistent plots
# Please walk through all the codes in the lesson

#### self-learning 2 - Generating a Boxplot with ggplot2
#1. Generate a boxplot using the data in the new_metadata dataframe. 

#2. Changing default colors
#Add a new layer scale_color_manual(values=c("purple","orange")).
#Do you observe a change?

#Replace scale_color_manual(values=c("purple","orange")) with scale_fill_manual(values=c("purple","orange")).
#Do you observe a change?

#In the scatterplot we drew in class, add a new layer scale_color_manual(values=c("purple","orange")), do you observe a difference?

#What do you think is the difference between scale_color_manual() and scale_fill_manual()?

#Back in your boxplot code, change the colors in the scale_fill_manual() layer to be your 2 favorite colors.
#Are there any colors that you tried that did not work?

#OPTIONAL Exercise:
#Find the hexadecimal code for your 2 favourite colors (from exercise 3 above) and replace the color names with the hexadecimal codes within the ggplot2 code chunk.

#### self-learning 3 - Writing to file and exporting plots
# Please walk through all the codes in the lesson

#### self-learning 4 - Finding help
#1. Run the following code chunks and fix all of the errors. (Note: The code chunks are independent from one another.)

# # Create vector of work days
# work_days <- c(Monday, Tuesday, Wednesday, Thursday, Friday)

# # Create a function to round the output of the sum function
# round_the_sum <- function(x){
#   return(round(sum(x))
# }

# # Create a function to add together three numbers
# add_numbers <- function(x,y,z){
#   sum(x,y,z)
# }
# add_numbers(5,9)

#2. You try to install a package and you get the following error message:
#   
#   Error: package or namespace load failed for 'Seurat' in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]): there is no package called 'multtest'
# What would you do to remedy the error?

#3. You would like to ask for help on an online forum. To do this you want the users of the forum to reproduce your problem, so you want to provide them as much relevant information and data as possible.
# You want to provide them with the list of packages that you currently have loaded, the version of R, your OS and package versions. Use the appropriate function(s) to obtain this information.

# You want to also provide a small data frame that reproduces the error (if working with a large data frame, you'll need to subset it down to something small). For this exercise use the data frame df, and save it as an RData object called df.RData.

# What code should the people looking at your help request should use to read in df.RData?

#### self-learning 5 - Tidyverse
#1. Extract the replicate column from the metadata data frame (use the $ notation) and save the values to a vector named rep_number.

#2. Use the pipe (%>%) to perform two steps in a single line:
#Turn rep_number into a factor.
#Use the head() function to return the first six values of the rep_number factor.

#3. We would like to perform an additional round of filtering to only keep the most specific GO terms.
#For bp_oe, use the filter() function to only keep those rows where the relative.depth is greater than 4.
#Save output to overwrite our bp_oe variable.

#4. Rename the intersection column to genes to reflect the fact that these are the DE genes associated with the GO process.

#5. Create a column in bp_oe called term_percent to determine the percent of DE genes associated with the GO term relative to the total number of genes associated with the GO term (overlap.size / term.size)
