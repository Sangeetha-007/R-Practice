
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

> first <-read.csv(file.choose())
> install.packages("ggplot2")
--- Please select a CRAN mirror for use in this session ---
starting httpd help server ... done
trying URL 'https://cran.cnr.berkeley.edu/bin/macosx/mavericks/contrib/3.3/ggplot2_2.2.0.tgz'
Content type 'application/x-gzip' length 2760128 bytes (2.6 MB)
==================================================
downloaded 2.6 MB


The downloaded binary packages are in
	/var/folders/v5/pf0cd_bn0v3dq8mgprwymvkm0000gn/T//Rtmp9v47hk/downloaded_packages
> ggplot(first=data, aes(x=PassengerId, y=Survived, color=clarity))+geom_point()
Error: ggplot2 doesn't know how to deal with data of class uneval
> first <-read.csv(file.choose())
> 
> ggplot(data=first, aes(x=PassengerId, y=Survived, color=clarity))+geom_point()
Error in eval(expr, envir, enclos) : object 'clarity' not found
> ggplot(data=first [first$PassengerId<2.5], aes(x=PassengerId, y=Survived, color=clarity))+geom_point(alpha=0.1)+geom_smooth
Error: Don't know how to add geom_smooth to a plot
> > ggplot(data=first [first$PassengerId<2.5], aes(x=PassengerId, y=Survived, color=clarity))+geom_point(alpha=0.1)
Error: unexpected '>' in ">"
> first <-read.csv(file.choose())
> ggplot(data=first, aes(x=Age, y=Sex, color=clarity))+geom_point()
Error in eval(expr, envir, enclos) : object 'clarity' not found
> mydata <-read.csv(file.choose())
> install.packages('ggplot2')
trying URL 'https://cran.cnr.berkeley.edu/bin/macosx/mavericks/contrib/3.3/ggplot2_2.2.0.tgz'
Content type 'application/x-gzip' length 2760128 bytes (2.6 MB)
==================================================
downloaded 2.6 MB


The downloaded binary packages are in
	/var/folders/v5/pf0cd_bn0v3dq8mgprwymvkm0000gn/T//Rtmp9v47hk/downloaded_packages
> ggplot(data=mydata, aes(x=carat, y=price))+geom_point()
> ggplot(data=mydata, aes(x=carat, y=price, color=clarity))+geom_point()
> ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, color=clarity))+geom_point(alpha=0.1)+geom_smooth()
`geom_smooth()` using method = 'gam'
> 
> 
