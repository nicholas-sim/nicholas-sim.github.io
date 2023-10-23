# Seminar 1 Part 2
# R Operations

#################################
# Hands-On Activity 1
#
# R as a calculator
# The combine function c()
# Comparison operators
# Data types (and conversion)
# Paste and print
################################

# R as a calculator
5*2

z <- 5


# The combine function c()

v.test <- c("A","B", "A")

# Comparison operators

v.test == "A"

v1>2


# Data types (and conversion)
v1 <- as.character(v1)


# Paste and print

paste0(1,2,3)





############################################################
# Exercise 1
# Construct a vector s1 that contains the numbers 3 and 4. Test if s1 is equal to 4. What do you observe?
# Convert the vector s1 to a character vector. Call it s2. Test if s2 is equal to 4. How about equal to "4"?
############################################################



s1 <- c(3,4)
s1 == 4

s2 <-as.character(s1)
s2 == 4
s2 == "4"

########################################################
# Hands-On Activity 2
#
# Vectors (elements must belong to the same type)
# Sequence function "seq()"
# Names of the vector elements, "names()"
# Vector indexing
#######################################################

# vector construction and element naming

v.num <- sample(x = 5,replace = T)
v.num[2:4]

names(v.num) <- c("a","b","c", "d", "e")
v.num[-2]

vec <- sample(x = 1:100,size = 5,replace = TRUE)

str(vec)

names(vec) <- LETTERS[1:5]
vec[ c(TRUE, FALSE, T ,FALSE,FALSE) ]

select.elements <- vec >= 40
select.elements
vec[select.elements]

vec[vec >= 40]


vec.math <- sample(x = 30:100, size = 5, replace = TRUE)
vec.eng <- sample(x = 30:100, size = 5, replace = TRUE)

scores <- cbind(vec.math,vec.eng)

scores[c(T, F, T , F, F) , ]

scores[,"vec.eng"] >= 75

scores[scores[,"vec.eng"] >= 75, ]


# vector indexing




################################################################
# Exercise 2
# John, Jim, Jane are 161cm, 174cm, 182cm tall, respectively. 
# Create a vector containing their heights. 
# Name each element in the vector by the names of the individuals. 
# How would you subset the vector to contain only the heights of John and Jim?
################################################################

heights <- c(161,174,182)
heights
names(heights) <- c("John", "Jim", "Jane")
heights[c(TRUE, TRUE, F)]
heights[c("John", "JIm")]


##########################################
# Hands-On Activity 3
#
# Creating a matrix Using matrix()
# Creating a matrix Using cbind()
# Naming the columns and rows of a matrix
#########################################

# Creating a matrix Using matrix()
mat <- matrix(data = 1:12,nrow = 4)
mat[2:4,c(1,2)]

# Creating a matrix Using cbind()
vec1 <- sample(100, size = 10, replace = T)
vec2 <- sample(100, size = 10, replace = T)
mat2 <- cbind(vec1, vec2)


# Naming the columns and rows of a matrix
colnames(mat) <- c("a","b","c")
mat[,c("b")]



##########################################################
# Hands-On Activity 4
#
# Referencing elements in a matrix
# Slicing a matrix
# Summarizing a matrix using summary()
# Calculating means using rowMeans(), rowSums(), colMeans(), colSums().
# Recycling property (recycling elements in the shorter vector)
##########################################################

# Referencing the elements in a matrix

?head
head(mat2,3)
colnames(mat2)<-c("math","science")
mat2

# Slicing a matrix
mat2[2:4,]
mat2

# Calculating means using rowMeans(), rowSums(), colMeans(), colSums().

rowMeans(mat2)
# Recycling property (recycling elements in the shorter vector)


mat[2:4,c(1,3)]










