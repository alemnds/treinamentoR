ggplot(data = sub_airline, mapping = aes(x = Reporting_Airline, y = ArrDelay)) +
  geom_boxplot(fill = "bisque",color = "black", alpha = 0.3) +
  geom_jitter(aes(color = 'blue'), alpha=0.2) +
  labs(x = "Airline") +
  ggtitle("Arrival Delays by Airline") + guides(color = FALSE) +
  theme_minimal() +
  coord_cartesian(ylim = quantile(sub_airline$ArrDelay, c(0, 0.99)))


summary_airline_delays <- sub_airline %>%
  group_by(Reporting_Airline) %>%
  summarize(count = n(),
            mean = mean(ArrDelayMinutes, na.rm = TRUE),
            std_dev = sd(ArrDelayMinutes, na.rm = TRUE),
            min = min(ArrDelayMinutes, na.rm = TRUE),
            median = median(ArrDelayMinutes, na.rm=TRUE),
            iqr = IQR(ArrDelayMinutes, na.rm = TRUE),
            max = max(ArrDelayMinutes, na.rm = TRUE))

summary_airline_delays

sub_airline <- count(Reporting_Airline)

sub_airline %>%  count(Reporting_Airline)


sub_airline %>%  sum(Reporting_Airline)


sub_airline %>%  mean(Reporting_Airline)

avg_delays <- sub_airline %>%
  group_by(Reporting_Airline, DayOfWeek) %>%
  summarize(mean_delays = mean(ArrDelayMinutes), .groups = 'keep')


avg_delays %>%
  ggplot(aes(x = Reporting_Airline,
             y = DayOfWeek,
             fill = mean_delays)) +
  geom_tile(color = "white", size = 0.2) +
  scale_fill_gradient(low = "yellow", high = "red")

sub_airline %>% group_by(Reporting_Airline) +  summarize(mean_delays = mean(ArrDelayMinutes))

install.packages("ggplot2")
library(ggplot2)
data("mtcars")
View(mtcars)

count <- table(mtcars$cyl) ; barplot(count)
count <- table(mtcars$cyl) 
barplot(count)

summary(mtcars)
qplot(mtcars$cyl, geom = "bar", fill = I("blue"), xlab = "Cylinders", ylab ="Number of Vehicles", main = "Cylinders in mtcars")

library(tidyverse)
mtcars <- mtcars %>%
  mutate(cyl_factor = as.factor(cyl))

ggplot(data = mtcars,
       aes(x = " ", fill = cyl_factor)) + geom_bar(position = "stack")

install.packages("plotly")
library(plotly)

p <- ggplot(mtcars, aes(y = mpg)) + geom_boxplot()
ggplotly(p)

ggplot(mtcars, aes(x = cyl_factor, y = mpg)) + geom_boxplot()
