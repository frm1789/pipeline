library(dplyr)

# Ejemplo 1 usando el dataset de starwars
# Anidando funciones
filter(starwars,species == "Droid")

# Usando operador pipeline
starwars %>%
  filter(species == "Droid")


# Anidando funciones
count(filter(starwars,hair_color == "black",eye_color == "brown"))

# Usando operador pipeline `%>%`
starwars %>%
  filter ((hair_color == "black"),(eye_color == "brown")) %>%
  count()

# Ejemplo 2 usando el dataset de babynames

library(babynames)
library(dplyr)

# Cuantas nenas con el nombre Victoria existen en el dataset
sum(select(filter(babynames,sex=="M",name=="Victoria"),n))

# Usando operador pipeline `%>%`
babynames%>%
  filter(sex=="F")%>%
  filter(name=="Victoria")%>%
  select(n)%>%
  sum
