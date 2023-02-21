library(shiny)
library(tidyverse)

ui <- fluidPage(
  
  titlePanel("March Mammal Madness 2023"),
  
  #Main panel with tables for background, wildcard, H1, H2, championship + preview + download (wildcard position varies depending on the bracket)
  mainPanel( width = 12,
    p("Instructions", style = "font-size:40px"),
    tags$a(href="https://libguides.asu.edu/marchmammalmadness", "Link to the March Mammal Madness Wedsite", style = "font-size:16px"),
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
             p("6. Upload the FIRSTNAME_LASTNAME", strong("(NOT THE PERSONAL ONE)"), "downloaded bracket to the MMM_2023_Completed_Brackets folder on Microsoft teams.", style = "font-size:16px"),
             )
    ),
    p("If you have any questions about filling in your bracket email B.W.Rowland1@newcastle.ac.uk", style = "font-size:14px"),
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
        p("In the early rounds the battle location is in the preferred habitat of the better-ranked combatant in the battle (ranking are the numbers displayed next to the animals), 
        and ecology can play a huge role in what happens. Once to the Elite Trait, the battle location is random among 4 ecologies for the remaining battles. 
          The location is announced right before the battle.", style = "font-size:16px"),
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
                 p("Round 5 = 6 points each", style = "font-size:16px"),
                 p("Champion = 13 points", style = "font-size:16px"),
                 ),
          column(3,
            img(src="MMM2023_Bracket.jpg", width = 1050, height = 800, style="vertical-align:middle"),
          )
        ),
               
      ),
      
      #Wildcard + H1
      tabPanel("Wildcard and First Half of the Bracket",
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("W1_0_1", h4("Wildcard"), choices=c("", "Shrew Mole(16)", "Bumblebee bat(16)"))
          )
        ),
        
        fluidRow(
          h1("Mighty Stripes"),
          column(1,),
          column(2, 
                 selectInput("Q1_1_1", h4("Round 1"), choices=c("", "Okapi(1)", "Four-Striped Grass Mouse(16)"))
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
                 selectInput("Q1_2_1", h4(""),  choices=c("", "Striped Polecat(8)", "Giant-Striped Mongoose(9)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_3_1", h4(""),  choices=c("", "Side-Striped Jackal(5)", "Striped Possum(12)"))
          ),
          column(2,
                 uiOutput("Q1_3_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_4_1", h4(""),  choices=c("", "Striped Dolphin(4)", "Chequered elephant Shrew(13)"))
          )
        ),
        
        fluidRow(
          column(1,),
          column(2, 
                 selectInput("Q1_5_1", h4(""),  choices=c("", "Wildcat(6)", "Highland Streaked Tenrec(11)"))
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
                 selectInput("Q1_6_1", h4(""),  choices=c("", "Striped Hyena(3)", "Fire-Footed Rope Squirrel(14)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_7_1", h4(""),  choices=c("", "Striped Rabbit(7)", "Numbat(10)"))
          ),
          column(2,
                 uiOutput("Q1_7_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_8_1", h4(""),  choices=c("", "Kudu(2)", "Badger Bat(15)"))
          )
        ),
        
        hr(),
        #End Quarter 1
        
        fluidRow(
          h1("Itty Bitty Comeback City"),
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
                 selectInput("Q2_2_1", h4(""),  choices=c("", "Southern Ningaui(8)", "Grasshopper Mouse(9)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_3_1", h4(""),  choices=c("", "Sibree Dwarf Lemur(5)", "Silver Pika(12)"))
          ),
          column(2,
                 uiOutput("Q2_3_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_4_1", h4(""),  choices=c("", "Mara(4)", "Siberian Chipmunk(13)"))
          )
        ),
        
        fluidRow(
          column(1,),
          column(2, 
                 selectInput("Q2_5_1", h4(""),  choices=c("", "Itjaritjari(6)", "Silky Anteater(11)"))
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
                 selectInput("Q2_6_1", h4(""),  choices=c("", "Dik-dik(3)", "Colo Colo Opossum(14)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_7_1", h4(""),  choices=c("", "Bulldog Bat(7)", "Thor's Hero Shrew(10)"))
          ),
          column(2,
                 uiOutput("Q2_7_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_8_1", h4(""), choices=c("", "Rock Hyrax(2)", "Pygmy Jerboa(15)"))
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
         h1("Animal Engineers"),
         column(1,),
         column(2, 
                selectInput("Q3_1_1", h4("Round1"),  choices=c("", "Golden Eagle(1)", "Spongilla Fly(16)"))
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
                selectInput("Q3_2_1", h4(""),  choices=c("", "Veined Octopus(8)", "Puffer Fish(9)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_3_1", h4(""),  choices=c("", "Palaeocastor(5)", "Trapdoor Spider(12)"))
         ),
         column(2,
                uiOutput("Q3_3_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_4_1", h4(""),  choices=c("", "Lungfish(4)", "Tent-Making Bat(13)"))
         )
       ),
       
       fluidRow(
         column(1,),
         column(2, 
                selectInput("Q3_5_1", h4(""),  choices=c("", "Goanna(6)", "Rufous Hornero(11)"))
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
                selectInput("Q3_6_1", h4(""),  choices=c("", "Homo habilis(3)", "Bee(14)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_7_1", h4(""),  choices=c("", "Montezuma Oropendola(7)", "New Caledonian Crow(10)"))
         ),
         column(2,
                uiOutput("Q3_7_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_8_1", h4(""),  choices=c("", "Cathedral Termite(2)", "Dung Beetle(15)"))
         )
       ),
       
       hr(),
       #End Quarter 3
       
       fluidRow(
         h1("Dad Bods"),
         column(1,),
         column(2, 
                selectInput("Q4_1_1", h4("Round 1"),  choices=c("", "Emperor Penguin(1)", "Lined Seahorse(16)"))
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
                selectInput("Q4_2_1", h4(""),  choices=c("", "Owl Monkey(8)", "Caspian Tern(9)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_3_1", h4(""),  choices=c("", "Pacific Spiny Lumpsucker(5)", "Peacock Wrasse(12)"))
         ),
         column(2,
                uiOutput("Q4_3_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_4_1", h4(""),  choices=c("", "Siamang(4)", "Darwin's Frog(13)"))
         )
       ),
       
       fluidRow(
         column(1,),
         column(2, 
                selectInput("Q4_5_1", h4(""),  choices=c("", "Bat-Eared Fox(6)", "Spotted Sandpiper(11)"))
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
                selectInput("Q4_6_1", h4(""),  choices=c("", "Wolverine(3)", "Giant Water Bug(14)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_7_1", h4(""),  choices=c("", "Greater Flamingo(7)", "Dyak Fruit Bat(10)"))
         ),
         column(2,
                uiOutput("Q4_7_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_8_1", h4(""),  choices=c("", "Greater Rhea(2)", "Three-Spined Stickleback(15)"))
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
                 tags$a(href="https://en.wikipedia.org/wiki/Okapi", "Okapi(1)"), 
                 img(src="Okapi(1).jpg", width = 150, height = 100),
                 ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Golden_eagle", "Golden Eagle(1)"),
                 img(src="Golden Eagle(1).jpg", width = 150, height = 100),
                 ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Four-striped_grass_mouse", "Four-Striped Grass Mouse(16)"), 
                 img(src="Four-Striped Grass Mouse(16).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Climacia_areolaris#:~:text=Climacia%20areolaris%20is%20a%20species,%2C%20United%20States%2C%20and%20Mexico.", 
                        "Spongilla Fly(16)"),
                 img(src="Spongilla Fly(16).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Saharan_striped_polecat", "Striped Polecat(8)"),
                 img(src="Striped Polecat(8).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Amphioctopus_marginatus", "Veined Octopus(8)"),
                 img(src="Veined Octopus(8).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Broad-striped_Malagasy_mongoose", "Giant-Striped Mongoose(9)"),
                 img(src="Giant-Striped Mongoose(9).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Torquigener_albomaculosus", "Puffer Fish(9)"),
                 img(src="Puffer Fish(9).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Side-striped_jackal", "Side-Striped jackal(5)"),
                 img(src="Side-Striped jackal(5).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Palaeocastor", "Palaeocastor(5)"),
                 img(src="Palaeocastor(5).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Striped_possum", "Striped Possum(12)"),
                 img(src="Striped Possum(12).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Sydney_brown_trapdoor_spider", "Trapdoor Spider(12)"),
                 img(src="Trapdoor Spider(12).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Striped_dolphin", "Striped Dolphin(4)"),
                 img(src="Striped Dolphin(4).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Spotted_lungfish", "Lungfish(4)"),
                 img(src="Lungfish(4).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Checkered_elephant_shrew", "Chequered elephant Shrew(13)"),
                 img(src="Chequered elephant Shrew(13).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Tent-making_bat", "Tent-Making Bat(13)"),
                 img(src="Tent-Making Bat(13).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/European_wildcat", "Wildcat(6)"),
                 img(src="Wildcat(6).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Yellow-spotted_monitor", "Goanna(6)"),
                 img(src="Goanna(6).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Highland_streaked_tenrec", "Highland Streaked Tenrec(11)"),
                 img(src="Highland Streaked Tenrec(11).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Rufous_hornero", "Rufous Hornero(11)"),
                 img(src="Rufous Hornero(11).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Striped_hyena", "Striped Hyena(3)"),
                 img(src="Striped Hyena(3).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Homo_habilis", "Homo habilis(3)"),
                 img(src="Homo habilis(3).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Fire-footed_rope_squirrel", "Fire-Footed Rope Squirrel(14)"),
                 img(src="Fire-Footed Rope Squirrel(14).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://www.sci.news/biology/anthophora-pueblo-species-bee-sandstone-nests-04196.html#:~:text=The%20new%20species%2C%20Anthophora%20pueblo,Orr%20and%20his%20colleagues%20explained.", 
                        "Bee(14)"),
                 img(src="Bee(14).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Sumatran_striped_rabbit", "Striped Rabbit(7)"),
                 img(src="Striped Rabbit(7).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Montezuma_oropendola", "Montezuma Oropendola(7)"),
                 img(src="Montezuma Oropendola(7).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Numbat", "Numbat(10)"),
                 img(src="Numbat(10).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/New_Caledonian_crow", "New Caledonian Crow(10)"),
                 img(src="New Caledonian Crow(10).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Greater_kudu", "Kudu(2)"),
                 img(src="Kudu(2).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Nasutitermes_triodiae", "Cathedral Termite(2)"),
                 img(src="Cathedral Termite(2).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Pied_butterfly_bat", "Badger Bat(15)"),
                 img(src="Badger Bat(15).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Scarabaeus", "Dung Beetle(15)"),
                 img(src="Dung Beetle(15).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/American_shrew_mole", "Shrew Mole(16)"),
                 img(src="Shrew Mole(16).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Kitti%27s_hog-nosed_bat", "Bumblebee Bat(16)"),
                 img(src="Bumblebee Bat(16).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Sea_otter", "Sea Otter(1)"),
                 img(src="Sea Otter(1).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Emperor_penguin", 
                        "Emperor Penguin(1)"),
                 img(src="Emperor Penguin(1).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                  
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Lined_seahorse", "Lined Seahorse(16)"),
                 img(src="Lined Seahorse(16).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Southern_ningaui", "Southern Ningaui(8)"),
                 img(src="Southern Ningaui(8).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Azara%27s_night_monkey", "Owl Monkey(8)"),
                 img(src="Owl Monkey(8).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Northern_grasshopper_mouse", "Grasshopper Mouse(9)"),
                 img(src="Grasshopper Mouse(9).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Caspian_tern", "Caspian Tern(9)"),
                 img(src="Caspian Tern(9).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Sibree%27s_dwarf_lemur", "Sibree Dwarf Lemur(5)"),
                 img(src="Sibree Dwarf Lemur(5).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Pacific_spiny_lumpsucker", 
                        "Pacific Spiny Lumpsucker(5)"),
                 img(src="Pacific Spiny Lumpsucker(5).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Helan_Shan_pika", "Silver Pika(12)"),
                 img(src="Silver Pika(12).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/East_Atlantic_peacock_wrasse", "Peacock Wrasse(12)"),
                 img(src="Peacock Wrasse(12).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Patagonian_mara", "Mara(4)"),
                 img(src="Mara(4).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Siamang", "Siamang(4)"),
                 img(src="Siamang(4).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Siberian_chipmunk", "Siberian Chipmunk(13)"),
                 img(src="Siberian Chipmunk(13).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Darwin%27s_frog", "Darwin's Frog(13)"),
                 img(src="Darwin's Frog(13).jpg", width = 150, height = 100),
          ),
        ),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Southern_marsupial_mole", "Itjaritjari(6)"),
                 img(src="Itjaritjari(6).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Bat-eared_fox", "Bat-Eared Fox(6)"),
                 img(src="Bat-Eared Fox(6).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Silky_anteater", "Silky Anteater(11)"),
                 img(src="Silky Anteater(11).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Spotted_sandpiper", "Spotted Sandpiper(11)"),
                 img(src="Spotted Sandpiper(11).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/G%C3%BCnther%27s_dik-dik", "Dik-dik(3)"),
                 img(src="Dik-dik(3).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Wolverine", "Wolverine(3)"),
                 img(src="Wolverine(3).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Monito_del_monte", "Colo Colo Opossum(14)"),
                 img(src="Colo Colo Opossum(14).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Belostoma_lutarium", "Giant Water Bug(14)"),
                 img(src="Giant Water Bug(14).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Greater_bulldog_bat", "Bulldog Bat(7)"),
                 img(src="Bulldog Bat(7).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Greater_flamingo", "Greater Flamingo(7)"),
                 img(src="Greater Flamingo(7).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Thor%27s_hero_shrew", "Thor's Hero Shrew(10)"),
                 img(src="Thor's Hero Shrew(10).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Dayak_fruit_bat", "Dyak Fruit Bat(10)"),
                 img(src="Dyak Fruit Bat(10).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Rock_hyrax", "Rock Hyrax(2)"),
                 img(src="Rock Hyrax(2).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Greater_rhea", "Greater Rhea(2)"),
                 img(src="Greater Rhea(2).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/?title=Salpingotus_michaelis&redirect=no", "Pygmy Jerboa(15)"),
                 img(src="Pygmy Jerboa(15).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Three-spined_stickleback", "Three-Spined Stickleback(15)"),
                 img(src="Three-Spined Stickleback(15).jpg", width = 150, height = 100),
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
    selectInput("Q2_1_1", h4("Round 1"),  choices=c("", "Sea Otter(1)", input$W1_0_1))
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
      
      list(src = filename,  width = 300, height = 250)
      
  }, deleteFile = FALSE)
  
  output$H2 <- renderImage({
    
    filename <- normalizePath(file.path('./images', paste(input$H2_1_5, ".jpg", sep = "")))
    
    list(src = filename,  width = 300, height = 250)
    
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