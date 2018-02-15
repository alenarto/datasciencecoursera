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
        titlePanel("In this app you can plot parabola by setting the a, b and c parameters of its equation:"),
        h2("Y = ax^2 + bx + c"),
        
        # Sidebar with a slider input for number of bins 
        sidebarLayout(
                sidebarPanel(
                        
                        sliderInput("First term","What's the A value?", -10, 10, value=1),
                        sliderInput("Second term","What's the B value?", -10, 10, value=0),
                        sliderInput("Third term","What's the C value?", -10, 10, value=0)
                        
                        #checkboxInput("showModel1", "show/Hide Model 1", value = TRUE),
                        #checkboxInput("showModel2", "show/hide Model 2", value = TRUE)
                        #       submitButton("Submit") #will create submit button that won't perform the reactive command until press submit
                        
                ),
                
                # Show a plot of the generated parabola
                mainPanel(
                        plotOutput("plot1")
#                        h3("Predicted HP from 1:"),
#                        textOutput("pred1"),
#                        h3("Predicted HP from 2:"),
#                        textOutput("pred2")
                )
        )
))

#library(rsconnect)
#rsconnect::deployApp("/Users/alenarto/Documents/Work/Tools/Coursera/Data Science Specialization/course9_dataproducts/wk1 shiny/myapps/assignmentApp")
