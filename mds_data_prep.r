library(readr)
#library(reshape2)
library(dplyr)
library(stringr)
library(ggplot2)

setwd("/Users/Sangeetha/Downloads/")

customer_count_by_state_and_date <- read_csv("customer_count_by_state_and_date.csv")

#group_concat wil dyplr  

grouped_by_state <- customer_count_by_state_and_date %>%  group_by(location_region) %>%  summarise(fields = toString(cnt_by_state))

new_df <- data.frame(state = grouped_by_state$location_region)

#split in columns
for(i in 1:nrow(grouped_by_state)){
  
  vector_fields <- grouped_by_state[i, "fields"] %>% unlist()
  vector_fields <- vector_fields[["fields"]] %>% c()
  
  counts <- str_split(vector_fields, ", ")[[1]] %>% as.integer()
  
  for(j in 1:length(counts)){
    
    new_df[i, paste0("M", j)] <- counts[j]
    
  }
  
}

df_dis <- dist(new_df) 
matrix_dis <- as.matrix(df_dis )


mds_object <- cmdscale(df_dis)
x_coords <- mds_object[, 1]
y_coords <- mds_object[, 2] # reflect so North is at the top

plot_df <- data.frame(x = x_coords, y= y_coords, state_names = new_df$state)


plot_mds <- ggplot( data = plot_df, aes(x= x, y=y)) + geom_point() + geom_text(aes(label = state_names), check_overlap = T)
print(plot_mds)



