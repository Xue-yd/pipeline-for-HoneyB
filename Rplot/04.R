library(RColorBrewer)
library(ggplot2)

d3 <- read.table("04-all.substitution.d3.txt",header = T)

d3_all_dis <- d3[order(d3$all_cell_types,decreasing = T),]
colnames(d3_all_dis) <- c("type",
                          "Day3 all cell type : The percent of every type of substitution")
d3_all_dis$type<-factor(d3_all_dis$type,
                        levels=c("C>T","G>A","A>G","T>C",
                                 "A>T","T>A","G>C","G>T",
                                 "C>G","A>C","C>A","T>G"),ordered = F)

percent <- round(d3_all_dis[,2]/sum(d3_all_dis[,2])*100, 1)
label <- paste(d3_all_dis[,1], "(", percent, "% )")

p1 <- ggplot(d3_all_dis,aes(x='',
                            y=`Day3 all cell type : The percent of every type of substitution`,
                            fill=type))+
  geom_bar(stat = 'identity',color="white")+
  coord_polar(theta = "y")+
  labs(x="")+
  theme(axis.ticks = element_blank(),
            axis.text.x = element_blank(),
            panel.grid = element_blank(),
            axis.text = element_text(size = 12),
            legend.text = element_text(size = 12),
            axis.text.y = element_text(size = 16))+
  scale_fill_discrete(breaks=d3_all_dis$type,labels=label)

p1



d3_2 <- read.table("04-LateSTid.substitution.d3.txt",header = T)

d15_dis <- d3_2[order(d3_2$Late_Spermatid,decreasing = T),]
colnames(d15_dis) <- c("type",
                          "Day3 Late Spermatid : The percent of every type of substitution")
d15_dis$type <- factor(d15_dis$type,
                        levels=c("C>T","T>C","A>G","G>A",
                                 "A>T","T>A","G>T","C>A",
                                 "T>G","A>C","C>G","G>C"),ordered = F)

percent2 <- round(d15_dis[,2]/sum(d15_dis[,2])*100, 1)
label2 <- paste(d15_dis[,1], "(", percent2, "% )")

p2 <- ggplot(d15_dis,aes(x='',
                        y=`Day3 Late Spermatid : The percent of every type of substitution`,
                        fill=type))+
  geom_bar(stat = 'identity',color="white")+
  coord_polar(theta = "y")+
  labs(x="")+
  theme(axis.ticks = element_blank(),
        axis.text.x = element_blank(),
        panel.grid = element_blank(),
        axis.text = element_text(size = 12),
        legend.text = element_text(size = 12),
        axis.text.y = element_text(size = 16))+
  scale_fill_discrete(breaks=d15_dis$type,labels=label2)

p2


d15 <- read.table("04-all.substitution.d15.txt",header = T)

d15_all_dis <- d15[order(d15$all_cell_types,decreasing = T),]
colnames(d15_all_dis) <- c("type",
                       "Day15 Late Spermatid : The percent of every type of substitution")
d15_all_dis$type <- factor(d15_all_dis$type,
                       levels=c("C>T","A>G","G>A","T>C",
                                "C>A","C>G","T>A","A>T",
                                "G>C","A>C","G>T","T>G"),ordered = F)

percent3 <- round(d15_all_dis[,2]/sum(d15_all_dis[,2])*100, 1)
label3 <- paste(d15_all_dis[,1], "(", percent3, "% )")

p3 <- ggplot(d15_all_dis,aes(x='',
                         y=`Day15 Late Spermatid : The percent of every type of substitution`,
                         fill=type))+
  geom_bar(stat = 'identity',color="white")+
  coord_polar(theta = "y")+
  labs(x="")+
  theme(axis.ticks = element_blank(),
        axis.text.x = element_blank(),
        panel.grid = element_blank(),
        axis.text = element_text(size = 12),
        legend.text = element_text(size = 12),
        axis.text.y = element_text(size = 16))+
  scale_fill_discrete(breaks=d15_all_dis$type,labels=label3)

p3








d15_2 <- read.table("04-LateSTid.substitution.d15.txt",header = T)

d15_dis <- d15_2[order(d15_2$Late_Spermatid,decreasing = T),]
colnames(d15_dis) <- c("type",
                      "Day15 Late Spermatid : The percent of every type of substitution")
d15_dis$type <- factor(d15_dis$type,
                      levels=c("C>T","A>G","G>A","T>C",
                               "C>A","C>G","T>A","A>T",
                               "G>C","A>C","G>T","T>G"),ordered = F)

percent4 <- round(d15_dis[,2]/sum(d15_dis[,2])*100, 1)
label4 <- paste(d15_dis[,1], "(", percent4, "% )")

p4 <- ggplot(d15_dis,aes(x='',
                        y=`Day15 Late Spermatid : The percent of every type of substitution`,
                        fill=type))+
  geom_bar(stat = 'identity',color="white")+
  coord_polar(theta = "y")+
  labs(x="")+
  theme(axis.ticks = element_blank(),
        axis.text.x = element_blank(),
        panel.grid = element_blank(),
        axis.text = element_text(size = 12),
        legend.text = element_text(size = 12),
        axis.text.y = element_text(size = 16))+
  scale_fill_discrete(breaks=d15_dis$type,labels=label4)

p4




