library(readxl)

setwd("/Users/Sangeetha/Downloads/")


actuaries <- read_excel("Actuaries-Climate-Index-Values-Through-May-2017_Spring-2017_English.xlsx", sheet = 2)

actuaries <- actuaries[, -1]
actuaries <- na.omit(actuaries)

#two data structures {years, months}
#2 for loops
#concatenation in inner loop

years <- 1961:2017
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")


field_names <- c()

for(i in 1:length(years)){
  
  #print(years[i])
  
  for(j in 1:length(months)){
    
    tmp <- paste0(months[j], "_", years[i])
    #print(tmp)
    
    field_names <- c(field_names, tmp)
    
  }
  
}

#trim the last 7 months

field_names <- field_names[1:(length(field_names)-7)]

colnames(actuaries) <- field_names

