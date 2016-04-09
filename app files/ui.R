library(shiny)
happiness <- read.csv('happy_data.csv')
shinyUI(fluidPage(
  headerPanel("The Map of Happiness"),
  mainPanel(
    plotOutput("happy_planet
               ")
  )
))