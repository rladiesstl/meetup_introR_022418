# Step 1: Check your packages tab. 
#         If you already see "dplyr" and "ggplot2":
#         add a '#' in front of lines 7 and 8 (#install.packages)

# Step 2: Copy the following code EXACTLY!

install.packages("dplyr")
install.packages("ggplot2")

# Lines 11 - 12 loads 2 different packages
library(dplyr) 
library(ggplot2)

# Assign the built-in starwars data.frame as "empire" so we can 
# reference it later. FYI, technically the starwars dataset is from the "dplyr"
# package
empire <- starwars

# Select the appropriate rows and columns using indexing.
# Store it as an object called "empire" (this overwrites)
empire <- empire[c(1:5, 10, 13, 14, 19, 21), c(1:3, 8:10)]

# Make the species column into a factor, rather than a character
# Note that you need to store it back again as the column within
# the empire data.frame.
empire$species <- factor(empire$species)

# Make sure that empire is actually a data.frame, and not a different
# class of object
empire <- data.frame(empire)

# Plot usign ggplot2!
ggplot(data = empire, aes(x = mass, y = height)) +
  geom_point(aes(size = mass, color = species), alpha = .5) +
  labs(title = "Star Wars Characters", subtitle = "by size") +
  scale_size(guide = "none")

############################################################
##### Code from slides #####
############################################################

# Let's make 4 independent vectors where the first position
# corresponds to the first subject.
subject <- c("Sub1", "Sub2", "Sub3", "Sub4", "Sub5") # characters
bobsBurgers <- c(TRUE, FALSE, TRUE, TRUE, FALSE) # logical/boolean
countries <- c(10, 3, 3, 3, 5) # numeric/integer
personType <- c("dog", "dog", "dog", "dog", "ant") # character/factor

# Now let's combine these 4 vectors into a data.frame so that
# R knows that there is structure to rows and columns
workshop <- data.frame(subject, bobsBurgers, countries, personType)

# If you want to change the column names of a data.frame that you're
# creating, you can do something like this:
workshop <- data.frame(Sub = subject,
                       Bobs_Burgers = bobsBurgers,
                       Counts = countries,
                       ClickHoleSurvey = personType)

# Use R as a glorified calculator
chickens <- 5
cows <- 4
animals <- chickens + cows

value <- sqrt(85)
value
print(value)

# Functions have 3 parts:
# 1) Function name, followed by parentheses.
# 2) Input/arguments. Things you are acting upon, plus specifics
# of what you want the function to actually do.
# 3) Output. Will not be stored unless you assign it to something.
mean(workshop$countries)

# USE THE ARGUMENT NAMES!!!!!!!!
round(x = 5.9308324230, digits = 3)

# If you don't use argument names, then the order in which you 
# list the items matters. For example, the following erroneously results in 3
round(3, 5.9308324230)

# If you use argument names, then order doesn't matter.
round(digits = 3, x = 5.9308324230)

# Exercise for Sequence function
seq(from = 0, to = 100)
seq(from = 0, to = 100, by = 10)
seq(from = 0, to = 100, by = 7)

# Final exercise: Putting it all togeether
height_z <- scale(x = empire$height) # get z-scores of height
mass_z <- scale(x = empire$mass) # get z-scores of mass

empire_z <- data.frame(height_z, mass_z) # combine these into a data.frame

# Plot function
plot(x = empire_z$mass_z, y = empire_z$height_z, # what should go on x and y axes?
     main = "Z-Scores from Starwars", # title
     xlab = "Mass (z-scores)", # label for x-axis
     ylab = "Height (z-scores)", # label for y-axis
     type = "l") # change the type of plot to lines (default is p for points)

###### Miscellaneous Notes: #####
# Use pound/hashtags to make comments. ANNOTATE YOUR CODE!!!

# In Global Environment, click on line of data.frame to view it. This calls the
# View() function. If you don't want to click, you can always use this function
# in either the console or in a script.

# In Global Environment, click on blue arrow for data.frames (or lists). It will
# show you all the variables in the data.frame. Next to it will be the type of
# object class (i.e., "chr", "num", or "factor")

# Use tab to autocomplete

# In the console, use the up arrow to see the last line you ran. This is helpful
# if you run a line of code and make a tiny mistake that you can easily fix. 





