library(ggplot2)
library(ggpubr)

my <- read.table(file = "percentage.txt",header = T)

p1 <- ggplot(my,aes(x=group,y=percentage,fill=group))+ 
  scale_fill_manual(values = c("#F8766D","#00BA38"))+
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.5,
           color='white')+
  geom_text(aes(label=percentage),size=3,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,1))+
  theme(axis.text.x = element_text(colour = 'black',size = 14,angle = 0),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 14),
        axis.title = element_text(colour = 'black',size = 16),
        legend.title = element_text(colour = 'black',size = 14),
        legend.text = element_text(colour = 'black',size = 14),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        plot.title = element_text(hjust = 0.5,size = 16),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")
p1



my2 <- read.table(file = "length.txt",header = T)

p2 <- ggplot(my2,aes(x=group,y=mean_length,fill=group))+ 
  scale_fill_manual(values = c("#F8766D","#00BA38"))+
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.5,
           color='white')+
  geom_text(aes(label=mean_length),size=3,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,450))+
  theme(axis.text.x = element_text(colour = 'black',size = 14,angle = 0),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 14),
        axis.title = element_text(colour = 'black',size = 16),
        legend.title = element_text(colour = 'black',size = 14),
        legend.text = element_text(colour = 'black',size = 14),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        plot.title = element_text(hjust = 0.5,size = 16),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")
p2

