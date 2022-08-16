library(ggplot2)
library(ggpubr)

data1 <- read.table(file = "1.earlySPG.txt",header = T)
data1$group<- factor(data1$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)


p1 <- ggplot(data1,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Early Spermatogonia")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p1

data2 <- read.table(file = "2.lateSPG.txt",header = T)
data2$group<- factor(data2$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)


p2 <- ggplot(data2,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Late Spermatogonia")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p2



data3 <- read.table(file = "3.earlyScytes.txt",header = T)
data3$group<- factor(data3$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)


p3 <- ggplot(data3,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Early Spermatocytes")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p3

data4 <- read.table(file = "4.lateScytes.txt",header = T)
data4$group<- factor(data4$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)


p4 <- ggplot(data4,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Late Spermatocytes")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p4

data5 <- read.table(file = "5.polarbody.txt",header = T)

data5$group<- factor(data5$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)


p5 <- ggplot(data5,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Polar body")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p5




data6 <- read.table(file = "6.EarlySTids.txt",header = T)

data6$group<- factor(data6$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p6 <- ggplot(data6,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Early Spermatids")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p6


data7 <- read.table(file = "7.lateSTids.txt",header = T)

data7$group<- factor(data7$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p7 <- ggplot(data6,aes(group,expression,fill=group)) + 
  geom_violin()+
  labs(x= NULL,y = "expression level log2(UMI)",title = "Late Spermatids")+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")+
  geom_boxplot(width=0.1,position = position_identity(),fill="white") +
  stat_summary(fun.y="mean",geom="point",shape=21, size=1,fill="red") 
p7

ggarrange(p1,p2,p3,p4,p5,p6,p7,
          ncol = 4,nrow = 2,common.legend = T)


data8 <- read.table(file = "gene_.txt",header = T)

data8$group<- factor(data8$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

ggplot(data8,aes(x=length))+
  geom_density(aes(fill=group),alpha=0.4)+
  labs(xlim=c(0,250))+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=1,vjust = 1),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")

