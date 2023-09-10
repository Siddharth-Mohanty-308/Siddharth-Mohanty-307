View(penguins)

first_variable <- "var value"
second_variable <- 12.5

#Creating vector

vec_1 <- c(12.2,31,41.9,26.3)
vec_1

#Creating pipes
ToothGrowth %>%
filter(dose==0.5) %>%
arrange(len)
