library(dplyr)
library(lubridate)
library(ggplot2)
library(knitr)

activity <- read.csv("activity.csv")
activity <- mutate(activity, date = ymd(date))


