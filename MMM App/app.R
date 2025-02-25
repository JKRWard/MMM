library(tidyverse)

ui <- fluidPage(
  
  titlePanel("March Mammal Madness 2025"),
  
  #Main panel with tables for background, wildcard, H1, H2, championship + preview + download (wildcard position varies depending on the bracket)
  mainPanel( width = 12,
             p("Instructions", style = "font-size:40px"),
             tags$a(href="https://libguides.asu.edu/marchmammalmadness", "Link to the March Mammal Madness Website", style = "font-size:16px", target = "_blank"),
             br(),
             br(),
             fluidRow(
               column(2,
                      p("1. Read the background information so you have an idea of what the tournament is about and how it works. Make note of the factors considered when chosing who wins and the
      rules surrounding habitat.", style = "font-size:16px"),
                      p("*The second to last tab has links to the Wiki pages for each animal. Research is not required to do well but it is fun!", style = "font-size:14px"),
               ),
               column(2,
                      p("2. Choose your wildcard winner and fill in the first half of the bracket starting with Round1 then Sweet16 and so on. Each drop down menu should have two choices so if there is any with 1 or 0 check back through
      two make sure you have not missed one.", style = "font-size:16px"),
               ),
               column(2,
                      p("3. Fill out the second half of the bracket." , style = "font-size:16px"),
               ),
               column(2,
                      p("4. Choose your champion!", style = "font-size:16px"),
               ),
               column(2,
                      p("5. Fill in the text box with your FirstName_Lastname and then double check your bracket by clicking the 'Generate Table' button. If you are happy click the 'Download Personal Bracket' and `Download Submitted Bracket` button.", style = "font-size:16px"),
                      br(),
                      br(),
                      br(),
                      img(src="March-Mammal-Madness.jpg", width = 500, height = 200),
                      br(),
                      br(),
                      br(),
               ),
               column(2, 
                      p("6. Upload the FIRSTNAME_LASTNAME", strong("(NOT THE PERSONAL ONE)"), "downloaded bracket to the MMM_2025_Completed_Brackets folder on Microsoft teams.", style = "font-size:16px"),
               )
             ),
             p("If you have any questions about filling in your bracket email Ben.Rowland@newcastle.ac.uk", style = "font-size:14px"),
             hr(),
             
             tabsetPanel(type = "tabs",
                         
                         #Background
                         tabPanel("Background",
                                  br(),
                                  br(),
                                  p("Welcome to March Mammal Madness! Each year, the tournament has become more popular, elaborate, educational, and fun. Inspired by 
        (but in no way affiliated with or representing) the NCAA College Basketball March Madness Championship Tournament, March Mammal Madness is an annual 
        tournament of 'simulated' combat competition among animals. Scientific literature is cited to substantiate likely outcomes as a probabilistic function of the 
        two species' attributes within the battle environment. Attributes considered in calculating battle outcome include temperament, weaponry, armor, body mass, 
        running speed, fight style, physiology, and motivation.", style = "font-size:16px"),
                                  br(),
                                  br(),
                                  p("How are the winners determined?", style = "font-size:16px"),
                                  p("The organizers take information about each combatant's weaponry, armor, fight style, temperament/motivation, and any special skills/consideration and 
        estimate a probability of the outcome and then use a random number generator to determine the outcome. This is why there are upsets in the tournament.", 
                                    style = "font-size:16px"),
                                  br(),
                                  p("Another thing that can happen is if a species has to battle in an ecology that is really bad for it - for example, if a cold adapted species is battling in a 
        tropical forest, it can dangerously overheat- changing the outcome probabilities. Sometimes an animal gets injured or snaps a canine in a previous round that carries 
        over into the next round- just like an injury of a star player totally changes a basketball team's outcome. Also hiding or running away counts as a forfeit.", 
                                    style = "font-size:16px"),
                                  br(),
                                  p("In the early rounds the battle location is in the preferred habitat of the better-ranked combatant (can be any habitat not just one of the four random ones) in the battle 
        (ranking are the numbers displayed next to the animals), and ecology can play a huge role in what happens. Once to the Elite Trait, the battle location is random among 4 
        ecologies for the remaining battles. The location is announced right before the battle.", style = "font-size:16px"),
                                  p("This years four random habitats are:", style = "font-size:16px"),
                                  p("        - Sea Cave", style = "font-size:16px"),
                                  p("        - Geothermal Wetlands", style = "font-size:16px"),
                                  p("        - Sky Islands", style = "font-size:16px"),
                                  p("        - Temperate Broadleaf Forest", style = "font-size:16px"),
                                  br(),
                                  p("Participants fill out their brackets with their choices for the winners for each bout. Scoring occurs at the end of the tournament, points allocated as follows:", 
                                    style = "font-size:16px"),
                                  br(),
                                  fluidRow(
                                    column(2,
                                           p("Wild Card = 1 point", style = "font-size:16px"),
                                           p("Round 1 = 1 point each", style = "font-size:16px"),
                                           p("Round 2 = 2 points each", style = "font-size:16px"),
                                           p("Round 3 = 3 points each", style = "font-size:16px"),
                                           p("Round 4 = 5 points each", style = "font-size:16px"),
                                           p("Round 5 = 8 points each", style = "font-size:16px"),
                                           p("Champion = 13 points", style = "font-size:16px"),
                                    ),
                                    column(3,
                                           img(src="MMM Bracket 2025.PNG", width = 1050, height = 800, style="vertical-align:middle"),
                                    )
                                  ),
                                  
                         ),
                         
                         #Wildcard + H1
                         tabPanel("Wildcard and First Half of the Bracket",
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("W1_0_1", h4("Wildcard"), choices=c("", "Northern Flying Squirrel(14)", "Flying Frog(14)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    h1("Same & Different"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q1_1_1", h4("Round 1"), choices=c("", "Thorold's Deer(1)", "Olympic Marmot(16)"))
                                    ),
                                    column(2,
                                           uiOutput("Q1_1_2")
                                    ),
                                    column(2,
                                           uiOutput("Q1_1_3")
                                    ),
                                    column(2,
                                           uiOutput("Q1_1_4")
                                    ),
                                    column(2,
                                           uiOutput("H1_1_5")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_2_1", h4(""),  choices=c("", "Gelada(8)", "Eastern Grey Kangaroo(9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_3_1", h4(""),  choices=c("", "Paca(5)", "Greater Mouse Deer(12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q1_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_4_1", h4(""),  choices=c("", "Coati(4)", "Fig-eating Bat(13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q1_5_1", h4(""),  choices=c("", "Aardvark(7)", "Bandicoot(10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q1_5_2")
                                    ),
                                    column(2,
                                           uiOutput("Q1_5_3")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_6_1", h4(""),  choices=c("", "Sun Bear(2)", "Hedgehog(15)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_7_1", h4(""),  choices=c("", "Greater Glider(6)", "Paradise Flying Snake(11)"))
                                    ),
                                    column(2,
                                           uiOutput("Q1_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           uiOutput("Q1_8_1")
                                    )
                                  ),
                                  
                                  hr(),
                                  #End Quarter 1
                                  
                                  fluidRow(
                                    h1("The Only Ones"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q2_1_1", h4("Round 1"),  choices=c("", "Addax(1)", "Grant's Golden Mole(16)"))
                                    ),
                                    column(2,
                                           uiOutput("Q2_1_2")
                                    ),
                                    column(2,
                                           uiOutput("Q2_1_3")
                                    ),
                                    column(2,
                                           uiOutput("Q2_1_4")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_2_1", h4(""),  choices=c("", "Spotted-neck Otter(8)", "Tayra(9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_3_1", h4(""),  choices=c("", "Maned Wolf(5)", "Common Muskrat(12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q2_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_4_1", h4(""),  choices=c("", "Chacoan Peccary(4)", "Mountain Beaver(13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q2_5_1", h4(""),  choices=c("", "Marsh Mongoose(7)", "Quokka(10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q2_5_2")
                                    ),
                                    column(2,
                                           uiOutput("Q2_5_3")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_6_1", h4(""),  choices=c("", "Puma(2)", "Star-nosed Mole(15)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_7_1", h4(""),  choices=c("", "Indri(6)", "Hispid Hare(11)"))
                                    ),
                                    column(2,
                                           uiOutput("Q2_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_8_1", h4(""), choices=c("", "Saiga(3)", "Woolly Giant Rat(14)"))
                                    )
                                  ),
                                  
                         ),
                         
                         #Wildcard + H2
                         tabPanel("Second Half of the Bracket",
                                  
                                  # fluidRow(
                                  #   column(2,
                                  #          selectInput("Wildcard", h4("Wildcard"), choices=c("", "W1", "W2"))
                                  #   )
                                  # ),
                                  
                                  fluidRow(
                                    h1("Tuxedo Style"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q3_1_1", h4("Round1"),  choices=c("", "Polar Bear(1)", "Eurasian Water Shrew(16)"))
                                    ),
                                    column(2,
                                           uiOutput("Q3_1_2")
                                    ),
                                    column(2,
                                           uiOutput("Q3_1_3")
                                    ),
                                    column(2,
                                           uiOutput("Q3_1_4")
                                    ),
                                    column(2, 
                                           uiOutput("H2_1_5")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_2_1", h4(""),  choices=c("", "Tasmania Devil(8)", "Delacour's Langur(9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_3_1", h4(""),  choices=c("", "Malayn Tapir(5)", "Luzon Giant Cloud Rat(12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q3_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_4_1", h4(""),  choices=c("", "Cape Buffalo(4)", "Moonrat(13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q3_5_1", h4(""),  choices=c("", "Ribbon Seal(7)", "Southern Tamandua(10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q3_5_2")
                                    ),
                                    column(2,
                                           uiOutput("Q3_5_3")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_6_1", h4(""),  choices=c("", "Narwhal(2)", "Eastern Spotted Skunk(15)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_7_1", h4(""),  choices=c("", "Mountain Zebra(6)", "White-faced Capuchin(11)"))
                                    ),
                                    column(2,
                                           uiOutput("Q3_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_8_1", h4(""),  choices=c("", "Wild Yak(3)", "Zorilla(14)"))
                                    )
                                  ),
                                  
                                  hr(),
                                  #End Quarter 3
                                  
                                  fluidRow(
                                    h1("Roots & Relics"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q4_1_1", h4("Round 1"),  choices=c("", "Ginkgo(1)", "Mycorrhizal Fungus(16)"))
                                    ),
                                    column(2,
                                           uiOutput("Q4_1_2")
                                    ),
                                    column(2,
                                           uiOutput("Q4_1_3")
                                    ),
                                    column(2,
                                           uiOutput("Q4_1_4")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_2_1", h4(""),  choices=c("", "Asain Forest Tortoise(8)", "Platypus(9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_3_1", h4(""),  choices=c("", "Saimaa Ringed Seal(5)", "Olm(12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q4_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_4_1", h4(""),  choices=c("", "Ceolacanth(4)", "Mudskipper(13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q4_5_1", h4(""),  choices=c("", "Pelican(7)", "Horseshoe Crab(10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q4_5_2")
                                    ),
                                    column(2,
                                           uiOutput("Q4_5_3")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_6_1", h4(""),  choices=c("", "Alligator Gar(2)", "Cyanobacteria(15)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_7_1", h4(""),  choices=c("", "Starry Sturgeon(6)", "Tuatara(11)"))
                                    ),
                                    column(2,
                                           uiOutput("Q4_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_8_1", h4(""),  choices=c("", "Frilled Shark(3)", "Fern(14)"))
                                    )
                                  ),
                                  
                         ),
                         
                         #championship + preview + download
                         tabPanel("Championship, Preview and Download",
                                  br(),
                                  br(),
                                  br(),
                                  br(),
                                  br(),
                                  
                                  fluidRow(
                                    column(2,
                                    ),
                                    column(3, 
                                           plotOutput("H1"),
                                    ),
                                    column(2,
                                           uiOutput("Champion_1_6")
                                    ),
                                    column(3, 
                                           plotOutput("H2"),
                                    )
                                  ),       
                                  
                                  fluidRow(
                                    tableOutput("table")
                                  ),
                                  
                                  textInput(input = "NameBox", label = "Name", value = "FirstName_LastName"),
                                  
                                  br(),
                                  br(),
                                  
                                  actionButton("update", "Generate Table"),
                                  
                                  br(),
                                  br(),
                                  downloadButton("downloadData", "Download Personal Bracket as .csv"),
                                  downloadButton("downloadData1", "Download Submitted Bracket as .csv")
                                  
                         ),  
                         
                         tabPanel("Animal Information",
                                  
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Thorold%27s_deer", "Thorold's Deer(1)", target = "_blank"), 
                                           img(src="Thorold's Deer(1).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Polar_bear", "Polar Bear(1)", target = "_blank"),
                                           img(src="Polar Bear(1).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Olympic_marmot", "Olympic Marmot(16)", target = "_blank"), 
                                           img(src="Olympic Marmot(16).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Eurasian_water_shrew", 
                                                  "Eurasian Water Shrew(16)"),
                                           img(src="Eurasian Water Shrew(16).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Gelada", "Gelada(8)", target = "_blank"),
                                           img(src="Gelada(8).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Tasmanian_devil", "Tasmanian Devil(8)", target = "_blank"),
                                           img(src="Tasmanian Devil(8).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Eastern_grey_kangaroo", "Eastern Grey Kangaroo(9)", target = "_blank"),
                                           img(src="Eastern Grey Kangaroo(9).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Delacour%27s_langur", "Delacour's Langur(9)", target = "_blank"),
                                           img(src="Delacour's Langur(9).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Lowland_paca", "Paca(5)", target = "_blank"),
                                           img(src="Paca(5).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Malayan_tapir", "Malayan Tapir(5)", target = "_blank"),
                                           img(src="Malayan Tapir(5).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Greater_mouse_deer", "Greater Mouse Deer(12)", target = "_blank"),
                                           img(src="Greater Mouse Deer(12).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Northern_Luzon_giant_cloud_rat", "Luzon Giant Cloud Rat(12)", target = "_blank"),
                                           img(src="Luzon Giant Cloud Rat(12).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/White-nosed_coati", "Coati(4)", target = "_blank"),
                                           img(src="Coati(4).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/African_buffalo", "Cape Buffalo(4)", target = "_blank"),
                                           img(src="Cape Buffalo(4).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Cuban_fig-eating_bat", "Fig-eating Bat(13)", target = "_blank"),
                                           img(src="Fig-eating Bat(13).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Moonrat", "Moonrat(13)", target = "_blank"),
                                           img(src="Moonrat(13).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Aardvark", "Aardvark(7)", target = "_blank"),
                                           img(src="Aardvark(7).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Ribbon_seal", "Ribbon Seal(7)", target = "_blank"),
                                           img(src="Ribbon Seal(7).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Southern_brown_bandicoot", "Bandicoot(10)", target = "_blank"),
                                           img(src="Bandicoot(10).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Southern_tamandua", "Southern Tamandua(10)", target = "_blank"),
                                           img(src="Southern Tamandua(10).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Sun_bear", "Sun Bear(2)", target = "_blank"),
                                           img(src="Sun Bear(2).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Narwhal", "Narwhal(2)", target = "_blank"),
                                           img(src="Narwhal(2).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Four-toed_hedgehog", "Hedgehog(15)", target = "_blank"),
                                           img(src="Hedgehog(15).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Eastern_spotted_skunk", 
                                                  "Eastern Spotted Skunk(15)", target = "_blank"),
                                           img(src="Eastern Spotted Skunk(15).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Greater_glider", "Greater Glider(6)", target = "_blank"),
                                           img(src="Greater Glider(6).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Mountain_zebra", "Mountain Zebra(6)", target = "_blank"),
                                           img(src="Mountain Zebra(6).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Paradise_flying_snake", "Paradise Flying Snake(11)", target = "_blank"),
                                           img(src="Paradise Flying Snake(11).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Colombian_white-faced_capuchin", "White-faced Capuchin(11)", target = "_blank"),
                                           img(src="White-faced Capuchin(11).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Sunda_colugo", "Sunda Colugo(3)", target = "_blank"),
                                           img(src="Sunda Colugo(3).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Wild_yak", "Wild Yak(3)", target = "_blank"),
                                           img(src="Wild Yak(3).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Northern_flying_squirrel", "Northern Flying Squirrel(14)", target = "_blank"),
                                           img(src="Northern Flying Squirrel(14).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Striped_polecat", "Zorilla(14)", target = "_blank"),
                                           img(src="Zorilla(14).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Wallace%27s_flying_frog", "Flying Frog(14)", target = "_blank"),
                                           img(src="Flying Frog(14).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Addax", "Addax(1)", target = "_blank"),
                                           img(src="Addax(1).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Ginkgo_biloba", "Ginkgo(1)", target = "_blank"),
                                           img(src="Ginkgo(1).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Grant%27s_golden_mole", "Grant's Golden Mole(16)", target = "_blank"),
                                           img(src="Grant's Golden Mole(16).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Rhizophagus_(fungus)", 
                                                  "Mycorrhizal Fungus(16)", target = "_blank"),
                                           img(src="Mycorrhizal Fungus(16).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Spotted-necked_otter", "Spotted-necked Otter(8)", target = "_blank"),
                                           img(src="Spotted-necked Otter(8).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Asian_forest_tortoise", "Asain Forest Tortoise(8)", target = "_blank"),
                                           img(src="Asain Forest Tortoise(8).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Tayra", "Tayra(9)", target = "_blank"),
                                           img(src="Tayra(9).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Platypus", "Platypus(9)", target = "_blank"),
                                           img(src="Platypus(9).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Maned_wolf", "Maned Wolf(5)", target = "_blank"),
                                           img(src="Maned Wolf(5).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Saimaa_ringed_seal", 
                                                  "Saimma Ringed Seal(5)", target = "_blank"),
                                           img(src="Saimma Ringed Seal(5).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Common_muskrat", "Common Muskrat(12)", target = "_blank"),
                                           img(src="Common Muskrat(12).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Olm", "Olm(12)", target = "_blank"),
                                           img(src="Olm(12).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Chacoan_peccary", "Chacoan Peccary(4)", target = "_blank"),
                                           img(src="Chacoan Peccary(4).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/West_Indian_Ocean_coelacanth", "Coelacanth(4)", target = "_blank"),
                                           img(src="Coelacanth(4).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Mountain_beaver", "Mountain Beaver(13)", target = "_blank"),
                                           img(src="Mountain Beaver(13).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Giant_mudskipper", "Mudskipper(13)", target = "_blank"),
                                           img(src="Mudskipper(13).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Marsh_mongoose", "Marsh Mongoose(7)", target = "_blank"),
                                           img(src="Marsh Mongoose(7).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Great_white_pelican", "Pelican(7)", target = "_blank"),
                                           img(src="Pelican(7).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Quokka", "Quokka(10)", target = "_blank"),
                                           img(src="Quokka(10).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Atlantic_horseshoe_crab", "Horseshoe Crab(10)", target = "_blank"),
                                           img(src="Horseshoe Crab(10).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Cougar", "Puma(2)", target = "_blank"),
                                           img(src="Puma(2).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Alligator_gar", "Alligator Gar(2)", target = "_blank"),
                                           img(src="Alligator Gar(2).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Star-nosed_mole", "Star-nosed Mole(15)", target = "_blank"),
                                           img(src="Star-nosed Mole(15).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Prochlorococcus", "Cyanobacteria(15)", target = "_blank"),
                                           img(src="Cyanobacteria(15).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Indri", "Indri(6)", target = "_blank"),
                                           img(src="Indri(6).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Starry_sturgeon", "Starry Sturgeon(6)", target = "_blank"),
                                           img(src="Starry Sturgeon(6).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Hispid_hare", "Hispid Hare(11)", target = "_blank"),
                                           img(src="Hispid Hare(11).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Tuatara", "Tuatara(11)", target = "_blank"),
                                           img(src="Tuatara(11).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Saiga", "Saiga(3)", target = "_blank"),
                                           img(src="Saiga(3).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Frilled_shark", "Frilled Shark(3)", target = "_blank"),
                                           img(src="Frilled Shark(3).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Woolly_giant_rat", "Woolly Giant Rat(14)", target = "_blank"),
                                           img(src="Woolly Giant Rat(14).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Claytosmunda", "Fern(14)", target = "_blank"),
                                           img(src="Fern(14).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  
                         ),
                         
                         tabPanel("Contributors",
                                  fluidRow(
                                    column(1,
                                    ),
                                    column(4,
                                           p("Designers:", style = "font-size:32px"),
                                           p("Ben Rowland", style = "font-size:24px"),
                                           p("Mark Shirley", style = "font-size:24px"),
                                           p("Jess Ward", style = "font-size:24px"),
                                           p("Theodora Commandeur", style = "font-size:24px"),
                                    ),
                                  ),
                                  br(),
                                  br(),
                                  fluidRow(
                                    column(1,
                                    ),
                                    column(4,
                                           img(src="MEP Logo1.png", width = 400, height = 400),
                                    ),
                                    column(4,
                                           img(src="Newcastle Logo1.jpg", width = 600, height = 400),
                                    )
                                    
                                  )
                                  
                         ),
                         
             ),
             
  ),
  
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  #Wildcard
  output$Q1_8_1 <- renderUI(
    selectInput("Q1_8_1", h4(""),  choices=c("", "Sunda Colugo(3)", input$W1_0_1))
  )
  #Q1
  output$Q1_1_2 <- renderUI(
    selectInput("Q1_1_2", h4("Sweet 16"),  choices=c("", input$Q1_1_1, input$Q1_2_1))
  )
  output$Q1_3_2 <- renderUI(
    selectInput("Q1_3_2", h4(""),  choices=c("", input$Q1_3_1, input$Q1_4_1))
  )
  output$Q1_1_3 <- renderUI(
    selectInput("Q1_1_3", h4("Elite Trait"),  choices=c("", input$Q1_1_2, input$Q1_3_2))
  )
  output$Q1_5_2 <- renderUI(
    selectInput("Q1_5_2", h4(""),  choices=c("", input$Q1_5_1, input$Q1_6_1))
  )
  output$Q1_7_2 <- renderUI(
    selectInput("Q1_7_2", h4(""),  choices=c("", input$Q1_7_1, input$Q1_8_1))
  )
  output$Q1_5_3 <- renderUI(
    selectInput("Q1_5_3", h4(""),  choices=c("", input$Q1_5_2, input$Q1_7_2))
  )
  output$Q1_1_4 <- renderUI(
    selectInput("Q1_1_4", h4("Final Roar"),  choices=c("", input$Q1_1_3, input$Q1_5_3))
  )
  
  #Q2
  output$Q2_1_2 <- renderUI(
    selectInput("Q2_1_2", h4("Sweet 16"),  choices=c("", input$Q2_1_1, input$Q2_2_1))
  )
  output$Q2_3_2 <- renderUI(
    selectInput("Q2_3_2", h4(""),  choices=c("", input$Q2_3_1, input$Q2_4_1))
  )
  output$Q2_1_3 <- renderUI(
    selectInput("Q2_1_3", h4("Elite Trait"),  choices=c("", input$Q2_1_2, input$Q2_3_2))
  )
  output$Q2_5_2 <- renderUI(
    selectInput("Q2_5_2", h4(""),  choices=c("", input$Q2_5_1, input$Q2_6_1))
  )
  output$Q2_7_2 <- renderUI(
    selectInput("Q2_7_2", h4(""),  choices=c("", input$Q2_7_1, input$Q2_8_1))
  )
  output$Q2_5_3 <- renderUI(
    selectInput("Q2_5_3", h4(""),  choices=c("", input$Q2_5_2, input$Q2_7_2))
  )
  output$Q2_1_4 <- renderUI(
    selectInput("Q2_1_4", h4("Final Roar"),  choices=c("", input$Q2_1_3, input$Q2_5_3))
  )
  
  #Q3
  output$Q3_1_2 <- renderUI(
    selectInput("Q3_1_2", h4("Sweet 16"),  choices=c("", input$Q3_1_1, input$Q3_2_1))
  )
  output$Q3_3_2 <- renderUI(
    selectInput("Q3_3_2", h4(""),  choices=c("", input$Q3_3_1, input$Q3_4_1))
  )
  output$Q3_1_3 <- renderUI(
    selectInput("Q3_1_3", h4("Elite Trait"),  choices=c("", input$Q3_1_2, input$Q3_3_2))
  )
  output$Q3_5_2 <- renderUI(
    selectInput("Q3_5_2", h4(""),  choices=c("", input$Q3_5_1, input$Q3_6_1))
  )
  output$Q3_7_2 <- renderUI(
    selectInput("Q3_7_2", h4(""),  choices=c("", input$Q3_7_1, input$Q3_8_1))
  )
  output$Q3_5_3 <- renderUI(
    selectInput("Q3_5_3", h4(""),  choices=c("", input$Q3_5_2, input$Q3_7_2))
  )
  output$Q3_1_4 <- renderUI(
    selectInput("Q3_1_4", h4("Final Roar"),  choices=c("", input$Q3_1_3, input$Q3_5_3))
  )
  
  #Q4
  output$Q4_1_2 <- renderUI(
    selectInput("Q4_1_2", h4("Sweet 16"),  choices=c("", input$Q4_1_1, input$Q4_2_1))
  )
  output$Q4_3_2 <- renderUI(
    selectInput("Q4_3_2", h4(""),  choices=c("", input$Q4_3_1, input$Q4_4_1))
  )
  output$Q4_1_3 <- renderUI(
    selectInput("Q4_1_3", h4("Elite Trait"),  choices=c("", input$Q4_1_2, input$Q4_3_2))
  )
  output$Q4_5_2 <- renderUI(
    selectInput("Q4_5_2", h4(""),  choices=c("", input$Q4_5_1, input$Q4_6_1))
  )
  output$Q4_7_2 <- renderUI(
    selectInput("Q4_7_2", h4(""),  choices=c("", input$Q4_7_1, input$Q4_8_1))
  )
  output$Q4_5_3 <- renderUI(
    selectInput("Q4_5_3", h4(""),  choices=c("", input$Q4_5_2, input$Q4_7_2))
  )
  output$Q4_1_4 <- renderUI(
    selectInput("Q4_1_4", h4("Final Roar"),  choices=c("", input$Q4_1_3, input$Q4_5_3))
  )
  
  #Championship
  output$H1_1_5 <- renderUI(
    selectInput("H1_1_5", h4("Championship"),  choices=c("", input$Q1_1_4, input$Q2_1_4))
  )
  output$H2_1_5 <- renderUI(
    selectInput("H2_1_5", h4("Championship"),  choices=c("", input$Q3_1_4, input$Q4_1_4))
  )
  output$Champion_1_6 <- renderUI(
    selectInput("Champion_1_6", h4("Champion"),  choices=c("", input$H1_1_5, input$H2_1_5))
  )
  
  output$H1 <- renderImage({
    
    filename <- normalizePath(file.path('./images', paste(input$H1_1_5, ".jpg", sep = "")))
    
    list(src = filename,  width = 300, height = 450)
    
  }, deleteFile = FALSE)
  
  output$H2 <- renderImage({
    
    filename <- normalizePath(file.path('./images', paste(input$H2_1_5, ".jpg", sep = "")))
    
    list(src = filename,  width = 300, height = 450)
    
  }, deleteFile = FALSE)
  
  
  observeEvent(input$update, {
    
    bracket <- bind_cols(reactiveValuesToList(input), .id="Round") %>% 
      select(-update) %>% 
      pivot_longer(everything(), names_to = "round", values_to = "competitor") %>% 
      separate(round, into = c("quarter", "row", "round"), sep = "_") %>% 
      filter(round != ".id")
    
    tmp.bracket <<- bracket
    
    Q4 <- bracket %>% 
      filter(quarter == "Q4") %>% 
      pivot_wider(names_from = "round", values_from = "competitor") %>% 
      arrange(row) %>% 
      select(`1`, `2`, `3`, `4`) %>% 
      rename("Round1" = 1, "Sweet16" = 2, "EliteTrait" = 3, "FinalRoar" = 4) 
    
    Q3 <- bracket %>% 
      filter(quarter == "Q3") %>% 
      pivot_wider(names_from = "round", values_from = "competitor") %>% 
      arrange(row) %>% 
      select(`1`, `2`, `3`, `4`) %>% 
      rename("Round1" = 1, "Sweet16" = 2, "EliteTrait" = 3, "FinalRoar" = 4) %>% 
      bind_rows(Q4) %>% 
      rename(Round1. = Round1, Sweet16. = Sweet16, EliteTrait. = EliteTrait, FinalRoar. = FinalRoar)
    
    H2 <- bracket %>% 
      filter(quarter == "H2") %>% 
      select(competitor) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      rename("Championship." = "competitor")
    
    C <- bracket %>% 
      filter(quarter == "Champion") %>% 
      select(competitor) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      rename("Champion" = "competitor")
    
    H1 <- bracket %>% 
      filter(quarter == "H1") %>% 
      select(competitor) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      rename("Championship" = "competitor")
    
    W1 <- bracket %>% 
      filter(quarter == "W1") %>% 
      select(competitor) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      add_row(competitor = NA) %>% 
      rename("Wildcard" = "competitor")
    
    Q2 <- bracket %>% 
      filter(quarter %in% c("Q2")) %>% 
      pivot_wider(names_from = "round", values_from = "competitor") %>% 
      arrange(row) %>% 
      select(`1`, `2`, `3`, `4`) %>% 
      rename("Round1" = 1, "Sweet16" = 2, "EliteTrait" = 3, "FinalRoar" = 4) 
    
    Q1 <- bracket %>% 
      filter(quarter == "Q1") %>% 
      pivot_wider(names_from = "round", values_from = "competitor") %>% 
      arrange(row) %>% 
      select(`1`, `2`, `3`, `4`) %>% 
      rename("Round1" = 1, "Sweet16" = 2, "EliteTrait" = 3, "FinalRoar" = 4) %>% 
      bind_rows(Q2) %>% 
      bind_cols(H1) %>% 
      bind_cols(C) %>% 
      bind_cols(H2) %>% 
      bind_cols(Q3) %>% 
      bind_cols(W1) %>% 
      select(Wildcard, Round1:Champion, Championship., FinalRoar., EliteTrait., Sweet16., Round1.) %>% 
      mutate_all(~replace(., is.na(.), 0))
    
    final_bracket <- Q1
    
    #Prep for Results
    wild <- final_bracket %>% 
      mutate(across(where(is.character), ~na_if(., "0"))) %>% 
      select(Wildcard) %>% 
      drop_na()
    
    a <- final_bracket %>% 
      select(Round1:Championship) %>% 
      rename(Round_1 = Round1,
             Round_2 = Sweet16, 
             Round_3 = EliteTrait, 
             Round_4 = FinalRoar, 
             Round_5 = Championship)
    
    b <- final_bracket %>% 
      select(Championship.:Round1.) %>% 
      rename(Round_1 = Round1.,
             Round_2 = Sweet16., 
             Round_3 = EliteTrait., 
             Round_4 = FinalRoar., 
             Round_5 = Championship.)
    
    cc <- bind_rows(a,b)
    
    r1 <- cc %>% 
      select(Round_1) %>% 
      mutate(across(where(is.character), ~na_if(., "0"))) %>%  
      drop_na()
    r1 <- r1$Round_1
    
    r2 <- cc %>% 
      select(Round_2) %>% 
      mutate(across(where(is.character), ~na_if(., "0"))) %>% 
      drop_na()
    r2 <- r2$Round_2
    
    r3 <- cc %>% 
      select(Round_3) %>% 
      mutate(across(where(is.character), ~na_if(., "0"))) %>%  
      drop_na()
    r3 <- r3$Round_3
    
    r4 <- cc %>% 
      select(Round_4) %>%
      mutate(across(where(is.character), ~na_if(., "0"))) %>%  
      drop_na()
    r4 <- r4$Round_4
    
    r5 <- cc %>% 
      select(Round_5) %>% 
      mutate(across(where(is.character), ~na_if(., "0"))) %>%  
      drop_na()
    r5 <- r5$Round_5
    
    wild <- wild$Wildcard
    
    fin <- final_bracket %>% 
      select(Champion) %>% 
      mutate(across(where(is.character), ~na_if(., "0"))) %>%  
      drop_na()
    fin <- fin$Champion
    
    out <- c(wild,r1,r2,r3,r4,r5,fin)
    
    col.name <- gsub(" ", "_", input$NameBox) %>% 
      as.data.frame()
    
    final_bracket_results <- as.data.frame(out) %>% 
      rename(data = out) %>% 
      separate(data, into = c("data", "trash"), sep = "\\(") %>% 
      select(-trash) 
    
    colnames(final_bracket_results)[1] <- col.name
    
    output$value <- renderText({input$NameBox})
    output$table <- renderTable({final_bracket})
    
    output$downloadData <- downloadHandler(
      filename = paste0("Personal_", col.name, ".csv"), #"bracket.csv", # this only works in the server version
      content = function(file) {
        write_csv(final_bracket, file)
      })
    
    output$downloadData1 <- downloadHandler(
      filename = paste0(col.name, ".csv"), #"bracket1.csv", # this only works in the server version
      content = function(file) {
        write_csv(final_bracket_results, file)
        
      })
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server) 