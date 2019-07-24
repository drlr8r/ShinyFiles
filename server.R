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

    output$distPlot <- renderPlot({
        # set the random seed
        set.seed(input$seed)

        # generate bins based on input$bins from ui.R
        x    <- rnorm(1000)
        bins <- 30

        # draw the histogram with the specified number of bins
        hist(x, breaks = 30, col = 'darkgray', border = 'white')

    })

})
