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


activityest2 <- activityest %>% 
        mutate(day = wday(activity$date, label = TRUE)) %>%
        mutate(day = recode(day, 
                            "Mon" = "weekday", 
                            "Tues" = "weekday", 
                            "Wed" = "weekday", 
                            "Thurs" = "weekday", 
                            "Fri" = "weekday", 
                            "Sat" = "weekend", 
                            "Sun" = "weekend"))



activityest3 <- activityest2 %>%
        mutate(day2 = wday(date, label = TRUE))



"2:5"
levels(activityest2$day)

?is.element

wday(date)

# Recode values with named arguments
x <- sample(c("a", "b", "c"), 10, replace = TRUE)
x
recode(x, a = "Apple")
recode(x, a = "Apple", .default = NA_character_)