shinyServer(function(input,output){
  
## [Input ] (t1):selected distribution.  (s1) sliderinput to decide sample size.
## [Output] (p1):histogram of selected distribution.  (v1)Basic Statistical Quantities.



 output$p1<-renderPlot({
    if(input$t1 == "normal"){
      samples<<-rnorm(input$s1)
      hist(samples)   ## histogram of normal distribution
    }
    if(input$t1 == "exponential"){
      samples<<-rexp(input$s1,5)
      hist(samples)   ## histogram of exponential distribution
   }
   if(input$t1 == "poisson"){
      samples<<-rpois(input$s1,5)
      hist(samples)   ## histogram of poisson distribution
   }
   if(input$t1 == "gamma"){
      samples<<- rgamma(input$s1,shape=10,scale=1/5)
      hist(samples)   ##  histogram of gamma distribution
   }
   if(input$t1=="uniform"){
      samples<<-runif(input$s1)
      hist(samples)   ##  histogram of uniform distribution
   }
   

  })

    output$v1<-renderPrint({        
    input$s1;print(length(samples));summary(samples)}) ## Basic Statistical Quantities 


})

 
  
  
