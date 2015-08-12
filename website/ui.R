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
              fluidRow(
                column(width=12, align="center",
                  a(imageOutput("hflogo"),
                    href="http://harvardforest.fas.harvard.edu/", target="_blank")
                ) # end: column
              ), # end: fluidRow
              h1(strong("EcoApps:")),
              h2(em("a tool for exploring ecosystem dynamics, tipping points,
                 and early warning signals")),
              br(),
              br(),
              h2(strong("Abstract")),
              h3("To facilitate the investigation of ecosystem tipping points across
                the scientific community, this project's goal is to lead the development
                of a computational tool that will allow researchers, regardless
                of their familiarity with formal programming languages, the ability
                to simulate ecosystem dynamics and perform tipping point and early
                warning signal analyses. Ostensibly stable ecosystems are sometimes
                susceptible to abrupt and drastic changes from one state to another.
                These rapid state changes exhibit tipping points (sometimes referred
                to as breakpoints or changepoints), which represent a threshold
                for a change in the dynamics demonstrated by the ecosystem's state
                variables. The complexity of ecosystem state changes is compounded
                by the knowledge that alternative states are often not transient.
                Generally, humans and other wildlife are accustomed to a preferable
                ecosystem state, and tipping points do not provide sufficient opportunity
                for adaptation. Unexpected tipping points are increasingly more
                likely to occur as human impacts continue to affect and alter ecosystem
                dynamics across the biosphere. Mounting ecological research suggests
                tipping points can be simulated with mathematical and statistical models.
                In addition, simulations of these models have the potential to illuminate
                early warning signals, which are probable indicators that proceed
                an imminent tipping point. The product of this project, EcoApps,
                is a series of web applications implemented using the Shiny framework
                in R. Each application simulates a distinct ecosystem model. Users
                are able to explore the model by manipulating parameters and perform
                tipping point an early warning signal analyses on the simulation's
                components (observed data, trend, periodicity, and residuals)."),
              br(),
              h2(strong("Background")),
              h3("The project’s theme is ecosystem dynamics, an important field
                 in ecology. A prime example of its significance and relevancy is
                 highlighted in this public service announcement, released by the
                 Ohio Department of Health in August, 2014: “Do not drink the water.”
                 This message was directed to over 400,000 people in the Toledo area.
                 The advisory was released in response to high levels of a toxin
                 from the eruption of algae blooms in Lake Erie. "),
              h3("The classic scenario of eutrophication, which can be boiled down
                 to sudden algae blooms a body of water due to agricultural runoff,
                 is a commonly used example of a “tipping point” in ecology. A
                 tipping point, analogous to tipping points described in economic
                 and socio-cultural dynamics, represents a threshold in which,
                 once crossed, the ecosystem in question could be susceptible to
                 abrupt and drastic changes from one ecosystem state to another."),
              h3("An ecosystem state is the holistic product of its dynamics, in
                 a sense, it’s addressing the questions: what does the ecosystem
                 look like, and what is it doing? The dynamics describe all of the
                 ways the ecosystem’s state variables interact and influence each
                 other. A state variable could be, for example, the population of
                 species x, the amount of dissolved oxygen, or any other quantifiable
                 component of the model representing the system in question. Also,
                 there are parameters, which represent inherent properties of Nature."),
              h3("An ecosystem model is just a set of equations that articulate,
                 mathematically, ecosystem dynamics. The equations themselves are
                 made up of variables that represent the ecosystem’s state variables,
                 and constants that represent parameters - those inherent properties
                 of Nature. Simulating a model is simply a matter of solving the
                 equations a certain number of times, replacing values for the parameters
                 and state variables. "),
              h3("The complexity of ecosystem state change is compounded by the
                knowledge that an alternative ecosystem state, the product of a
                tipping point, is often not transient. That is to say, alternative
                states induced by tipping points are often themselves stable states.
                Alternative states typically exhibit unique population and ecosystem
                dynamics and feedbacks compared to the state observed before a
                tipping point, making the process of reversion exceptionally challenging."),
              h3("Tipping points are easy to understand retrospectively. However,
                 retrospective analysis holds little weight in proactive and efficient
                 socio-cultural decision making. And of course, unexpected tipping
                 points are increasingly more likely to occur as human impacts continue
                 to affect and alter ecosystem dynamics across the biosphere."),
              h3("Mounting ecological research suggests tipping points can be simulated
                 with mathematical and statistical models. In addition, these models
                 and respective simulations have the potential to illuminate early
                 warning signals, which are probable indicators that proceed a tipping point.
                 As the name suggests, early warning signals are statistical tests
                 that can warn us of potentially impending tipping points. "),
              h3("To facilitate the investigation of ecosystem tipping points
                 across the scientific community, the goal of my summer project
                 was to develop a computational tool that will allow researchers,
                 regardless of their familiarity with formal programming languages,
                 the ability to simulate ecosystem models and perform tipping point
                 and early warning signal analyses. "),
              br(),
              br(),
              h4("-Nathan Justice")
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
          a(h2("Matthew Lau"), href="http://harvardforest.fas.harvard.edu/researchers/8438", target="_blank")
        ) # end: box
      ) # end: tabItem - Contact
    ) # end: tabItems
  )

  ## end: dashboardBody ##

) # end: dashboardPage

### end: interface ###

