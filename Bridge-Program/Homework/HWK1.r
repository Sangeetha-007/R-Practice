---
title: "R-Homework1-Sangeetha"
output: html_document
---

```{r setup}
knitr::opts_chunk$set(echo = TRUE)
```

### R Markdown

#### 1. Write a loop that calculates 12-factorial
```{r}
input<-12 
for(i in 1:(input-1)){
    input<-input*i        
    #print(input)  
    #input<-input-1
  }
print(input)   

```

#### 2. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5. 


```{r}
num_vec=c(20, 25, 30, 35, 40, 45, 50)
num_vec
```

#### 3. Create the function “quadratic” that takes a trio of input numbers a, b, and c and solve the quadratic equation. The function should print as output the two solutions
```{r}
quadratic_equation <- function(a, b, c) {
  partial_formula<- (b^2) - (4*a*c)
  if(partial_formula < 0) {
    return(paste0("There are no real roots."))
  }
  else if (partial_formula > 0){
    solution1 <- (-b + sqrt(partial_formula)) / (2 * a)
    solution2 <- (-b - sqrt(partial_formula)) / (2 * a)
    #print(solution1)
    #print(solution2)
    return(c(solution1, solution2))
  }
  else 
    solution1 <- (-b) / (2*a)
    return(paste0("Quadratic equation has only one root. Root is ", solution1))
    
}
quadratic_equation(a=2, b=4, c=2)
```
