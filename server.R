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
        
        output$plot1 <- renderPlot({
                
                aVal <- input$`First term`
                bVal <- input$`Second term`
                cVal <- input$`Third term`
                
                xVals <- sort(runif(100, -1, 1))
                yVals <- aVal*(xVals^2) + bVal*xVals + cVal
                plot(xVals, yVals, xlab = "x values",
                     ylab = "y values", type = "l", lwd=3,
                     xlim = c(-2,2), ylim=c(-2,2))

        })
        
})
