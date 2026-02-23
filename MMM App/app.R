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
                                  p("        - Ocean Reef", style = "font-size:16px"),
                                  p("        - Swamp", style = "font-size:16px"),
                                  p("        - Desert", style = "font-size:16px"),
                                  p("        - Eucalypt Forest", style = "font-size:16px"),
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
                                           img(src="MMM Bracket 2026.PNG", width = 1050, height = 800, style="vertical-align:middle"),
                                    )
                                  ),
                                  
                         ),
                         
                         #Wildcard + H1
                         tabPanel("Wildcard and First Half of the Bracket",
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("W1_0_1", h4("Wildcard"), choices=c("", "Bone Collector Caterpillar (16)", "Assassin Bug (16)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    h1("Library Legends"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q1_1_1", h4("Round 1"), choices=c("", "Nile Crocodile (1)", "Papyrus (16)"))
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
                                           selectInput("Q1_2_1", h4(""),  choices=c("", "European Rabbit (8)", "Mouse (9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_3_1", h4(""),  choices=c("", "Grey Fox (5)", "Book Scorpion (12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q1_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_4_1", h4(""),  choices=c("", "Eurasian Eagle Owl (4)", "Silver Fish (13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q1_5_1", h4(""),  choices=c("", "Domestic Cat (6)", "Common Pipistrelle Bat (11)"))
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
                                           selectInput("Q1_6_1", h4(""),  choices=c("", "Domestic Dog (3)", "Book Loue (14)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_7_1", h4(""),  choices=c("", "White Stork (7)", "Mesopotamian Himir (10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q1_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q1_8_1", h4(""), choices=c("", "Lions (2)", "Mold (15)"))
                                    )
                                  ),
                                  
                                  hr(),
                                  #End Quarter 1
                                  
                                  fluidRow(
                                    h1("Thats so Metal"),
                                    column(1,),
                                    column(2, 
                                           uiOutput("Q2_1_1")
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
                                           selectInput("Q2_2_1", h4(""),  choices=c("", "Least Shrew (8)", "Long-tailed Planigale (9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_3_1", h4(""),  choices=c("", "Common Chuckwalla (5)", "Fringed-lipped Bat (12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q2_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_4_1", h4(""),  choices=c("", "Pacific Lamprey (4)", "Boneworm (13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q2_5_1", h4(""),  choices=c("", "Southern Grasshopper Mouse (7)", "Uropygi (10)"))
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
                                           selectInput("Q2_6_1", h4(""),  choices=c("", "Gila Monster (3)", "Siberian Salamander (14)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_7_1", h4(""),  choices=c("", "Bloodworm (7)", "Shrike (10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q2_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q2_8_1", h4(""), choices=c("", "Ossifrage (2)", "Cicada Killer Wasp (15)"))
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
                                    h1("Money Mammals"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q3_1_1", h4("Round1"),  choices=c("", "Humpback Whale (1)", "Red Squirrel (16)"))
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
                                           selectInput("Q3_2_1", h4(""),  choices=c("", "Spectacled Bear (8)", "Eastern Gorilla (9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_3_1", h4(""),  choices=c("", "Giraffe (5)", "Giant Anteater (12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q3_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_4_1", h4(""),  choices=c("", "Indian Rhinoceros (4)", "Chital (13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q3_5_1", h4(""),  choices=c("", "Roan Antelope (6)", "Bornean Orangutan (11)"))
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
                                           selectInput("Q3_6_1", h4(""),  choices=c("", "Hippopotamus (3)", "Brown-throated Sloth (14)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_7_1", h4(""),  choices=c("", "Arabian Oryx (7)", "Eurasian Lynx (10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q3_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q3_8_1", h4(""),  choices=c("", "Asian Elephant (2)", "Beech Marten (15)"))
                                    )
                                  ),
                                  
                                  hr(),
                                  #End Quarter 3
                                  
                                  fluidRow(
                                    h1("Extinction is Forever"),
                                    column(1,),
                                    column(2, 
                                           selectInput("Q4_1_1", h4("Round 1"),  choices=c("", "Stellers Sea Cow (1)", "St. Kilda House Mouse (16)"))
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
                                           selectInput("Q4_2_1", h4(""),  choices=c("", "Saudi Gazella (8)", "Japanese Otter (9)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_3_1", h4(""),  choices=c("", "Baiji (5)", "Martinique Gaint RIce Rat (12)"))
                                    ),
                                    column(2,
                                           uiOutput("Q4_3_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_4_1", h4(""),  choices=c("", "Caribbean Monk Seal (4)", "Yallara (13)"))
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2, 
                                           selectInput("Q4_5_1", h4(""),  choices=c("", "Thylacine (6)", "Little Swan Island Hutia (11)"))
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
                                           selectInput("Q4_6_1", h4(""),  choices=c("", "Aurochs (3)", "Bramble Cay Melomys (14)"))
                                    )
                                    
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_7_1", h4(""),  choices=c("", "Falkland Isnalnds Wolf (7)", "Sea Mink (10)"))
                                    ),
                                    column(2,
                                           uiOutput("Q4_7_2")
                                    )
                                  ),
                                  
                                  fluidRow(
                                    column(1,),
                                    column(2,
                                           selectInput("Q4_8_1", h4(""),  choices=c("", "EIld Dromedary Camel (2)", "NZ Greater Short-tailed Bat (15)"))
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
                                           tags$a(href="https://en.wikipedia.org/wiki/Nile_crocodile", "Nile Crocodile (1)", target = "_blank"), 
                                           img(src="Nile Crocodile (1).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Humpback_whale", "Humpback Whale (1)", target = "_blank"),
                                           img(src="Humpback Whale (1).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Cyperus_papyrus", "Papyrus (16)", target = "_blank"), 
                                           img(src="Papyrus (16).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Red_squirrel", 
                                                  "Red Squirrel (16)"),
                                           img(src="Red Squirrel (16).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/European_rabbit", "European Rabbit (8)", target = "_blank"),
                                           img(src="European Rabbit (8).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Spectacled_bear", "Spectacled Bear (8)", target = "_blank"),
                                           img(src="Spectacled Bear (8).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/House_mouse", "Mouse (9)", target = "_blank"),
                                           img(src="Mouse (9).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Eastern_gorilla", "Eastern Gorilla (9)", target = "_blank"),
                                           img(src="Eastern Gorilla (9).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Gray_fox", "Grey Fox (5)", target = "_blank"),
                                           img(src="Grey Fox (5).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Giraffe", "Giraffe (5)", target = "_blank"),
                                           img(src="Giraffe (5).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Chelifer_cancroides", "Book Scorpion (12)", target = "_blank"),
                                           img(src="Book Scorpion (12).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Giant_anteater", "Giant Anteater (12)", target = "_blank"),
                                           img(src="Giant Anteater (12).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Eurasian_eagle-owl", "Eurasian Eagle Owl (4)", target = "_blank"),
                                           img(src="Eurasian Eagle Owl (4).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Indian_rhinoceros", "Indian Rhinoceros (4)", target = "_blank"),
                                           img(src="Indian Rhinoceros (4).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Silverfish", "Silverfish (13)", target = "_blank"),
                                           img(src="Silverfish (13).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Chital", "Chital (13)", target = "_blank"),
                                           img(src="Chital (13).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Cat", "Domestic Cat (6)", target = "_blank"),
                                           img(src="Domestic Cat (6).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Roan_antelope", "Roan Antelope (6)", target = "_blank"),
                                           img(src="Roan Antelope (6).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Common_pipistrelle", "Common Pipistrelle Bat (11)", target = "_blank"),
                                           img(src="Common Pipistrelle Bat (11).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Bornean_orangutan", "Bornean Orangutan (11)", target = "_blank"),
                                           img(src="Bornean Orangutan (11).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Dog", "Domestic Dog (3)", target = "_blank"),
                                           img(src="Domestic Dog (3).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Hippopotamus", "Hippotamus (3)", target = "_blank"),
                                           img(src="Hippotamus (3).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Liposcelis_bostrychophila", "Book Louse (14)", target = "_blank"),
                                           img(src="Book Louse (14).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Brown-throated_sloth", 
                                                  "Brown-throated Sloth (14)", target = "_blank"),
                                           img(src="Brown-throated Sloth (14).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/White_stork", "White Stork (7)", target = "_blank"),
                                           img(src="White Stork (7).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Arabian_oryx", "Arabian Oryx (7)", target = "_blank"),
                                           img(src="Arabian Oryx (7).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Mesopotamian_himri", "Mesopotamian Himri (10)", target = "_blank"),
                                           img(src="Mesopotamian Himri (10).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Eurasian_lynx", "Eurasian Lynx (10)", target = "_blank"),
                                           img(src="Eurasian Lynx (10).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Lion", "Lions (2)", target = "_blank"),
                                           img(src="Lions (2).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Asian_elephant", "Asian Elephant (2)", target = "_blank"),
                                           img(src="Asian Elephant (2).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Aspergillus", "Mold (15)", target = "_blank"),
                                           img(src="Mold (15).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Beech_marten", "Beech Marten (15)", target = "_blank"),
                                           img(src="Beech Marten (15).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Hyposmocoma", "Bone Collector Caterpillar (16)", target = "_blank"),
                                           img(src="Bone Collector Caterpillar (16).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Honey_badger", "Honey Badger (1)", target = "_blank"),
                                           img(src="Honey Badger (1).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Steller%27s_sea_cow", "Stellers Sea Cow (1)", target = "_blank"),
                                           img(src="Stellers Sea Cow (1).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Acanthaspis_petax", "Assassin Bug (16)", target = "_blank"),
                                           img(src="Assassin Bug (16).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/St_Kilda_house_mouse", 
                                                  "St. Kilda House Mouse (16)", target = "_blank"),
                                           img(src="St. Kilda House Mouse (16).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/North_American_least_shrew", "Least Shrew (8)", target = "_blank"),
                                           img(src="Least Shrew (8).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Saudi_gazelle", "Saudi Gazelle (8)", target = "_blank"),
                                           img(src="Saudi Gazelle (8).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Long-tailed_planigale", "Long-tailed Planigale (9)", target = "_blank"),
                                           img(src="Long-tailed Planigale (9).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Japanese_otter", "Japanese Otter (9)", target = "_blank"),
                                           img(src="Japanese Otter (9).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Sauromalus_ater", "Common Chuckwalla (5)", target = "_blank"),
                                           img(src="Common Chuckwalla (5).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Baiji", 
                                                  "Baiji (5)", target = "_blank"),
                                           img(src="Baiji (5).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Fringe-lipped_bat", "Fringe-lipped Bat (12)", target = "_blank"),
                                           img(src="Fringe-lipped Bat (12).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Megalomys_desmarestii", "Martinique Giant Rice Rat (12)", target = "_blank"),
                                           img(src="Martinique Giant Rice Rat (12).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Pacific_lamprey", "Pacific Lamprey (4)", target = "_blank"),
                                           img(src="Pacific Lamprey (4).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Caribbean_monk_seal", "Carribean Monk Seal (4)", target = "_blank"),
                                           img(src="Carribean Monk Seal (4).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Osedax", "Boneworm (13)", target = "_blank"),
                                           img(src="Boneworm (13).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Lesser_bilby", "Yallara (13)", target = "_blank"),
                                           img(src="Yallara (13).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Southern_grasshopper_mouse", "Southern Grasshopper Mouse (6)", target = "_blank"),
                                           img(src="Southern Grasshopper Mouse (6).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Thylacine", "Thylacine (6)", target = "_blank"),
                                           img(src="Thylacine (6).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Uropygi", "Uropygi (11)", target = "_blank"),
                                           img(src="Uropygi (11).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Little_Swan_Island_hutia", "Little Swan Island Hutia (11)", target = "_blank"),
                                           img(src="Little Swan Island Hutia (11).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Gila_monster", "Gila Monster (3)", target = "_blank"),
                                           img(src="Gila Monster (3).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Aurochs", "Aurochs (3)", target = "_blank"),
                                           img(src="Aurochs (3).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Salamandrella_keyserlingii", "Siberian Salamander (14)", target = "_blank"),
                                           img(src="Siberian Salamander (14).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Bramble_Cay_melomys", "Bramble Cay Meloymys (14)", target = "_blank"),
                                           img(src="Bramble Cay Meloymys (14).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Glycera_dibranchiata", "Bloodworm (7)", target = "_blank"),
                                           img(src="Bloodworm (7).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Falkland_Islands_wolf", "Falkland Islands Wolf (7)", target = "_blank"),
                                           img(src="Falkland Islands Wolf (7).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Great_grey_shrike", "Shirke (10)", target = "_blank"),
                                           img(src="Shrike (10).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Sea_mink", "Sea Mink (10)", target = "_blank"),
                                           img(src="Sea Mink (10).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Bearded_vulture", "Ossifrage (2)", target = "_blank"),
                                           img(src="Ossifrage (2).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Dromedary", "Wild Dromedary Camel (2)", target = "_blank"),
                                           img(src="Wild Dromedary Camel (2).jpg", width = 150, height = 200),
                                    ),
                                  ),
                                  br(),
                                  fluidRow(
                                    column(1,),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/Sphecius_speciosus", "Cicada Killer Wasp (15)", target = "_blank"),
                                           img(src="Cicada Killer Wasp (15).jpg", width = 150, height = 200),
                                    ),
                                    column(4,
                                           tags$a(href="https://en.wikipedia.org/wiki/New_Zealand_greater_short-tailed_bat", "NZ Greater Short-tailed Bat (15)", target = "_blank"),
                                           img(src="NZ Greater Short-tailed Bat (15).jpg", width = 150, height = 200),
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
  output$Q2_1_1 <- renderUI(
    selectInput("Q2_1_1", h4("Round 1"),  choices=c("", "Honey Badger (1)", input$W1_0_1))
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