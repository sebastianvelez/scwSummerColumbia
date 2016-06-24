# aprendiendo R
# autor 

library(dplyr)
library(magrittr)
df <- read.csv(file = 'gapminder-FiveYearData.csv')

# describe the data frame
str(df)


# solution to the challenge
df.gr <- df %>%
  filter(continent != 'Africa', country != 'Korea Dem. Rep.') %>%
  filter(year == '2007') %>%
  mutate(gdp.country = gdpPercap*pop) %>%
  group_by(continent) %>%
  mutate(continent.pop = sum(pop),
         num.country = n()) %>%
  summarize(avg.pop.cont = mean(continent.pop),
            num.country = max(num.country),
            gdp.cont = sum(gdp.country))



# ejemplo funciones

ppl.weight <- c(180,189.7,274.1,100.8)
ppl.name <- c('JUAN', 'JEAN', 'SEAN', 'IVAN')
ppl.year <- c(1979, 1985, 1992, 2001)

pound.to.kilo <- function (w.pound){
  # this function takes a vector of weights in pounds
  # and converts it to kilograms
  w.kilo <- w.pound/2.20462
  return(w.kilo)
}


weights.kilo <- pound.to.kilo(ppl.weight)


sumar.dos <- function(x,y) {
  x+y
}




year.to.age <- function(year){
  # this function takes a year of birth 
  # and returns age
  current.year <- format(Sys.Date(), '%Y') %>%
    as.numeric()
  age <- current.year - year
  return(age)
  
}



for (i in ppl.name){
  print(paste('hola', i))
}

