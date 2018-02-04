
R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.68 (7288) x86_64-apple-darwin13.4.0]

[Workspace restored from /Users/Sangeetha/.RData]
[History restored from /Users/Sangeetha/.Rapp.history]

> ls()
 [1] "df"             "g1"             "g2"             "grade"          "mydata"         "orderedclasses"
 [7] "p"              "r"              "statescore"     "subject"        "theme_heat"     "x"             
[13] "xmax"           "xmin"           "y"              "Yamaguchi87"    "ymax"           "ymin"          
> load(".RData")

This version of R is 3.3.2
There is a newer version of R on CRAN which is 3.4.3 
> 
Do you want to visit CRAN now? y
clear
Error: object 'clear' not found
> #integer
> x<- 2L
> x
[1] 2
> typeof(x)
[1] "integer"
> #double
> y <- 2.5
> y
[1] 2.5
> typeof(y)
[1] "double"
> z <-3+2i
> typeof(z)
[1] "complex"
> 
> a<-"h"
> typeof(h)
Error in typeof(h) : object 'h' not found
> a <- "h"
> typeof(a)
[1] "character"
> q1 <- TRUE
> typeof(q1)
[1] "logical"
> A <- 10
> B <-5
> C <- A+B
> C
[1] 15
> var1 <-2.5
> var2 <-4
> 
> 
> 
> 
> result <- var1/var2
> result
[1] 0.625
> answer <-sqrt(4)
> answer
[1] 2
> greeting <- "Hello"
> name <- "Bob"
> message <- paste(greeting, name)
> 
> message
[1] "Hello Bob"
> 