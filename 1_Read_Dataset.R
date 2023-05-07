
setwd("E:/Belajar_R_Perikanan")

library(tidyverse)  # for better file reading than standard module on R
library(lubridate)  # for easy date manipulation

landings_data <- read_csv("_data/sample_landings_data_raw.csv")
landings_data
