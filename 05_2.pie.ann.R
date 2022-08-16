library(RColorBrewer)
library(ggplot2)

d3 <- read.table(file = "05_2.pie_ann_d3.txt",header = T)

d15 <- read.table(file = "05_2.pie_ann_d15.txt",header = T)


d3_dis <- d3[order(d3$num,decreasing = T),]

percent <- round(d3_dis[,2]/sum(d3_dis[,2])*100, 1)
label <- paste(d3_dis[,1], "(", percent, "% )")
pie(d3_dis[,2],labels = label,
    main = "Day 3: all cell type ",
    border="white", col=brewer.pal(12, "Set3"))


d3_dis <- d3_dis[order(d3_dis$num,decreasing = T),]
percent <- round(d3_dis[,2]/sum(d3_dis[,2])*100, 1)
mylabel <- as.vector(d3_dis$type)
mylabel <- paste(mylabel, "(", percent, "% )")

d3_dis$type<-factor(d3$type,
                      levels=c("intron","upstream","downstream","intergenic",
                               "3UTR","synonymous","5UTR","missense",
                               "Splicing","ncRNA_exon"),ordered = F)

p1 <- ggplot(d3_dis,aes(x='',y=num,fill=type))+
  geom_bar(stat = 'identity',color="white")+
  coord_polar(theta = "y")+
  labs(x="",y="Day3")+
  theme(axis.ticks = element_blank(),
        axis.text.x = element_blank(),
        panel.grid = element_blank())+
  scale_fill_discrete(breaks=d3_dis$type,labels=mylabel)

p1


d15_dis <- d15[order(d15$num,decreasing = T),]

d15_dis <- d15_dis[order(d15_dis$num,decreasing = T),]
percent <- round(d15_dis[,2]/sum(d15_dis[,2])*100, 1)
mylabel <- as.vector(d15_dis$type)
mylabel <- paste(mylabel, "(", percent, "% )")

d15_dis$type<-factor(d15_dis$type,
                     levels=c("intron","upstream","intergenic","downstream",
                              "synonymous","missense","3UTR","5UTR",
                              "ncRNA_exon","Splicing"),ordered = F)

p2 <- ggplot(d15_dis,aes(x='',y=num,fill=type))+
  geom_bar(stat = 'identity',color="white")+
  coord_polar(theta = "y")+
  labs(x="",y="Day15")+
  theme(axis.ticks = element_blank(),
        axis.text.x = element_blank(),
        panel.grid = element_blank())+
  scale_fill_discrete(breaks=d15_dis$type,labels=mylabel)

p2


ggarrange(p1,p2,
            ncol = 2, nrow = 1,common.legend = FALSE,legend="right",align = "h")
