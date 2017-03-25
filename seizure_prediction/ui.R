library(shiny)

shinyUI(fluidPage(
     titlePanel('Prediction of Seizures after Traumatic Brain Injury in Children'),
     sidebarLayout(
          sidebarPanel(
               h1("Patient age (years)"),
               sliderInput("slider1", "Slide Me!", 0, 17, 0)
          ),
          mainPanel(
               plotOutput('plot1')
          )
     )
))

pageWithSidebar(
     headerPanel(),
     sidebarPanel(
          selectInput('xcol', 'X Variable', names(iris)),
          selectInput('ycol', 'Y Variable', names(iris),
                      selected=names(iris)[[2]]),
          numericInput('clusters', 'Cluster count', 3,
                       min = 1, max = 9)
     ),
     mainPanel(
          plotOutput('plot1')
     )
)

