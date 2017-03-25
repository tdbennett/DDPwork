library(shiny)

function(input, output) {
     
     output$plot1 <- renderPlot({
          set.seed(0948)
          age <- input$sliderAge
          abuse <- input$CheckInfl
          sdh <- input$CheckSDH
          
          
          
          palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
                    "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
          
          par(mar = c(5.1, 4.1, 0, 1))
          plot(selectedData(),
               col = clusters()$cluster,
               pch = 20, cex = 3)
          points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
     })
     
}

