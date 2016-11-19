library(dplyr)
library(lubridate)
library(ggplot2)
library(knitr)

activity <- read.csv("activity.csv")
activity <- mutate(activity, date = ymd(date))


hist <- ggplot(perday, aes(date, steps))
hist + geom_histogram(stat="identity") + labs(title = "Steps per day")


histest <- ggplot(perdayest, aes(date, steps))
histest + geom_histogram(stat="identity")