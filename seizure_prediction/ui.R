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
                            label = "Was the injury inflicted?",
                            choices = list("Yes" = 1, 
                                           "No" = 0), 
                            selected = 0),
               radioButtons("radioSDH", 
                                  label = "Any subdural hemorrhage?", 
                                  choices = list("Yes" = 1, 
                                                 "No" = 0),
                                  selected = 0),
               actionButton("SubmitButton", 
                            label = "Submit")
          ),
          mainPanel(
               h3("Probability of seizure during the acute hospitalization:"),
               h2(textOutput("pred1")),
               br(),
               br(),
               br(),
               br(),
               br(),
               br(),
               br(),
               br(),
               br(),
               br(),
               br(),
               p("Prediction based on: Bennett KS, DeWitt PE, Harlaar N, Bennett TD.
                 Seizures in children with traumatic brain injury; 
                 Pediatr Crit Care Med. 2017 Jan;18(1):54-63. doi: 10.1097/PCC.0000000000000948")
          )
     )
))


# column(3, 
#        h3("Help text"),
#        helpText("Note: help text isn't a true widget,", 
#                 "but it provides an easy way to add text to",
#                 "accompany other widgets.")),

