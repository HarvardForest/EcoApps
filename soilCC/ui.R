dashboardPage(skin="green",

  dashboardHeader(title="Costa Rica"),

  dashboardSidebar(
    sidebarMenu(
      menuItem("Introduction", tabName="Introduction", icon=icon("home")),
      menuItem("Methodology", tabName="Methodology", icon=icon("book")),
      menuItem("Plant Key", tabName="Plant Key", icon=icon("tags")),
      menuItem("Results", tabName="Results", icon=icon("film"))
    )
  ),

  dashboardBody(
    tabItems(
      tabItem(tabName="Introduction",
        fluidRow(
          column(width=12,
            h1(strong("Soil Chemistry and its Relationship to Understory Plant Community Composition in Costa Rica"))
          )
        )
      ),
      tabItem(tabName="Methodology",
        fluidRow(
          column(width=12,
                 h1(strong("Content Here"))
          )
        )
      ),
      tabItem(tabName="Plant Key",
        fluidRow(
          column(width=12,
                 h1(strong("Content Here"))
          )
        )
      ),
      tabItem(tabName="Results",
        fluidRow(
          column(width=12,
                 h1(strong("Content Here"))
          )
        )
      )
    )
  )

)