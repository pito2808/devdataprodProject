#setwd("D:/MOOC/coursera -Developing Data Products")
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Estimate MPG following Weights car and cylinders engine"),
  sidebarPanel(
    h3(' variables input'),
    sliderInput('wt', 'Enter weight (unit lb/1000)', value=2, min=1,max =8, step=0.5, ),
    radioButtons("cyl", "Choose Cylinder",
                      c("4 cylinders" = "4",
                        "6 cylinders" = "6",
                        "8 cylinders" = "8"), selected="4", inline=T),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Main Panel text'),
    p(em("Github repository documentation:",a("Github repo",href="https://github.com/pito2808/devdataprodProject/www"))),  
    h3('weight entered (unit lb/1000'),
    verbatimTextOutput("inputwt"),
    h3('cyl entered'),
    verbatimTextOutput("inputcyl"),
    h3("MPG estimate (miles/gallon"),
    verbatimTextOutput("mpg")
  )
))  