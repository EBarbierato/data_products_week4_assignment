ls#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

population <- read.csv(file="EDU_DEM_23072019164604276.csv", header=TRUE, sep=",")


# Define a server for the Shiny app 
function(input, output) { 
  
  # Fill in the spot we created for a plot 
  output$eu_population <- renderPlot({ 
    
    # Render a barplot 
    barplot(population[,input$Country], names.arg = c("2005", "2010" , "2011", "2012", "2013", "2014", "2015", "2016"),
            main=input$Country, 
            ylab=paste("Population in ", input$Country), col="red",
            xlab="Year") 
  })
}
