library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Chicago Water Quality"),
  dashboardSidebar(),
  dashboardBody()
)

server <- function(input, output) { }

shinyApp(ui, server)