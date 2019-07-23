#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Load Data

population <- read.csv(file="EDU_DEM_23072019164604276.csv", header=TRUE, sep=",")


# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("Population in EU"), 
  
  # Generate a row with a sidebar 
  sidebarLayout(       
    
    
    # Define the sidebar with one input 
    sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="http://rpubs.com/enricobarbierato/help")), 
                 selectInput("Country", "Country:",  
                             choices=c("Austria","Belgium","Denmark","France","Germany")), 
                 hr(), 
                 helpText("EU Population per country") 
    ), 
    
    # Create a spot for the barplot 
    mainPanel( 
      plotOutput("eu_population")   
    ) 
    
  ) 
) 