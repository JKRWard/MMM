library(shiny)
library(tidyverse)

ui <- fluidPage(
  
  titlePanel("March Mammal Madness 2022"),
  
  #Main panel with tables for background, wildcard, H1, H2, championship + preview + download (wildcard position varies depending on the bracket)
  mainPanel( width = 12,
    p("Instructions", style = "font-size:40px"),
    tags$a(href="https://libguides.asu.edu/MarchMammalMadness/2022mmm", "Link to the March Mammal Madness Wedsite", style = "font-size:16px"),
    br(),
    br(),
    fluidRow(
      column(2,
             p("1. Read the background information so you have an idea of what the tournament is about and how it works. Make note of the factors considered when chosing who wins and the
      rules surrounding habitat.", style = "font-size:16px"),
             p("*The second to last tab has links to the Wiki pages for each animal. Research is not required to do well but it is fun! It is more important for the collective noun 
      quarter so you know which species of animal is being refered too.", style = "font-size:14px"),
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
             p("6. Upload the FIRSTNAME_LASTNAME (not the personal one) downloaded bracket to the MMM_2022_Completed_Brackets folder on Microsoft teams.", style = "font-size:16px"),
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
        tournament of *simulated* combat competition among animals. Scientific literature is cited to substantiate likely outcomes as a probabilistic function of the 
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
            img(src="MMM2022_Bracket.png", width = 1050, height = 800, style="vertical-align:middle"),
          )
        ),
               
      ),
      
      #Wildcard + H1
      tabPanel("Wildcard and First Half of the Bracket",
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("W1_0_1", h4("Wildcard"), choices=c("", "Mexican Free-Tailed Bat(16)", "Florida Bonneted Bat(16)"))
          )
        ),
        
        fluidRow(
          h1("Mammal Collectives"),
          column(1,),
          column(2, 
                 selectInput("Q1_1_1", h4("Round 1"), choices=c("", "Pride of Lionesses(1)", "Labor of Moles(16)"))
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
                 selectInput("Q1_2_1", h4(""),  choices=c("", "Glaring of Cats(8)", "Sneak of Weasels(9)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_3_1", h4(""),  choices=c("", "Romp of Otters(5)", "Conspiracy of Lemurs(12)"))
          ),
          column(2,
                 uiOutput("Q1_3_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_4_1", h4(""),  choices=c("", "Lodge of Beavers(4)", "Prickle of Hedgehogs(13)"))
          )
        ),
        
        fluidRow(
          column(1,),
          column(2, 
                 selectInput("Q1_5_1", h4(""),  choices=c("", "Troop of Monkeys(6)", "Wisdom of Wombats(11)"))
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
                 selectInput("Q1_6_1", h4(""),  choices=c("", "Herd of Reindeer(3)", "Cauldron of Bats(14)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_7_1", h4(""),  choices=c("", "Skulk of Foxes(7)", "Stench of Skunks(10)"))
          ),
          column(2,
                 uiOutput("Q1_7_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q1_8_1", h4(""),  choices=c("", "Embarrassment of Pandas(2)", "Town of Prairie Dogs(15)"))
          )
        ),
        
        hr(),
        #End Quarter 1
        
        fluidRow(
          h1("Wild North America"),
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
                 selectInput("Q2_2_1", h4(""),  choices=c("", "Gray Wolf(8)", "American Badger(9)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_3_1", h4(""),  choices=c("", "Mountain Lion(5)", "Kit Fox(12)"))
          ),
          column(2,
                 uiOutput("Q2_3_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_4_1", h4(""),  choices=c("", "Jaguar(4)", "Marsh Rabbit(13)"))
          )
        ),
        
        fluidRow(
          column(1,),
          column(2, 
                 selectInput("Q2_5_1", h4(""),  choices=c("", "Elk(6)", "Yellow-Bellied Marmot(11)"))
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
                 selectInput("Q2_6_1", h4(""),  choices=c("", "Black Bear(3)", "13-lined Ground Squirrel(14)"))
          )
          
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_7_1", h4(""),  choices=c("", "Bighorn Sheep(7)", "Coyote(10)"))
          ),
          column(2,
                 uiOutput("Q2_7_2")
          )
        ),
        
        fluidRow(
          column(1,),
          column(2,
                 selectInput("Q2_8_1", h4(""), choices=c("", "Bison(2)", "Southern Bog Lemming(15)"))
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
         h1("Queens of the Sea & Sky"),
         column(1,),
         column(2, 
                selectInput("Q3_1_1", h4("Round1"),  choices=c("", "Orca(1)", "Common Prawn(16)"))
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
                selectInput("Q3_2_1", h4(""),  choices=c("", "Olive Sea Snake(8)", "Hagfish(9)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_3_1", h4(""),  choices=c("", "Common Map Turtle(5)", "Northern Jacana(12)"))
         ),
         column(2,
                uiOutput("Q3_3_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_4_1", h4(""),  choices=c("", "Blancket Octopus(4)", "Angler Fish(13)"))
         )
       ),
       
       fluidRow(
         column(1,),
         column(2, 
                selectInput("Q3_5_1", h4(""),  choices=c("", "Macaroni Penguin(6)", "Eclectus Parrot(11)"))
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
                selectInput("Q3_6_1", h4(""),  choices=c("", "Steller's Sea Eagle(3)", "Dobsonfly(14)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_7_1", h4(""),  choices=c("", "Arctic Tern(7)", "Indian Fruit Bat(10)"))
         ),
         column(2,
                uiOutput("Q3_7_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q3_8_1", h4(""),  choices=c("", "Hawaiian Monk Seal(2)", "Iberian Ribbed Newt(15)"))
         )
       ),
       
       hr(),
       #End Quarter 3
       
       fluidRow(
         h1("Why Not Both?"),
         column(1,),
         column(2, 
                selectInput("Q4_1_1", h4("Round 1"),  choices=c("", "Walrus(1)", "Lichen(16)"))
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
                selectInput("Q4_2_1", h4(""),  choices=c("", "Muntjac(8)", "Echidna(9)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_3_1", h4(""),  choices=c("", "Serval(5)", "Lesser NZ Short-tailed Bat(12)"))
         ),
         column(2,
                uiOutput("Q4_3_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_4_1", h4(""),  choices=c("", "Pangolin(4)", "Painted Redstart(13)"))
         )
       ),
       
       fluidRow(
         column(1,),
         column(2, 
                selectInput("Q4_5_1", h4(""),  choices=c("", "Therapsid(6)", "Scansoriopterygid(11)"))
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
                selectInput("Q4_6_1", h4(""),  choices=c("", "Lungfish(3)", "Spotted Salamander(14)"))
         )
         
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_7_1", h4(""),  choices=c("", "Hairy Frogfish(7)", "Hairy Frog(10)"))
         ),
         column(2,
                uiOutput("Q4_7_2")
         )
       ),
       
       fluidRow(
         column(1,),
         column(2,
                selectInput("Q4_8_1", h4(""),  choices=c("", "Swordfish(2)", "Leaf Slug(15)"))
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
                 tags$a(href="https://en.wikipedia.org/wiki/Lion", "Pride of Lionesses(1)"), 
                 img(src="Pride of Lionesses(1).jpg", width = 150, height = 100),
                 ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Orca", "Orca(1)"),
                 img(src="Orca(1).jpg", width = 150, height = 100),
                 ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Hairy-tailed_mole", "Labor of Moles(16)"), 
                 img(src="Labor of Moles(16).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Palaemon_serratus", "Common Prawn(16)"),
                 img(src="Common Prawn(16).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Black-footed_cat", "Glaring of Cats(8)"),
                 img(src="Glaring of Cats(8).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Aipysurus_laevis", "Olive Sea Snake(8)"),
                 img(src="Olive Sea Snake(8).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Amazon_weasel", "Sneak of Weasels(9)"),
                 img(src="Sneak of Weasels(9).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Hagfish", "Hagfish(9)"),
                 img(src="Hagfish(9).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Smooth-coated_otter", "Romp of Otters(5)"),
                 img(src="Romp of Otters(5).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Northern_map_turtle", "Common Map Turtle(5)"),
                 img(src="Common Map Turtle(5).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Mongoose_lemur", "Conspiracy of Lemurs(12)"),
                 img(src="Conspiracy of Lemurs(12).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Northern_jacana", "Northern Jacana(12)"),
                 img(src="Northern Jacana(12).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Eurasian_beaver", "Lodge of Beavers(4)"),
                 img(src="Lodge of Beavers(4).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Blanket_octopus", "Blancket Octopus(4)"),
                 img(src="Blancket Octopus(4).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Desert_hedgehog", "Prickle of Hedgehogs(13)"),
                 img(src="Prickle of Hedgehogs(13).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Anglerfish", "Angler Fish(13)"),
                 img(src="Angler Fish(13).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Blue_monkey", "Troop of Monkeys(6)"),
                 img(src="Troop of Monkeys(6).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Macaroni_penguin", "Macaroni Penguin(6)"),
                 img(src="Macaroni Penguin(6).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Common_wombat", "Wisdom of Wombats(11)"),
                 img(src="Wisdom of Wombats(11).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Eclectus_parrot", "Eclectus Parrot(11)"),
                 img(src="Eclectus Parrot(11).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Reindeer", "Herd of Reindeer(3)"),
                 img(src="Herd of Reindeer(3).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Steller%27s_sea_eagle", "Steller's Sea Eagle(3)"),
                 img(src="Steller's Sea Eagle(3).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Big-eared_woolly_bat", "Cauldron of Bats(14)"),
                 img(src="Cauldron of Bats(14).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Dobsonfly", "Dobsonfly(14)"),
                 img(src="Dobsonfly(14).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Bat-eared_fox", "Skulk of Foxes(7)"),
                 img(src="Skulk of Foxes(7).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Arctic_tern", "Arctic Tern(7)"),
                 img(src="Arctic Tern(7).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Hooded_skunk", "Stench of Skunks(10)"),
                 img(src="Stench of Skunks(10).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Indian_flying_fox", "Indian Fruit Bat(10)"),
                 img(src="Indian Fruit Bat(10).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Giant_panda", "Embarassment of Pandas(2)"),
                 img(src="Embarrassment of Pandas2.jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Hawaiian_monk_seal", "Hawaiian Monk Seal(2)"),
                 img(src="Hawaiian Monk Seal(2).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Black-tailed_prairie_dog", "Town of Prairie Dogs(15)"),
                 img(src="Town of Prairie Dogs(15).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Iberian_ribbed_newt", "Iberian Ribbed Newt(15)"),
                 img(src="Iberian Ribbed Newt(15).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Mexican_free-tailed_bat", "Mexican Free-Tailed Bat(16)"),
                 img(src="Mexican Free-Tailed Bat(16).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Florida_bonneted_bat", "Florida Bonneted Bat(16)"),
                 img(src="Florida Bonneted Bat(16).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Grizzly_bear", "Grizzly Bear(1)"),
                 img(src="Grizzly Bear(1).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Walrus#:~:text=The%20walrus%20(Odobenus%20rosmarus)%20is,family%20Odobenidae%20and%20genus%20Odobenus.&text=divergens)%2C%20which%20lives%20in%20the%20Pacific%20Ocean.", 
                        "Walrus(1)"),
                 img(src="Walrus(1).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                  
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Lichen", "Lichen(16)"),
                 img(src="Lichen(16).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Wolf", "Gray Wolf(8)"),
                 img(src="Gray Wolf(8).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Muntjac", "Muntjac(8)"),
                 img(src="Muntjac(8).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/American_badger", "American Badger(9)"),
                 img(src="American Badger(9).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Echidna#:~:text=Echidnas%20(%2F%C9%AA%CB%88k%C9%AA,members%20of%20the%20order%20Monotremata.", "Echidna(9)"),
                 img(src="Echidna(9).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Cougar", "Mountain Lion(5)"),
                 img(src="Mountain Lion(5).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Serval#:~:text=The%20serval%20(Leptailurus%20serval)%20is,Saharan%20countries%2C%20except%20rainforest%20regions.&text=The%20serval%20is%20a%20slender,(20%E2%80%9340%20lb).", 
                        "Serval(5)"),
                 img(src="Serval(5).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Kit_fox", "Kit Fox(12)"),
                 img(src="Kit Fox(12).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/New_Zealand_lesser_short-tailed_bat", "Lesser NZ Short-tailed Bat(12)"),
                 img(src="Lesser NZ Short-tailed Bat(12).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Jaguar", "Jaguar(4)"),
                 img(src="Jaguar(4).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Pangolin", "Pangolin(4)"),
                 img(src="Pangolin(4).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Marsh_rabbit", "Marsh Rabbit(13)"),
                 img(src="Marsh Rabbit(13).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Painted_redstart", "Painted Redstart(13)"),
                 img(src="Painted Redstart(13).jpg", width = 150, height = 100),
          ),
        ),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Elk", "Elk(6)"),
                 img(src="Labor of Moles(16).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Therapsid", "Therapsid(6)"),
                 img(src="Therapsid(6).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Yellow-bellied_marmot", "Yellow-Bellied Marmot(11)"),
                 img(src="Yellow-Bellied Marmot(11).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Scansoriopterygidae", "Scansoriopterygid(11)"),
                 img(src="Scansoriopterygid(11).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/American_black_bear", "Black Bear(3)"),
                 img(src="Black Bear(3).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Lungfish", "Lungfish(3)"),
                 img(src="Lungfish(3).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Thirteen-lined_ground_squirrel", "13-lined Ground Squirrel(14)"),
                 img(src="13-lined Ground Squirrel(14).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Spotted_salamander", "Spotted Salamander(14)"),
                 img(src="Spotted Salamander(14).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Bighorn_sheep", "Bighorn Sheep(7)"),
                 img(src="Bighorn Sheep(7).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Striated_frogfish", "Hairy Frogfish(7)"),
                 img(src="Hairy Frogfish(7).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Coyote", "Coyote(10)"),
                 img(src="Coyote(10).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Hairy_frog", "Hairy Frog(10)"),
                 img(src="Hairy Frog(10).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Bison", "Bison(2)"),
                 img(src="Bison(2).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Swordfish", "Swordfish(2)"),
                 img(src="Swordfish(2).jpg", width = 150, height = 100),
          ),
        ),
       br(),
        fluidRow(
          column(1,),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Southern_bog_lemming", "Southern Bog Lemming(15)"),
                 img(src="Southern Bog Lemming(15).jpg", width = 150, height = 100),
          ),
          column(4,
                 tags$a(href="https://en.wikipedia.org/wiki/Costasiella_kuroshimae", "Leaf Slug(15)"),
                 img(src="Leaf Slug(15).jpg", width = 150, height = 100),
          ),
        ),

      ),
      
      tabPanel("Contributors",
        fluidRow(
          column(1,
                 ),
          column(4,
                 p("Desigeners:", style = "font-size:32px"),
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
    selectInput("Q2_1_1", h4("Round 1"),  choices=c("", "Grizzly Bear(1)", input$W1_0_1))
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
    
    bracket <- bind_cols(as.list(input), .id="Round") %>% 
      select(-update) %>% 
      pivot_longer(everything(), names_to = "round", values_to = "competitor") %>% 
      separate(round, into = c("quarter", "row", "round"), sep = "_") %>% 
      filter(round != ".id")
    
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
      na_if(0) %>% 
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
      na_if(0) %>% 
      drop_na()
    r1 <- r1$Round_1
    
    r2 <- cc %>% 
      select(Round_2) %>% 
      na_if(0) %>% 
      drop_na()
    r2 <- r2$Round_2
    
    r3 <- cc %>% 
      select(Round_3) %>% 
      na_if(0) %>% 
      drop_na()
    r3 <- r3$Round_3
    
    r4 <- cc %>% 
      select(Round_4) %>%
      na_if(0) %>% 
      drop_na()
    r4 <- r4$Round_4
    
    r5 <- cc %>% 
      select(Round_5) %>% 
      na_if(0) %>% 
      drop_na()
    r5 <- r5$Round_5
    
    wild <- wild$Wildcard
    
    fin <- final_bracket %>% 
      select(Champion) %>% 
      na_if(0) %>% 
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