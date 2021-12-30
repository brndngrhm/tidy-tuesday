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
date <- ""
  
get_tt_data(date)
