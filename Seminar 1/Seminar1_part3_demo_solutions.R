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

set.seed(101)
x <- rnorm(10, mean =1, sd =3)
x

# Write a simple function


outthis <- function(x = "nothing"){
    print(paste("You have entered:", x))
}

outthis("Nicholas")

add2 <- function(x = 0) {
    x = x+ 2
    return(x)
  }

add2(3)



########
# List
#######

# Combining different objects into a list

# Assigning names to items in a list


vec <- 1:5
mat <- matrix(1:12, nrow =3)

mylist1 <- list(vec, mat)

mylist2 <- list(myvec = vec,mymat = mat)

mylist2$mymat


################
# Flow Controls
###############

# Logical Operators, AND (&) OR (|) NOT (!)
# if, elseif and else 
# ifelse() function
# for loop
# while loop - for iterations
# Writing Our Own Functions

#############################################
# Exercise 1
# Suppose we want to assign a certain statement to the current weather, measured by degrees Celsius.

# If the temperature is greater than 34 degrees C, we want to print out
# "The weather is very hot. Please stay indoors."

# If the temperature is between 29 and 34 degrees C, we want to print out
# "The weather is hot. Please use sunscreen if you need to be outdoors."

# If the temperature is less than 29 degrees C, we want to print out 
# "The weather is relatively mild."
#############################################

temp <- 21

if (temp > 34){
  print("The weather is very hot. Please stay indoors.")
} else if(temp>=29 & temp <=34){
             print("The weather is hot. Please use sunscreen if you need to be outdoors.")
} else print("The weather is relatively mild.")


install.packages("tidyverse")

#########################################################
#Exercise 2
# Mary has two children - Joaqium and Elizabeth. Let's construct a vector, called mary.children, 
# that records their gender, where its first element is B and the second element is G.

# mary.children <- c('B', 'G')

# Let's do the following using if, else if and else statements.

# If Mary has no daughters, print out
# "Mary's children are both boys."
# If Mary has one daughter, print out
# "Mary has one girl and one boy."
# If Mary has two daughters, print out
# "Mary's children are both girls."
#####################################################



num_girls <- length(which(mary.children == 'G'))

if(num_girls == 0){
  print("Mary's children are both boys.")
}else if(num_girls == 1){
  print("Mary has one girl and one boy.")
} else {print("Mary's children are both girls.")}




#########################################################
#Exercise 3
# Repeat Exercise 2 by counting the number of boys/girls
# using a for loop and if and else statement
#####################################################

mary.children <- c('B', 'G')

num_boys <- 0 #initialization
num_girls <- 0

# in  - membership operator

for(i in 1:2){
  if(mary.children[i] == 'B'){
    num_boys <- num_boys + 1
  } else if(mary.children[i] == 'G'){
    num_girls <- num_girls + 1
  }
}


num_boys
num_girls

# OR

for(i in mary.children){
  if(i == 'B'){num_boys = num_boys +1 }
  else {num_girls = num_girls +1}
}



###############################
### More on the "for" loop

v <- seq(1,12,2)
v
length(v)

for(nic in v ){
  print(nic)
}


for(nic in v ){
  print(paste("nic is ", nic, "years old"))
}