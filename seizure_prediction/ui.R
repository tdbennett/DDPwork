library(shiny)

shinyUI(fluidPage(
     titlePanel('Prediction of Seizures after Traumatic Brain Injury in Children'),
     sidebarLayout(
          sidebarPanel(
               sliderInput("SliderAge", 
                           label = "Age (years)", 
                           min = 0, 
                           max = 17, 
                           value = 0),
               radioButtons("radioInfl", 
                            label = "Was the injury inflicted",
                            choices = list("Yes" = 1, 
                                           "No" = 0), 
                            selected = 0),
               radioButtons("radioSDH", 
                                  label = "Any subdural hemorrhage?", 
                                  choices = list("Yes" = 1, 
                                                 "No" = 0),
                                  selected = 0),
               submitButton("Submit")
          ),
          mainPanel(
               h3("Probability of seizure during the acute hospitalization:"),
               textOutput("pred1")
          )
     )
))


# column(3, 
#        h3("Help text"),
#        helpText("Note: help text isn't a true widget,", 
#                 "but it provides an easy way to add text to",
#                 "accompany other widgets.")),

