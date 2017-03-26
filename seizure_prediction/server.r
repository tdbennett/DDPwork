library(shiny)

function(input, output) {
     set.seed(0948)
     
     output$text1 <- renderText({ 
          age <- input$SliderAge
          abuse <- input$radioInfl
          sdh <- input$radioSDH
          
          odds <- exp(-0.82483 + 
                           (-0.00608*12)*age + 
                           0.91957*abuse + 
                           0.71204*sdh + 
                           (-0.00267*12*age*abuse) +
                           (-0.00749*12*age*sdh) +
                           (-0.36054*abuse*sdh)
          )
          
          phat <- odds/(1 + odds)
          prob <- round(phat*100, 2)
          
          paste("This patient has a", prob, "% chance of seizure during the acute hospitalization.")
     })
}