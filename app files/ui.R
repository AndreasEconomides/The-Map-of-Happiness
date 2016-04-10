library(shiny)
happiness <- read.csv('https://raw.githubusercontent.com/AndreasEconomides/The-Map-of-Happiness/master/happy_data.csv')
shinyUI(fluidPage(
  headerPanel("The Map of Happiness"),
  mainPanel(
    plotOutput("happy_planet
               ")
  )
))
