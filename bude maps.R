library(ggmap)
library(tidyverse)
library(devtools)

## roadmap

map <- get_googlemap(center = c(-4.5437, 50.8266), zoom = 15)
ggmap(map)

## watercolor map

watercolor <- get_map("Bude", maptype = "watercolor", zoom = 15)
ggmap(watercolor)

## marked road map, crooklets beach, cricket grounds, bude sea pool, summerleaze beach
## add the Edgcumbe Hotel and Hebasca Hotel
#EH <- geocode("Edgcumbe Hotel")
#HH <-geocode("Hebasca")
ggmap(map) +
  geom_point(
    aes(x = -4.553962 , y = 50.835),
    color = "yellow", size = 3) +
  geom_point(
    aes(x = -4.553165 , y = 50.832584),
    color = "green", size = 3) +
  geom_point(
    aes(x = -4.553974 , y = 50.832574),
    color = "blue", size = 3)+
  geom_point(
    aes(x = -4.551349, y = 50.830540),
    color = "red", size = 3)+
  geom_point(
    aes(x = -4.548689, y = 50.83139),
    color = "pink", size =3)+
  geom_point(
    aes(x = -4.54328, y = 50.83491),
    color = "black", size =3
  )

## watercolor marked map, crooklets beach, cricket grounds, bude sea pool, summerleaze beach
## add The the Edgcumbe Hotel and Hebasca Hotel


ggmap(watercolor) +
  geom_point(
    aes(x = -4.553962 , y = 50.835),
    color = "yellow", size = 3) +
  geom_point(
    aes(x = -4.553165 , y = 50.832584),
    color = "green", size = 3) +
  geom_point(
    aes(x = -4.553974 , y = 50.832574),
    color = "blue", size = 3)+
  geom_point(
    aes(x = -4.551349, y = 50.830540),
    color = "red", size = 3)+
  geom_point(
    aes(x = -4.548689, y = 50.83139),
    color = "pink", size =3)+
  geom_point(
    aes(x = -4.54328, y = 50.83491),
    color = "black", size =3
  )

## route
from <- "Bude North Cornwall Cricket Club"
to <- "The Barrell at Bude"
route_df <- route(from, to, mode="walking", structure = "route")
ggmap(map) +
  geom_point(
    aes(x = -4.553165 , y = 50.832584),
    color = "blue", size = 3)+
  geom_point(
    aes(x = -4.543023, y = 50.830066),
    color = "green", size = 3) +
  geom_path(
    aes(x = lon, y = lat), colour = "yellow", size = 1.5,
    data = route_df, lineend = "round"
  )

## route on watercolor map
from <- "Bude North Cornwall Cricket Club"
to <- "The Barrell at Bude"
route_df <- route(from, to, mode="walking", structure = "route")
ggmap(watercolor) +
  geom_point(
    aes(x = -4.553165 , y = 50.832584),
    color = "blue", size = 3)+
  geom_point(
    aes(x = -4.543023, y = 50.830066),
    color = "green", size = 3) +
  geom_path(
    aes(x = lon, y = lat), colour = "yellow", size = 1.5,
    data = route_df, lineend = "round"
  )
