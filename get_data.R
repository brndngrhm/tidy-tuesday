library(tidytuesdayR)
library(tidyverse)
library(here)

# function get and save dataset for local loading
get_tt_data <- 
  function(date){
    
    tt_data <- 
      tt_load({{date}})
    
    path <- 
      here("data", glue::glue("{date}_tt_data.rds"))
    
    saveRDS(tt_data, path)

  }

# get the data
date <- "2021-10-26"
  
get_tt_data(date)


tt_data <- 
  tt_load("2021-10-26")


ultra_rankings <- 
  readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-26/ultra_rankings.csv')

race <- 
  readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-26/race.csv')

