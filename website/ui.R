################################################################################
################################################################################
############################## EcoApps #########################################
########################## By: Nathan Justice ##################################
####################### Last edited: 03August2015 ##############################
################################################################################
################################################################################

##### Shiny user interface #####

# load dependencies
library(shinydashboard)
library(shiny)
library(shinythemes)

### start: interface ###

dashboardPage(skin="green",

  ## start: dashboardHeader ##

  dashboardHeader(title="EcoApps"),

  ## end: dashbaordHeader ##

  ## start: dashboardSidebar ##

  dashboardSidebar(
    sidebarMenu(
      menuItem("About", tabName="About", icon=icon("home")),
      menuItem("Apps", tabName="Apps", icon=icon("line-chart")),
      menuItem("Tutorial", tabName="Tutorial", icon=icon("book")),
      menuItem("Source", tabName="Source", icon=icon("github")),
      menuItem("Contact", tabName="Contact", icon=icon("male"))
    ) # end: sidebarMenu
  ),

  ## end: dashboardSidebar

  ## start: dashboardBody ##

  dashboardBody(
    tabItems(
      tabItem(tabName="About",
        fluidRow(
          column(width=12,
            box(width=NULL,
              h1("PASS")
            ) # end: box
          ) # end: column
        ) # end: fluidRow
      ), # end: tabItem - Home
      tabItem(tabName="Apps",
        fluidRow(
          column(12, align="center",
            h1("View the apps:")
          )
        ), # end: fluidRow
        fluidRow(
          column(12, align="center",
            box(width=NULL,
              a(imageOutput("lvpredatorpreyScreenshot"),
                href="https://ecoapps-lvpredatorprey.herokuapp.com/", target="_blank"),
              br(),
              br(),
              br(),
              a(p("Click here or on the image to launch the Predator-Prey app through Heroku"),
                href="https://ecoapps-lvpredatorprey.herokuapp.com/", target="_blank"),
              p("or"),
              a(p("Click here to launch the Predator-Prey app through RStudio's Shiny server"),
                href="https://nthnjustice.shinyapps.io/ecoapps-lvpredatorprey", target="_blank")
            ) # end: box
          ) # end: column
        ), # end: fluidRow
        fluidRow(
          column(12, align="center",
            box(width=NULL,
              a(imageOutput("pitcherplantScreenshot"),
                href="http://ecoapps-pitcherplant.herokuapp.com/", target="_blank"),
              br(),
              br(),
              br(),
              a(p("Click here or on the image to launch the Pitcher Plant app through Heroku"),
                href="http://ecoapps-pitcherplant.herokuapp.com/", target="_blank"),
              p("or"),
              a(p("Click here to launch the Pitcher Plant app through RStudio's Shiny server"),
                href="https://nthnjustice.shinyapps.io/ecoapps-pitcherplant", target="_blank")
            ) # end: box
          ) # end: column
        ) # end: fluidRow
      ), #end: tabItem - Apps
      tabItem(tabName="Tutorial",
        box(width=NULL,
          h1("PASS")
        ) # end: box
      ), # end:tabItem - Tutorial
      tabItem(tabName="Source",
        fluidRow(
          column(12, align="center",
            box(width=NULL,
              a(h3("Click to view the 'EcoApps' Github repository."),
                href="https://github.com/HarvardForest/ecoapps", target="_blank"),
              a(imageOutput("githubScreenshot"),
                href="https://github.com/HarvardForest/ecoapps", target="_blank"),
              br(),
              br(),
              br()
            ) # end: box
          ) # end: column
        ) # end: fluidRow
      ), # end: tabItem - Source
      tabItem(tabName="Contact",
        box(width=NULL,
          h1("PASS")
        ) # end: box
      ) # end: tabItem - Contact
    ) # end: tabItems
  )

  ## end: dashboardBody ##

) # end: dashboardPage

### end: interface ###

