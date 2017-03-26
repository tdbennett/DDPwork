library(shiny)
set.seed(0948)

shinyServer(
     function(input, output) {

          age <- reactive({
               input$SliderAge})
               
          abuse <- reactive({
               input$radioInfl})
               
          sdh <- reactive({
               input$radioSDH})
          
          odds <- reactive({
                    exp(-0.82483 + 
                           (-0.00608*12)*age + 
                           0.91957*abuse + 
                           0.71204*sdh + 
                           (-0.00267*12*age*abuse) +
                           (-0.00749*12*age*sdh) +
                           (-0.36054*abuse*sdh))
          })
          
          
          prob <- reactive({
               round(100*(odds/(1 + odds)),2)
          })
     
     output$pred1 <- renderText({  
          prob
     })
     }
)