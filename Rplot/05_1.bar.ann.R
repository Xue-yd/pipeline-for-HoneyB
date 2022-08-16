library(ggplot2)
library(ggpubr) 

fff <- read.table(file="05-1.ann.total.txt",header = T)
colnames(fff) <- c("Day","annotation","The distribution of SNPs")

  p1 <- ggplot(fff,aes(x=annotation,y=`The distribution of SNPs`,fill=Day))+ 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`The distribution of SNPs`),size=4,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,300))+
    theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 90),
          axis.text.y = element_text(colour = 'black'),
          axis.text = element_text(color = 'black',size = 12),
          axis.title = element_text(colour = 'black',size = 14),
          legend.title = element_text(colour = 'black',size = 12),
          legend.text = element_text(colour = 'black',size = 12))
  

p1
p2 <- ggplot(fff,aes(x=annotation,y=`The distribution of SNPs`,fill=Day))+ 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`The distribution of SNPs`),size=4,
            position = position_dodge(width = 0.8),
            vjust=-0.3)+
  labs(x=NULL,y=NULL)+
  coord_cartesian(ylim = c(1200,1450))+
  scale_y_continuous(breaks = c(1200,1400))+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
        legend.title = element_text(colour = 'black',size = 12),
        axis.text = element_text(color = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12))

p2

ggarrange(p2,p1,heights=c(1/5, 4/5),
          ncol = 1, nrow = 2,common.legend = TRUE,legend="right",align = "v")







