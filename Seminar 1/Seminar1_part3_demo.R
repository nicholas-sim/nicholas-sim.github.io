# Seminar 1 Part 3
# R Programming

# We will cover the following
# Function
# List
# Flow Controls

############
# Function
############
# common functions, rnorm, head, etc
# Write a simple function


#####################
# Hands-On Activity 1 
#
# List
######################

# Combining different objects into a listv
vec1 <- rnorm(10)
mat1 <- matrix(sample(100,12, replace = T), nrow = 3)

mylist <- list(vec1, mat1)
mylist[[1]][2:4]


# Assigning names to items in a list

mynamedlist <- list(myvec = vec1, mymat = mat1)


################
# Flow Controls
###############

# Logical Operators, AND (&) OR (|) NOT (!)
# if, elseif and else 
# ifelse() function
# for loop
# while loop - for iterations (see notes)
# Writing Our Own Functions (see notes)


#############################################
# Exercise 1
# Suppose we want to assign a certain statement to the current weather, measured by degrees Celsius.

# If the temperature is greater than 38 degrees C, we want to print out
# "The weather is very hot. Please stay indoors."

# If the temperature is between 30 and 37 degrees C, we want to print out
# "The weather is hot. Please use sunscreen if you need to be outdoors."

# If the temperature is less than 30 degrees C, we want to print out 
# "The weather is relatively mild."
#############################################

temp.now <- 28
if(temp.now>38){ print("The weather is very hot. Please stay indoors.")
  } else if(temp.now >= 30 & temp.now <=37){ 
  print("The weather is hot. Please use sunscreen if you need to be outdoors.")
} else {
  print("The weather is relatively mild.")
}

#########################################################
#Exercise 2
# Mary has two children - Joaqium and Elizabeth. 
# Let's construct a vector, called mary.children, 
# that records their gender, where its first element is B 
# and the second element is G.

mary.children <- c('B', 'G')

# Let's do the following using if, else if and else statements.

# If Mary has no daughters, print out
# "Mary's children are both boys."
# If Mary has one daughter, print out
# "Mary has one girl and one boy."
# If Mary has two daughters, print out
# "Mary's children are both girls."
#####################################################

num.girls <- sum(mary.children == "G")
num.girls

if(num.girls == 0){print("Mary's children are both boys.")
}else if (num.girls == 1){
    print("Mary has one girl and one boy.")
} else if(num.girls == 2 ){ 
    print("Mary's children are both girls.")}


########################################################################
#Exercise 3
# Repeat Exercise 2 by counting the number of boys/girls
# Create a "zero" vector for boys and girls
# i.e. boys <- 0 and girls <- 0
# We will use boys and girls as counters for the number of boys and girls
# Use a "for" loop to loop over the length of the mary.children
# While the loop is operating, count of boys and girls using the
# if and else statement
#########################################################################






########################################################################
#Exercise 4 (On your own)
# Repeat Exercise 3 by counting the number of boys/girls
# Create a "zero" vector for boys and girls
# i.e. boys <- 0 and girls <- 0
# Create a index, i=1
# We will use boys and girls as counters for the number of boys and girls
# Use a "while" loop to loop over the length of the mary.children
# While the loop is operating, count of boys and girls using the
# if and else statement
# Be sure to increase the counter, i = i+1. Otherwise, the while loop 
# will not terminate!
#########################################################################


# Vector (1 Boy and 3 Girls)
mary.children <- c('B', 'G', 'G', 'G')

# Counter
boys <- 0
girls <- 0
i=1

# while loop
while(i<=length(mary.children)){
  if(mary.children[i] == 'B'){boys = boys +1 
  } else {girls = girls+1}
  i=i+1
}

# Results
boys
girls
