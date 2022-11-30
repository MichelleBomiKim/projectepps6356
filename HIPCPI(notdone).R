# final project - map of inflation across the U.S. States
library(dplyr)
# import the data
# national inflation data
usdf <- read.csv("https://raw.githubusercontent.com/kyndall-brown/homeworkcode/main/inflationdata/national-inflation-data.csv")
# metropolitan statistical area personal income data
msadf <- read.csv("https://raw.githubusercontent.com/kyndall-brown/homeworkcode/main/inflationdata/per-capita-personal-income-msa.csv")
# state personal income data
statedf <- read.csv("https://raw.githubusercontent.com/kyndall-brown/homeworkcode/main/inflationdata/per-capita-personal-income-states.csv")

# create empty dataframe for the 50 states
statesmapdf <- data.frame(
  observation_date = c(""),
  state_name = c(""),
  personal_income = c(""),
  personal_yoy = c("")
)
# fill dataframe by iterating through list of states
for (i in 1:50) {
  tempdf <- data.frame (
    observation_date = statedf$observation_date,
    state_name = state.name[i],
    personal_income = statedf[i+1],
    personal_yoy = statedf[i+51]
  )
  # rename the columns to be the same as statesmapdf
  colnames(tempdf) <- c("observation_date", "state_name", "personal_income",
                        "personal_yoy")
  # bind them onto the bottom of statesmapdf
  statesmapdf <- rbind(statesmapdf, tempdf)
}



colnames(tempdf) <- c("observation_date", "state_name", "personal_income",
                      "personal_yoy")
#usmap
library(usmap)
library(ggplot2)
st <- statedf %>% filter(observation_date >"2020-01-01")
colnames(st) <- c("observation_date","AL", "AK", "AZ", "AR", "CA", "CO", "CT","DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY")
plot_usmap(data = "observation_date", values = "state", color = "red" ) + 
  scale_fill_continuous(low = "white", high = "red", name = "personal income") + theme(legend.position = "right") 


# final project - map of inflation across the U.S. States
library(dplyr)
# import the data
# national inflation data
usdf <- read.csv("https://raw.githubusercontent.com/kyndall-brown/homeworkcode/main/inflationdata/national-inflation-data.csv")
# metropolitan statistical area personal income data
msadf <- read.csv("https://raw.githubusercontent.com/kyndall-brown/homeworkcode/main/inflationdata/per-capita-personal-income-msa.csv")
# state personal income data
statedf <- read.csv("https://raw.githubusercontent.com/kyndall-brown/homeworkcode/main/inflationdata/per-capita-personal-income-states.csv")
install.packages("ggplot2")
library(usmap)
library(ggplot2)
usdf <- read.csv
plot_usmap(regions = "states") + 
  labs(title = "US state",
       subtitle = "This is a blank map of the counties of the United States.") + 
  theme(panel.background = element_rect(color = "green", fill = "skyblue"))

plot_usmap(data =   , values = "observation_date", color = "pink") + 
  scale_fill_continuous(name = "Annual CPI", label = scales::comma) + 
  theme(legend.position = "right")

cpi <- `FPCPITOTLZGUSA.(1)`

library(ggplot2)
library(gganimate)
usdf <- ggplot(aes("obse")) +
  geom_line() + scale_color_viridis_d() +
  labs(x = "observation_date", y = "realgrosscpi") +
  theme(legend.position = "top")
usdf



namelist <- c("observation_date", state.name, paste0(state.name, "_yoy"))
colnames(statedf) <- namelist







st <- data.frame (
  state = state.name,
  personal_inc = c(0)
)
# fill personal_inc with the personal income values of the states
for (i in 1:50) {
  # "state_name" must match state #i in state.name and the year we need
  st[["personal_inc"]][[i]] <-
    statedf["personal_income"][statedf["state_name"]==state.name[i]
                                   & statedf["observation_date"]=="2021-01-01"]
}
plot_usmap(data = st, values = "personal_inc",
           color = "grey18") +
  scale_color_continuous(name = "Personal Income",
                         palette = "Reds") +
  theme(legend.position = "right")

