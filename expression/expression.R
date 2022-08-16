library(ggplot2)
library(ggpubr)

data1 <- read.table(file = "1.SPG.txt",header = T)

colnames(data1) <- c("group","Per base substitution frequency","cell type")
data$group=factor(data1$group,
                  levels = c("group1(<10)","group2(-10,-8)","group3(-8,-6)",
                             "group4(-6,-4)","group5(-4,-2)","group6(-2,0)",
                             "group7(0,2)","group8(>2)"))

p1 <- ggplot(data = data1, mapping=aes(x = group, 
                        y = `Per base substitution frequency`,
                        group=`cell type`,
                        color=`cell type`)) +
  geom_line(size=1) + 
  geom_point(size=3)+
  labs(x= NULL,title = "Spermatogonia")+
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

data2 <- read.table(file = "2.Scytes.txt",header = T)

colnames(data2) <- c("group","Per base substitution frequency","cell type")
data2$group=factor(data2$group,
                  levels = c("group1(<-10)","group2(-10,-8)","group3(-8,-6)",
                             "group4(-6,-4)","group5(-4,-2)","group6(-2,0)",
                             "group7(0,2)","group8(>2)"))

p2 <- ggplot(data = data2, mapping=aes(x = group, 
                                      y = `Per base substitution frequency`,
                                      group=`cell type`,
                                      color=`cell type`)) +
  geom_line(size=1) + 
  geom_point(size=3)+
  labs(x= NULL,title = "Spermatocytes")+
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

data3 <- read.table(file = "3.STids.txt",header = T)

colnames(data3) <- c("group","Per base substitution frequency","cell type")
data3$group=factor(data3$group,
                   levels = c("group1(-10,-8)","group2(-8,-6)",
                              "group3(-6,-4)","group4(-4,-2)","group5(-2,0)",
                              "group6(0,2)","group7(>2)"))

p3 <- ggplot(data = data3, mapping=aes(x = group, 
                                       y = `Per base substitution frequency`,
                                       group=`cell type`,
                                       color=`cell type`)) +
  geom_line(size=1) + 
  geom_point(size=3)+
  labs(x= NULL,title = "Spermatids")+
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


data4 <- read.table(file = "4.Polar_body.txt",header = T)

colnames(data4) <- c("group","Per base substitution frequency","cell type")
data4$group=factor(data4$group,
                   levels = c("group1(-10,-8)","group2(-8,-6)",
                              "group3(-6,-4)","group4(-4,-2)","group5(-2,0)",
                              "group6(0,2)","group7(2,4)"))

p4 <- ggplot(data = data4, mapping=aes(x = group, 
                                       y = `Per base substitution frequency`,
                                       group=`cell type`,
                                       color=`cell type`)) +
  geom_line(size=1) + 
  geom_point(size=3)+
  labs(x= NULL,title = "Polar body")+
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

p5 <- ggarrange(p1,p2,p3,p4,nrow = 2,ncol = 2,
                labels = c('A','B','C','D'))

p5




