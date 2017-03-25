library(shiny)

shinyUI(fluidPage(
     titlePanel('Prediction of Seizures after Traumatic Brain Injury in Children'),
     sidebarLayout(
          sidebarPanel(
               h3("Patient age (years)"),
               sliderInput("SliderAge", "Age (years)", 0, 17, 0),
               checkboxGroupInput("checkInfl", 
                                  label = h3("Was the injury inflicted?"), 
                                  choices = list("Yes" = 1, 
                                                 "No" = 0),
                                  selected = 0)),
               checkboxGroupInput("checkSDH", 
                                  label = h3("Any subdural hemorrhage?"), 
                                  choices = list("Yes" = 1, 
                                                 "No" = 0),
                                  selected = 0))
          ),
          mainPanel(
               plotOutput('plot1')
          )
     )
)


# column(3, 
#        h3("Help text"),
#        helpText("Note: help text isn't a true widget,", 
#                 "but it provides an easy way to add text to",
#                 "accompany other widgets.")),

 
          # column(3,
          #        radioButtons("radio", label = h3("Radio buttons"),
          #                     choices = list("Choice 1" = 1, "Choice 2" = 2,
          #                                    "Choice 3" = 3),selected = 1)),
          

