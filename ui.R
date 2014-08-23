## Binomail Operating Characterstic Curves app
## Author: Dr. Aous Abdo <aabdo.und@ida.org>
## Company: Institute for Defense Analyses
## Created: April, 15, 2014

library(shiny)
library(markdown)

shinyUI(pageWithSidebar(
<<<<<<< HEAD
        headerPanel("Binomial Operating Characteristic Curves"),
        sidebarPanel(
                wellPanel(
                        helpText(HTML("
                                <h4> Quick Help</h4>
                                <ul>
                                <li>To operate the app please take a look at the 'About' tab on the right.</li>
                                <li>To view the plot produced by the app please click on the 'Plot' tab on the right. 
                                Please allow time for plot to update.</li>
                                <li>To view the data table produced please click on the 'Data Table' tab on the right.</li>
                                      </ul>"))
                        ),
                wellPanel(
                        numericInput("shots1", "Number of shots for First Test\n", value=20, min = 1),
                        numericInput("fails1", "Number of Failures for First Test\n", value=0, min = 0)
                ),
                
                wellPanel(
                        checkboxInput(inputId="addtest2", label="Enter Values for Second Test",TRUE),      
                        conditionalPanel(condition = "input.addtest2 == true",
                                         numericInput("shots2", "Number of shots for Second Test\n", value=20, min = 1),
                                         numericInput("fails2", "Number of Failures for Second Test\n", value=1, min = 0)
                        )
                ),
                
                
                conditionalPanel(condition = ("input.addtest2 == true"),
                                 wellPanel(
                                         checkboxInput(inputId="addtest3", label="Enter Values for Third Test",TRUE),
                                         conditionalPanel("input.addtest3 == true",
                                                          numericInput("shots3", "Number of shots for Third Test\n", value=35, min = 1),
                                                          numericInput("fails3", "Number of Failures for Third Test\n", value=1, min = 0)
                                         )
                                 )
                ),
                
                conditionalPanel(condition = ("input.addtest2 == true & input.addtest3 == true"),
                                 wellPanel(
                                         checkboxInput(inputId="addtest4", label="Enter Values for Fourth Test",TRUE),
                                         conditionalPanel("input.addtest4 == true",
                                                          numericInput("shots4", "Number of shots for Fourth Test\n", value=50, min = 1),
                                                          numericInput("fails4", "Number of Failures for Fourth Test\n", value=5, min = 0)
                                         )
                                 )
                ),
                wellPanel(
                        checkboxInput(inputId="adjustX", "Adjust X-axis Range", value=FALSE),
                        conditionalPanel(condition="input.adjustX",
                                         #HTML("Select Proportion Defective Range:"),
                                         numericInput("xmin", "Minimum Proportion Defective", min=0, value=0.0, step = 0.01),
                                         numericInput("xmax", "Maximum Proportion Defective", min=0.02, value=0.2, step=0.01))
                ),
                wellPanel(
                        checkboxInput(inputId="under", label="Modify Plot Attributes",FALSE),
                        conditionalPanel(condition="input.under == true", 
                                         wellPanel(
                                                 textInput("title", "Plot Title", value="Enter Title Here"), 
                                                 textInput("xtitle", "X-axis Title", value="Enter X-axis Title Here"), 
                                                 textInput("ytitle", "Y-axis Title", value="Enter Y-axis Title Here")),
                                         wellPanel(
                                                 textInput("test1name", "Name for first test:", value="Test 1"),
                                                 conditionalPanel(condition = "input.addtest2==true",
                                                                  textInput("test2name", "Name for second test:", value="Test 2"),
                                                                  conditionalPanel(condition = "input.addtest3==true",
                                                                                   textInput("test3name", "Name for third test:", value="Test 3"),
                                                                                   conditionalPanel(condition = "input.addtest4==true",
                                                                                                    textInput("test4name", "Name for Fourth test:", value="Test 4")
                                                                                   )
                                                                  )
                                                 )
                                         ),
                                         
                                         wellPanel(
                                                 sliderInput("titlesize", "Text Size for Plot Title:",
                                                             min=1, max=3, value=2, step=0.1),
                                                 br(),
                                                 sliderInput("axeslabels", "Text Size for Axes Labels:",
                                                             min=1, max=2, value=1.2, step=0.1),
                                                 br(),
                                                 sliderInput("axessize", "Size for Axes Marks:",
                                                             min=1, max=2, value=1.2, step=0.1),
                                                 br(),
                                                 sliderInput("linewidth", "Thickness of Lines",
                                                             min=1, max=4, value=2.2, step=0.1),
                                                 br(),
                                                 sliderInput("legtext", "Legend Text Size",
                                                             min=0.5, max=2, value=1.2, step=0.1)
                                         ),
                                         wellPanel(
                                                 checkboxInput("grid", "Toggle Grid Lines", value=TRUE))
                        )
                ),
                
                wellPanel(
                        downloadButton('downloadData', 'Download Data Sample'),
                        br(),
                        br(),
                        downloadButton("savePlot", "Download PDF Graphic"),
                        br(),
                        br(),
                        downloadButton("savePNGPlot", "Download PNG Graphic"))
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("About", includeHTML("./About.html")),
                        tabPanel("Plot", 
                                 HTML('<div class=\"span8\">
                    <div id=\"OCplot\" class=\"shiny-plot-output\" style=\"position:fixed ; width: 60% ; height: 80%\">
                    </div>                            
                    </div>')
                        ),
                        tabPanel("Data Table", tableOutput("MTBFtable"))
                ))
))
=======
  headerPanel("Binomial Operating Characteristic Curves"),
  sidebarPanel(
    wellPanel(
      numericInput("shots1", "Number of shots for First Test\n", value=20, min = 1),
      numericInput("fails1", "Number of Failures for First Test\n", value=0, min = 0)
    ),
    
    wellPanel(
      checkboxInput(inputId="addtest2", label="Enter Values for Second Test",TRUE),      
      conditionalPanel(condition = "input.addtest2 == true",
                       numericInput("shots2", "Number of shots for Second Test\n", value=20, min = 1),
                       numericInput("fails2", "Number of Failures for Second Test\n", value=1, min = 0)
      )
    ),
    
    
    conditionalPanel(condition = ("input.addtest2 == true"),
                     wellPanel(
                       checkboxInput(inputId="addtest3", label="Enter Values for Third Test",TRUE),
                       conditionalPanel("input.addtest3 == true",
                                        numericInput("shots3", "Number of shots for Third Test\n", value=35, min = 1),
                                        numericInput("fails3", "Number of Failures for Third Test\n", value=1, min = 0)
                       )
                     )
    ),
    
    conditionalPanel(condition = ("input.addtest2 == true & input.addtest3 == true"),
                     wellPanel(
                       checkboxInput(inputId="addtest4", label="Enter Values for Fourth Test",TRUE),
                       conditionalPanel("input.addtest4 == true",
                                        numericInput("shots4", "Number of shots for Fourth Test\n", value=50, min = 1),
                                        numericInput("fails4", "Number of Failures for Fourth Test\n", value=5, min = 0)
                       )
                     )
    ),
    wellPanel(
      checkboxInput(inputId="adjustX", "Adjust X-axis Range", value=FALSE),
      conditionalPanel(condition="input.adjustX",
                       #HTML("Select Proportion Defective Range:"),
                       numericInput("xmin", "Minimum Proportion Defective", min=0, value=0.0, step = 0.01),
                       numericInput("xmax", "Maximum Proportion Defective", min=0.02, value=0.2, step=0.01))
    ),
    wellPanel(
      checkboxInput(inputId="under", label="Modify Plot Attributes",FALSE),
      conditionalPanel(condition="input.under == true", 
                       wellPanel(
                         textInput("title", "Plot Title", value="Enter Title Here"), 
                         textInput("xtitle", "X-axis Title", value="Enter X-axis Title Here"), 
                         textInput("ytitle", "Y-axis Title", value="Enter Y-axis Title Here")),
                       wellPanel(
                         textInput("test1name", "Name for first test:", value="Test 1"),
                         conditionalPanel(condition = "input.addtest2==true",
                                          textInput("test2name", "Name for second test:", value="Test 2"),
                                          conditionalPanel(condition = "input.addtest3==true",
                                                           textInput("test3name", "Name for third test:", value="Test 3"),
                                                           conditionalPanel(condition = "input.addtest4==true",
                                                                            textInput("test4name", "Name for Fourth test:", value="Test 4")
                                                           )
                                          )
                         )
                       ),
                       
                       wellPanel(
                         sliderInput("titlesize", "Text Size for Plot Title:",
                                     min=1, max=3, value=2, step=0.1),
                         br(),
                         sliderInput("axeslabels", "Text Size for Axes Labels:",
                                     min=1, max=2, value=1.2, step=0.1),
                         br(),
                         sliderInput("axessize", "Size for Axes Marks:",
                                     min=1, max=2, value=1.2, step=0.1),
                         br(),
                         sliderInput("linewidth", "Thickness of Lines",
                                     min=1, max=4, value=2.2, step=0.1),
                         br(),
                         sliderInput("legtext", "Legend Text Size",
                                     min=0.5, max=2, value=1.2, step=0.1)
                       ),
                       wellPanel(
                         checkboxInput("grid", "Toggle Grid Lines", value=TRUE))
      )
    ),
    
    wellPanel(
      downloadButton('downloadData', 'Download Data Sample'),
      br(),
      br(),
      downloadButton("savePlot", "Download PDF Graphic"),
      downloadButton("savePNGPlot", "Download PNG Graphic"))
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", 
               HTML('<div class=\"span8\">
                                   <div id=\"OCplot\" class=\"shiny-plot-output\" style=\"position:fixed ; width: 60% ; height: 80%\">
                                                </div>                            
                    </div>')
      ),
      #       tabPanel("Results Summary",
      #                br(),
      #                br(),
      #                div(textOutput("Text1"), style = "font-family: 'times'; font-size:16pt; color:black"),
      #                br(),
      #                br(),
      #                tableOutput("table"),
      #                br(),
      #                br(),
      #                div(h4("More resources:")),
      #                HTML('<ol>
      # <li><a href=\"http://spark.rstudio.com/statstudio/MTBF/\" target=\"_blank\">MTBF calculator with confidence intervals</a> </li>
      # <li><a href=\"http://spark.rstudio.com/statstudio/MTBFTestTime/\" target=\"_blank\">MTBF test time calculator</a> </li>
      #                         </ol>')
      #       ),
      tabPanel("About", includeHTML("./About.html")),
      tabPanel("Data Table", tableOutput("MTBFtable"))
    ))
))
>>>>>>> ff7a7bfd60e54dd4262f98da8c2a515f563cc116
