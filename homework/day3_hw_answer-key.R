## ggplot2 exercise

# Creating a boxplot
#1. boxplot
ggplot(new_metadata) +
  geom_boxplot(aes(x = genotype, y = samplemeans, fill = celltype)) +
  ggtitle("Genotype differences in average gene expression") +
  xlab("Genotype") +
  ylab("Mean expression") +
  theme_bw() +
  theme(axis.title = element_text(size = rel(1.25))) +
  theme(plot.title=element_text(hjust = 0.5, size = rel(1.5)))
  

#2. Changing default colors

#Add a new layer scale_color_manual(values=c("purple","orange")).
#Do you observe a change?
    ## No

#Replace scale_color_manual(values=c("purple","orange")) with scale_fill_manual(values=c("purple","orange")).
#Do you observe a change?
    ## Yes

#In the scatterplot we drew in class, add a new layer scale_color_manual(values=c("purple","orange")), do you observe a difference?
    ## Yes

#What do you think is the difference between scale_color_manual() and scale_fill_manual()?
    ## scale_color_manual() works with scatter plot, and scale_fill_#manual() works with box plot is what it appears to be
    ## 
    ## Actually, scale_color_manual() works if the "color" argument is used , whereas scale_fill_manual() works if the "fill" argument is used


## Boxplot using "color" instead of "fill"
ggplot(new_metadata) +
  geom_boxplot(aes(x = genotype, y = samplemeans, color = celltype)) +
  ggtitle("Genotype differences in average gene expression") +
  xlab("Genotype") +
  ylab("Mean expression") +
  theme_bw() +
  theme(axis.title = element_text(size = rel(1.25))) +
  theme(plot.title=element_text(hjust = 0.5, size = rel(1.5))) +
  scale_color_manual(values=c("purple","orange"))


#Back in your boxplot code, change the colors in the scale_fill_manual() layer to be your 2 favorite colors.
#Are there any colors that you tried that did not work?

  ggplot(new_metadata) +
  geom_boxplot(aes(x = genotype, y = samplemeans, fill = celltype)) +
  ggtitle("Genotype differences in average gene expression") +
  xlab("Genotype") +
  ylab("Mean expression") +
  theme_bw() +
  theme(axis.title = element_text(size = rel(1.25))) +
  theme(plot.title=element_text(hjust = 0.5, size = rel(1.5))) +
  scale_fill_manual(values=c("red", "blue"))

#OPTIONAL Exercise:
#Find the hexadecimal code for your 2 favourite colors (from exercise 3 above) and replace the color names with the hexadecimal codes within the ggplot2 code chunk.
scale_fill_manual(values=c("#FF3333", "#3333FF"))

# Finding help
#Exercises
#Run the following code chunks and fix all of the errors. (Note: The code chunks are independent from one another.)
# Create vector of work days
#work_days <- c(Monday, Tuesday, Wednesday, Thursday, Friday)
work_days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Create a function to round the output of the sum function
#round_the_sum <- function(x){
#  return(round(sum(x))
#}
round_the_sum <- function(x){
  return(round(sum(x)))
}

# Create a function to add together three numbers
#add_numbers <- function(x,y,z){
#  sum(x,y,z)
#}
#add_numbers(5,9)
add_numbers(5,9,6)

#You try to install a package and you get the following error message:
#Error: package or namespace load failed for 'Seurat' in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]): there is no package called 'multtest'
#What would you do to remedy the error?
## Install multtest first, and then install seurat package:
BiocManager::install('multtest')
install.packages('Seurat')

#You would like to ask for help on an online forum. To do this you want the users of the forum to reproduce your problem, so you want to provide them as much relevant information and data as possible.
#You want to provide them with the list of packages that you currently have loaded, the version of R, your OS and package versions. Use the appropriate function(s) to obtain this information.
sessionInfo()
#You want to also provide a small data frame that reproduces the error (if working with a large data frame, you’ll need to subset it down to something small). For this exercse use the data frame df, and save it as an RData object called df.RData.
save(df, file = "data/df.RData")
#What code should the people looking at your help request should use to read in df.RData?
load(file="data/df.RData")

# Tidyverse
#Extract the replicate column from the metadata data frame (use the $ notation) and save the values to a vector named rep_number.
rep_number <- metadata$replicate

#Use the pipe (%>%) to perform two steps in a single line:
#Turn rep_number into a factor.
#Use the head() function to return the first six values of the rep_number factor.
factor(rep_number) %>% head()

#We would like to perform an additional round of filtering to only keep the most specific GO terms.
#For bp_oe, use the filter() function to only keep those rows where the relative.depth is greater than 4.
#Save output to overwrite our bp_oe variable.
bp_oe <- bp_oe %>% 
  filter(relative.depth > 4)

# Using Base R 
# bp_oe <- subset(bp_oe, relative.depth > 4)

#Rename the intersection column to genes to reflect the fact that these are the DE genes associated with the GO process.
bp_oe <- bp_oe %>% 
  dplyr::rename(genes = intersection)

# Using Base R 
# colnames(bp_oe)[colnames(bp_oe) == "intersection"] <- "genes"

#Create a column in bp_oe called term_percent to determine the percent of DE genes associated with the GO term relative to the total number of genes associated with the GO term (overlap.size / term.size)
bp_oe <- bp_oe %>% 
  mutate(term_percent = overlap.size / term.size)

# Using Base R 
# bp_oe <- cbind(bp_oe, term_percent = bp_oe$overlap.size / bp_oe$term.size)

