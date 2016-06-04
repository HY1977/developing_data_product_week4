shinyUI(fluidPage(
 
  fluidRow(plotOutput("p1")),  ## Plot histogram    
   fluidRow( 
   column(width=4,selectInput("t1","select distribution"
        ,c("normal","exponential","poisson","gamma","uniform"))),
  
   column(8,verbatimTextOutput("v1")),
   column(4,wellPanel(
   sliderInput("s1","Sample Size",min=1,max=10000,value=10,step=1)  ## Show basic Statistical Quantities.
               )
          )
  )))


 
  
  
