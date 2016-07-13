# magrittr
x <- runif(100,min = 10,max = 100)

a <- log(sqrt(mean(x)))


b <- x %>%   mean()%>%   sqrt() %>%   log()



#withouth magrittr nor dplyr
my.mtcars <- mtcars



  # turn into factors
my.mtcars$vs <- factor(my.mtcars$vs)
my.mtcars$cyl <- factor(my.mtcars$cyl)


# keep only less than 8 cylinders
my.mtcars <- subset(my.mtcars, cyl != '8')

# drop variable qsec
my.mtcars <- my.mtcars[, -7]


# same with magrittr and dplyr
my.mtcars2 <- mtcars %>% # esto es un comentario
  mutate(vs = factor(vs, levels = c('Does not have VS', 'Has VS')),
         cyl= factor(cyl)) %>%
  filter(cyl != '8') %>%
  select(-qsec)


# grouped data with dplyr
my.mtcars.gr <- my.mtcars %>%
  group_by(cyl) %>%
  mutate(nobs = n(), max.drat = max(drat)) %>%
  summarise(nobs = mean(nobs), max.drat = max(drat))




