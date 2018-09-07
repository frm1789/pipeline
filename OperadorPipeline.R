library(dplyr)

# Ejemplo 1 usando el dataset de starwars
# Anidando funciones
filter(starwars,species == "Droid")

# Usando operador pipeline
starwars %>%
  filter(species == "Droid")


# Anidando funciones
count(filter(starwars,hair_color == "black",eye_color == "brown"))

# Usando operador pipeline
starwars %>%
  filter ((hair_color == "black"),(eye_color == "brown")) %>%
  count()

# Ejemplo 2 usando el dataset de babynames

library(babynames)
library(dplyr)

# Count how many young boys with the name "Taylor" are born
sum(select(filter(babynames,sex=="M",name=="Victoria"),n))

# Do the same but now with `%>%`
babynames%>%
  filter(sex=="F")%>%
  filter(name=="Victoria")%>%
  select(n)%>%
  sum
