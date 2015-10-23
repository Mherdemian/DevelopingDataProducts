library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Developing Data Products Project'),
  sidebarPanel(
    h3('Instructions'),
    p('Enter the horsepower, # of cylinders, and weight of 
      car below.  On the right will be your predicted mpg.'),
    h3('Enter MPG predictors below.'),
    numericInput('hp', 'Horsepower:', 100, min = 50, max = 330, step = 10),
    radioButtons('cyl', 'Number of cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4'), 
    numericInput('wt', 'Weight (lbs):', 3500, min = 1500, max = 5500, step = 100)
    ),
  mainPanel(
    h6('Developing Data Products Project by Montanna Herdemian'),
    h3('Predicted MPG'),
    h4('You submitted:'),
    verbatimTextOutput("inputValues"),
    h4('Resulted Prediction:'),
    verbatimTextOutput("prediction"),
    h4('MPG'),
    plotOutput('plots'),
    h3('Approach'),
    p('A linear model was fit to the mtcars dataset, modeling how horsepower, weight, and number of cylinders impact mpg.'),
    h5('References'),
    p('Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.')
    )
  ))