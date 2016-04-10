library(shiny)
library(googleVis)
shinyUI(fluidPage(
  headerPanel("The Map of Happiness"),
  mainPanel(
    plotOutput("happy_planet
               ")
    )))