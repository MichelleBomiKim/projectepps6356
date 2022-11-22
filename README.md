# projectepps6356
df <- HIPCPI
df2 <- IAPCPI
T10YIEn <- T10YIE %>% filter(DATE > '2010-01-01')
library(ggplot2)
library(dplyr)
library(gganimate)
dfn <- df %>% filter(DATE > '2009-01-01')
df2n <- df2 %>% filter(DATE > '2009-01-01')
IDPCPIn <- IDPCPI %>% filter(DATE > '2009-01-01')
KSPCPIN <- KSPCPI %>% filter (DATE > '2009-01-01')
KYRPIPCn <- KYRPIPC %>% filter (DATE > '2009-01-01')
LAPCPIn <- LAPCPI %>% filter (DATE > '2009-01-01')
MDPCPIn <- MDPCPI %>% filter (DATE > '2009-01-01')
MEPCPIn <- MEPCPI %>% filter (DATE > '2009-01-01')
p = ggplot() +
  geom_line(data = dfn, aes(x = DATE, y = HIPCPI), color = "blue") +
  geom_line(data = df2n, aes(x = DATE, y = IAPCPI), color = "red") +
  geom_line(data = KYRPIPCn, aes(x = DATE, y = KYRPIPC), color = "green") +
  geom_line(data = LAPCPIn, aes(x = DATE, y = LAPCPI), color = "Skyblue") +
  geom_line(data = MDPCPIn, aes(x = DATE, y = MDPCPI), color = "lightpink") + 
  geom_line(data = IDPCPIn, aes(x = DATE, y = IDPCPI), color = "mediumpurple1") +
  geom_line(data = MEPCPIn, aes(x = DATE, y = MEPCPI), color = "burlywood4") +
  geom_line(data = KSPCPIN, aes(x = DATE, y = KSPCPI), color = "coral2" ) +
  geom_line(data = T10YIEn, aes(x = DATE, y= T10YIE), color = "magenta") +
  scale_color_viridis_d() +
  labs(x = "DATE", y = "CPI") +
  theme(legend.position = "top") +
  transition_reveal(DATE)
  
#usmap
library(ggplot2)
library(usmap)
plot_usmap(regions = "states", labels = TRUE) +
  labs(title = "U.S. States",
       subtitle = "We will create a heatmap.") +
  theme(panel.background=element_blank()) 
  
