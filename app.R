library(shiny)

ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel("Hello world")
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
