#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        output$interpretation_link <- renderUI({
                a("Show me what my result means", href=paste("http://www.nscclinics.co.uk/slimming/wp-content/uploads/sites/3/2016/05/bmi-chart.png"))
        })
        
        output$health_impact_link <- renderUI({
                a("Show my the impact on my health of overweight from John Hopkins Medicine", href=paste("http://www.hopkinsmedicine.org/healthlibrary/conditions/diabetes/overview_of_obesity_85,P07855/"))
        })
        
        
        output$bmi <- renderText({
        calc.bmi <- reactive({
                input$weight / (input$height/100)^2
        })
        
        calc.bmi()
           
    
  })
        
   
})
