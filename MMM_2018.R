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
for (i in 1: 12){
  
  p <- ans[[i]] ==ans[[8]]
  q <- sum(p)
  scorelist[[i]] <- q
  
  ## this just checks for the answers doesn't calculate points for rounds 2 onwards 
  
}

scores <- unlist(scorelist)
leaderboard <- cbind(data.frame(players, scores))
colnames(leaderboard) <- c("Player_name", "Score")

leaderboard <- slice(leaderboard, -8)
