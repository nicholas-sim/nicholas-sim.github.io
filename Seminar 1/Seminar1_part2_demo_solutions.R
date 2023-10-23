# Seminar 1 Part 2
# R Operations

#################################
# R as a calculator
# The combine function c()
# Comparison operators
# Data types (and conversion)
# Paste and print
################################


# R as a calculator
x <- 2 
x*2
x^2
x %% 2
y<-5
x+y

# The combine function c()
x <- c(1,2,3)
y <- c(0,1,5)


# Comparison operators
x <= y
x == y
x != y

# Data types (and conversion)
z <- (x != y)
class(z)

x <- as.numeric(x)

# Paste and print
x<-1
y<-0

print(paste('My favorite number is', x, "but not", y))


########################################################
# Vectors (elements must belong to the same type)
# Sequence function "seq()"
# Names of the vector elements, "names()"
# Vector indexing
#######################################################


# vector construction and element naming
x <- c(1,2,3,4)
x <- seq(1, 5, 2)
names(x) <- c('mon','tue', 'wed')

# vector indexing
y <- 1:5
x[-c(1,3)]


##########################################
# Creating a Matrix Using matrix()
# Creating a Matrix Using cbind()
# Naming the columns and rows of a matrix
#########################################

# Creating a Matrix Using matrix()
x <- 1:12
x <- matrix(x, nrow = 4, byrow = TRUE)


# Creating a Matrix Using cbind()
stock1 <- 40+rchisq(5,2)
stock1
stock2 <- 20+rchisq(5,10)
stock2

stockdat <- cbind(stock1, stock2)


# Naming the columns and rows of a matrix
rownames(stockdat) <- c("Mon","Tue","Wed", "Thu", "Fri") 
colnames(stockdat) <- c("AAPL", "GOOG")
stockdat

##########################################################
# Referencing elements in a matrix
# Slicing a matrix
# Summarizing a matrix using summary()
# Calculating means using rowMeans(), rowSums(), colMeans(), colSums().
# Recycling property (recycling elements in the shorter vector)
##########################################################

# Referencing elements in a matrix
stockdat[c(1,3), ] # Referencing rows 1 and 3, with all columns

# Slicing a matrix
stockdat[1:3,]

# Calculating means using rowMeans(), rowSums(), colMeans(), colSums().
rowMeans(stockdat)
colMeans(stockdat)


# Recycling property (recycling elements in the shorter vector)
x <- 1:12
y <- 1:3
cbind(x,y) # values of y recycled.





############################################################
# Exercise 1
# Construct a vector s1 that contains the numbers 3 and 4. Test if s1 is equal to 4. What do you observe?
# Convert the vector s1 to a character vector. Call it s2. Test if s2 is equal to 4. How about equal to "4"?
############################################################


s1 <- c(3,4)
s1 == 4

s2 <- as.character(s1)
s2 == 4
s2 == "4"


################################################################
# Exercise 2
# John, Jim, Jane are 161cm, 174cm, 182cm tall, respectively. 
# Create a vector containing their heights. 
# Name each element in the vector by the names of the individuals. 
# How would you subset the vector to contain only the heights of John and Jim?
################################################################
h <- c(161,174,182)

names(h) <- c("John","Jim", "Jane")

h[c(1,3)]









