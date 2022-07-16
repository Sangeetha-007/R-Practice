#Create a vector that contains 20 numbers. (You may choose whatever numbers you like, but make sure
#there are some duplicates.)
a<-1:20
a
b<- c(2,3,2,4,5,6,6,7,8,9,10)
b
#Use R to convert the vector from question 1 into a character vector.
b<-as.character(b)
b
#Use R to convert the vector from question 1 into a vector of factors.
b<- c(2,3,2,4,5,6,6,7,8,9,10)
b
b<-as.factor(b)
b
# Use R to show how many levels the vector in the previous question has
table(b) #wrong
nlevels(b) #correct, nlevels: The Number of Levels of a Factor
#Use R to create a vector that takes the vector from question 1 and performs on it the formula 3𝑥𝑥2 − 4𝑥𝑥 + 1.
'''vec<- c(2,3,2,4,5,6,6,7,8,9,10)
for (i in vec)
  new<-c(3*sqrt(i)-4*i+1)
print(new) '''

numVec <- c(1:8,7:14,7:10)
numVec <- 3 * numVec ^ 2 - 4 * numVec + 1
numVec

#Create a named list. That is, create a list with several elements that are each able to be referenced by name.
my_list <- list(rank=1:5, names = c("Sangeetha", "Sasikumar"))
print(my_list[5])
#Create a data frame with four columns – one each character, factor (with three levels), numeric, and date.
#Your data frame should have at least 10 observations (rows).
df <- data.frame(first_column, second_column, third_column, fourth_column)


