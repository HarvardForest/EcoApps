dashboardPage(skin="yellow",

  dashboardHeader(title="Costa Rica"),

  dashboardSidebar(
    sidebarMenu(
      menuItem("Introduction", tabName="Introduction", icon=icon("home")),
      menuItem("Methodology", tabName="Methodology", icon=icon("book")),
      menuItem("Plant Key", tabName="PlantKey", icon=icon("tags")),
      menuItem("Results", tabName="Results", icon=icon("film"))
    ) # sidebarMenu
  ), # dashboardSidebar

  dashboardBody(
    tabItems(

      tabItem(tabName="Introduction",
        fluidRow(
          column(width=12,
            h1(strong("Soil Chemistry and its Relationship to Understory Plant Community Composition in Costa Rica")),
            hr()
          ) # column
        ) # fluidRow
      ), # tabItem - Introduction

      tabItem(tabName="Methodology",
        fluidRow(
          column(width=12,
                 h1(strong("Content Here"))
          ) # column
        ) # fluidRow
      ), # tabItem - Methodology

      tabItem(tabName="PlantKey",
        fluidRow(
          column(width=12,
            h1(strong("Content Here"))
          ) # column
        ) # fluidRow
      ), # tabItem - PlantKey

      tabItem(tabName="Results",
        fluidRow(
          column(width=12,
            tabsetPanel(
              tabPanel(title="Plots",
                fluidRow(
                  column(12,
                    h1(strong("Content Here"))
                  ) # column
                ) # fluidRow
              ) #tabPanel - Plots
            ) # tabsetPanel
          ) # column
        ) # fluidRow
      )

    ) # tabItems
  ) # dashboardBody

) # dashboardPage