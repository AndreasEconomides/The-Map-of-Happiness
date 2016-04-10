library(googleVis)
library(shiny)
happiness <- read.csv('https://raw.githubusercontent.com/AndreasEconomides/The-Map-of-Happiness/master/happy_data.csv')
happy_planet <- gvisGeoChart(happiness, locationvar="country", "Happiness",
                             options=list(displayMode="regions",
                                          title='The Map of Happiness',
                                          colorAxis="{colors:['red', 'orange', 'yellow', 'green']}",
                                          backgroundColor="lightblue",
                                          height= '694', 
                                          width= '1112'), chartid="The_Map_of_Happiness")
plot(happy_planet)