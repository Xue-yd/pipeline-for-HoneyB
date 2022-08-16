library(ggplot2)
library(ggpubr)

data1 <- read.table(file = "1.earlySPG.txt",header = T)

colnames(data1) <- c("group","mean","sd","freq","cell_type")

data1$group<- factor(data1$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p1 <- ggplot(data = data1, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Early Spermatogonia")+
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
p1


data2 <- read.table(file = "2.lateSPG.txt",header = T)

colnames(data2) <- c("group","mean","sd","freq","cell_type")

data2$group<- factor(data2$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p2 <- ggplot(data = data2, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Late Spermatogonia")+
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
p2


data3 <- read.table(file = "3.early_Scytes.txt",header = T)

colnames(data3) <- c("group","mean","sd","freq","cell_type")

data3$group<- factor(data3$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p3 <- ggplot(data = data3, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Early Spermatocytes")+
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
p3


data4 <- read.table(file = "4.late_Scytes.txt",header = T)

colnames(data4) <- c("group","mean","sd","freq","cell_type")

data4$group<- factor(data4$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p4 <- ggplot(data = data4, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Late Spermatocytes")+
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
p4




data5 <- read.table(file = "5.polar_body.txt",header = T)

colnames(data5) <- c("group","mean","sd","freq","cell_type")

data5$group<- factor(data5$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p5 <- ggplot(data = data5, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Polar body")+
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
p5


data6 <- read.table(file = "6.early_STids.txt",header = T)

colnames(data6) <- c("group","mean","sd","freq","cell_type")

data6$group<- factor(data6$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p6 <- ggplot(data = data6, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Early Spermatids")+
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
p6



data7 <- read.table(file = "7.late_STids.txt",header = T)

colnames(data7) <- c("group","mean","sd","freq","cell_type")

data7$group<- factor(data7$group,
                     levels=c("pre_hymenoptera","hymenoptera",
                              "after_hymenoptera","Amel_novel"),ordered = F)

p7 <- ggplot(data = data7, mapping=aes(x = group, 
                                       y = freq,
                                       group=1,
                                       color=cell_type)) +
  geom_line(size=1.5,color="#00BA38") + 
  geom_point(size=3,color="#00BA38")+
  labs(x= NULL,y = "Per base substitution frequency",
       title = "Late Spermatids")+
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
p7


ggarrange(p1,p2,p3,p4,p5,p6,p7,ncol=4,nrow = 2)



# scale_y_continuous(limits = c(-10, 0), expand = c(0,0),
#                   name = "mean expression level (log2UMI)",
#                   sec.axis = sec_axis(~((-2)/.)/8e7  ,
#                                       name = "Per base substitution frequency",
#                                       breaks = data1$freq)) +