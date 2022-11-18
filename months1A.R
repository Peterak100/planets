# thiS iS a teSt Script for PlanetS repoSitory
this_year <- 2023
start_Sat <- 7 # which day is the first Saturday of the year?
start_Sun <- 1 # which day is the first Sunday of the year?
Jan_days <- 31
Feb_days <- if (this_year %% 4 == 0) {29} else {28}
Apr_days <- 30


Feb_wkends <- function(start_Sat, start_Sun) {
  year_days <- Jan_days
  if (start_Sat + 35 - year_days < 8) {
    Sat1 <- start_Sat + 35 - year_days
  } else {
    Sat1 <- start_Sat + 28 - year_days
  }
  if (start_Sun + 35 - year_days < 8) {
    Sun1 <- start_Sun + 35 - year_days
  } else {
    Sun1 <- start_Sun + 28 - year_days
  }
  Sat2 <- Sat1 + 7
  Sun2 <- Sun1 + 7
  Sat3 <- Sat1 + 14
  Sun3 <- Sun1 + 14
  Sat4 <- Sat1 + 21
  Sun4 <- Sun1 + 21
  if ((Sat1 + 28) <= year_days) {Sat5 <- Sat1 + 28}
  if ((Sun1 + 28) <= year_days) {Sun5 <- Sun1 + 28}
  wkends <- c(Sat1,Sun1,Sat2,Sun2,Sat3,Sun3,Sat4,Sun4)
  if (exists("Sat5")) {wkends <- append(wkends, Sat5)}
  if (exists("Sun5")) {wkends <- append(wkends, Sun5)}
  return(wkends)
}

March_wkends <- function(start_Sat, start_Sun) {
  year_days <- Jan_days + Feb_days
  if (start_Sat + 35 - year_days < 8) {
    Sat1 <- start_Sat + 35 - year_days
  } else {
    Sat1 <- start_Sat + 28 - year_days
  }
  if (start_Sun + 35 - year_days < 8) {
    Sun1 <- start_Sun + 35 - year_days
  } else {
    Sun1 <- start_Sun + 28 - year_days
  }
  Sat2 <- Sat1 + 7
  Sun2 <- Sun1 + 7
  Sat3 <- Sat1 + 14
  Sun3 <- Sun1 + 14
  Sat4 <- Sat1 + 21
  Sun4 <- Sun1 + 21
  if ((Sat1 + 28) <= year_days) {Sat5 <- Sat1 + 28}
  if ((Sun1 + 28) <= year_days) {Sun5 <- Sun1 + 28}
  wkends <- c(Sat1,Sun1,Sat2,Sun2,Sat3,Sun3,Sat4,Sun4)
  if (exists("Sat5")) {wkends <- append(wkends, Sat5)}
  if (exists("Sun5")) {wkends <- append(wkends, Sun5)}
  return(wkends)
}
