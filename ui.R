#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Body mass index calculator, interpretation and health impacts"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       numericInput("height",
                   "Your height in cm:",
                   value = 165,
                   min = 1,
                   max = 300),
      numericInput("weight",
                   "Your weight in kg:",
                   value = 65,
                   min = 1,
                   max = 200)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Your Body Mass index is:"),
       textOutput("bmi"),
       br(),
       htmlOutput("interpretation_link"),
       htmlOutput("health_impact_link")
    )
  )
))
