# Assignment 1 app with three tabs: 

library(tidyverse)
library(shiny)
library(shinythemes)
library(here)


         
ui <- fluidPage(theme = shinytheme("cerulean"),
  
  navbarPage("Assignment 1, task 1 Group 17: Kat Leigh, Teague Tran, Lucas Empson",
             tabPanel("Time series"),
             tabPanel("Seasonplots"),
             tabPanel("Summary statistics and analysis",
                      sidebarLayout(
                        sidebarPanel("Widgets!",
                                     checkboxGroupInput(inputId = "pick_species",
                                                        label = "Choose species",
                                                        choices = unique(salmon$species)
                                                        )
                                     ),
                        mainPanel("Output")
                        
                      ))
  )
)

  


server <- function(input, output) {}

shinyApp(ui = ui, server = server)