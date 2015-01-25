library(shiny)

shinyServer(
  function(input, output)
  {  
    vars <- c("Fertility","Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality")
    observe({
      if (is.null(input$vars))
      {
        output$fit <- renderPrint({})
      }
      else
      {
        varsArray <- as.numeric(input$vars)
        varsArray <- varsArray[!is.na(varsArray)]
        swissNew <- swiss[, c(1,varsArray)]
        fit <- lm(Fertility ~ ., swissNew)
        output$fit <- renderPrint({
          summary(fit)
        })
      }
    
      sel1 <- vars[as.integer(input$select1)]
      sel2 <- vars[as.integer(input$select2)]
      
      output$cor <- renderPrint({
        cor(swiss[, sel1], swiss[, sel2])
      })

      output$corPlot <- renderPlot({
        par(pin = c(5,5))
        plot(swiss[, sel1], swiss[, sel2], xlab = sel1, ylab = sel2)
        abline(lm(swiss[, sel2] ~ swiss[, sel1]), col = "red")
      })
    })
  }
  )