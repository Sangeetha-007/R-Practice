library(readr)
library(ggplot2)
library(grid)
library(gridExtra)

setwd("/Users/Sangeetha/Downloads/")

customer_count_by_state_and_date <- read_csv("customer_count_by_state_and_date.csv")

interval=15

i<-1
for(i in 15:nrow(customer_count_by_state_and_date)){
  
  sectioned_plot <- ggplot( data = customer_count_by_state_and_date, aes(x=date_extracted, y=cnt_by_state) ) + geom_line() + facet_grid(.~location_region )
  
    
   interval<-interval+1
}


print(sectioned_plot)


#********************
interval=15
list_plots <- list()
tmp_index=1
list_index <- 1

layout = matrix(c(1:9), 3)

for (i in seq(interval, nrow(customer_count_by_state_and_date), interval)){
  tmp_plot<-ggplot(data = customer_count_by_state_and_date[tmp_index:i, ],aes(x=date_extracted, y=cnt_by_state)) +geom_line()+ facet_grid(.~location_region)# + labs(title=location_region)
  list_plots[[list_index]]<-tmp_plot
  
  print(paste(tmp_index, i))
  
  tmp_index <- i+1
  list_index<-list_index+1
}
m <- marrangeGrob(list_plots, ncol = 3, nrow = 17, layout_matrix = layout)
ggsave("oops.pdf", m)



