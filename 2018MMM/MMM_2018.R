library(tidyverse)
################################################################################
####################### MMM_2018 scoring #######################################
################################################################################



# create a list of all csv files in the directory 
fl <- list()
licsv <- dir(pattern="*.csv")
for (k in 1:length(licsv)){
  fl[[k]] <- read_csv(licsv[k])
}

# format the data creating a single vector with all answers from each player


ans <- list()
for(j in 1:length(fl)){
  
  mast <- fl[[j]]
  wild <- mast %>%  select(Wildcard) %>%filter(!is.na(Wildcard))
  a <- select(mast, Round_1:Round_5)
  b <- select(mast, Round_5_1:Round_1_1) %>% rename(Round_1 = Round_1_1 ,Round_2 = 
                                                      Round_2_1, Round_3 = Round_3_1, Round_4 = Round_4_1, 
                                                    Round_5 = Round_5_1 )
  
  cc <- bind_rows(a,b)
  r1 <- cc %>% select(Round_1) %>% filter(!is.na(Round_1))
  r1 <- r1$Round_1
  
  r2 <- cc %>% select(Round_2) %>% filter(!is.na(Round_2))
  r2 <- r2$Round_2
  
  r3 <- cc %>% select(Round_3) %>% filter(!is.na(Round_3))
  r3 <- r3$Round_3
  
  r4 <- cc %>% select(Round_4) %>% filter(!is.na(Round_4))
  r4 <- r4$Round_4
  
  r5 <- cc %>% select(Round_5) %>% filter(!is.na(Round_5))
  r5 <- r5$Round_5
  
  wild <- wild$Wildcard
  
  fin <- mast %>% select(Final) %>% filter(!is.na(Final))
  fin <- fin$Final
  
  out <- c(wild,r1,r2,r3,r4,r5,fin)
  # store the vector in a list
  ans[[j]] <- out
}

### counting points 

# 1 = same 0 = different -- ony get points for answers that are the same as the master


# check where in the list the master file is 
ans
master <- ans[[8]]

# players 

players <- sub(".*_", "", licsv)
players <- sub(".csv", "", players)

### check answers 

scorelist <- list()
for (i in 1: length(players)){
  
  ## this checks answers for each round 
  playa <- ans[[i]]
  mstr <- ans[[9]]
  rnd1 <- playa[1:33] == mstr[1:33]
  rnd2 <- playa[34:49] == mstr[34:49]
  sweet <- playa[50:57]==mstr[50:57]
  elite <- playa[58:61]==mstr[58:61]
  roar <- playa[62:63]==mstr[62:63]
  win <- playa[64]==mstr[64]
  
  
  pts <- c(sum(rnd1),sum(rnd2*2), sum(sweet*3), sum(elite*5), sum(roar*8),sum(win*13))
  scorelist[[i]] <- pts
}



tardy <- c(1,0,0,0,0,0,1,0,0,1,1,1,0)
leaderboard <- cbind(data.frame(players,tardy, leaderboard))
colnames(leaderboard) <- c("Player name", " Tardigrade tally", "Round 1", "Round 2", "Sweet 16", "Elite 8", "Final roar", "Winner")

leaderboard <- leaderboard %>% slice( -9) %>%mutate(Total= rowSums(.[2:8])) %>%  arrange(desc(Total))


### points per round 
# wildcard - 1  1 
# round 1 - 1   2:33
# round 2 - 2   34:49
# sweet 16 - 3  50:57
# elite 8 - 5   58:61
# final roar - 8 62:63
#winner -13      64