################################################################################
################################################################################
############################## EcoApps #########################################
########################## By: Nathan Justice ##################################
####################### Last edited: 03August2015 ##############################
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

}) # end: shinyServer

### end: server ###
