library(shiny)

data(mtcars)


fit <- lm( mpg ~ cyl + wt , data = mtcars)

#calmpg <- function(cyl, wt) coef(fit)[1] + cyl * coef(fit)[2] + wt * coef(fit)[3]
calmpg <- function(cyl, wt) {
  coef(fit)[1] + as.numeric(cyl) * coef(fit)[2] + wt * coef(fit)[3]
}
shinyServer(
  function(input, output) {
    output$inputcyl <- renderPrint({input$cyl})
    output$inputwt <- renderPrint({input$wt})
    #output$mpg <- renderPrint({mpg(input$cyl, input$wt)})
    output$mpg <- renderPrint({calmpg(input$cyl,input$wt)})
  }  
)