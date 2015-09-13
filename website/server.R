################################################################################
################################################################################
############################## EcoApps #########################################
########################## By: Nathan Justice ##################################
#################### Last edited: 12September2015 ##############################
################################################################################
################################################################################

###### Shiny server ######

### start: server ###

shinyServer(function(input, output, session){
  output$lvpredatorpreyScreenshot <- renderImage({
    list(src="lvpredatorpreyScreenshot.png",
         contentType="image/png",
         width=597,
         height=447,
         alt="A screenshot of the Lotka-Volterra Predator-Prey application."
    )
  }, deleteFile=FALSE)

  output$pitcherplantScreenshot <- renderImage({
    list(src="pitcherplantScreenshot.png",
         contentType="image/png",
         width=597,
         height=447,
         alt="A screenshot of the Pitcher Plant application."
    )
  }, deleteFile=FALSE)

  output$githubScreenshot <- renderImage({
    list(src="githubScreenshot.png",
         contentType="image/png",
         width=597,
         height=447,
         alt="A screenshot of the EcoApps Github repository."
    )
  }, deleteFile=FALSE)

  output$hflogo <- renderImage({
    list(src="hflogo.jpg",
         contentType="image/jpg",
         alt="The Harvard Forest Logo."
    )
  }, deleteFile=FALSE)

  output$sidePanelScreenshot <- renderImage({
    list(src="sidePanelScreenshot.png",
         contentType="image/png",
         alt="A screenshot of the sidebar panel."
    )
  }, deleteFile=FALSE)

  output$stateVariableToggle1 <- renderImage({
    list(src="stateVariableToggle1.png",
         contentType="image/png",
         alt="A screenshot of the sidebar panel."
    )
  }, deleteFile=FALSE)

  output$stateVariableToggle2 <- renderImage({
    list(src="stateVariableToggle2.png",
         contentType="image/png",
         alt="A screenshot of the sidebar panel."
    )
  }, deleteFile=FALSE)

  output$stateVariableToggle3 <- renderImage({
    list(src="stateVariableToggle3.png",
         contentType="image/png",
         alt="A screenshot of the sidebar panel."
    )
  }, deleteFile=FALSE)

  output$dataTableTabScreenshot <- renderImage({
    list(src="dataTableTabScreenshot.png",
         contentType="image/png",
         alt="A screenshot of the sidebar panel."
    )
  }, deleteFile=FALSE)

  output$modelTabScreenshot <- renderImage({
    list(src="modelTabScreenshot.png",
         contentType="image/png",
         alt="A screenshot of the sidebar panel."
    )
  }, deleteFile=FALSE)

}) # end: shinyServer

### end: server ###
