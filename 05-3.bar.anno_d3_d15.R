library(ggplot2)
library(ggpubr)


d3 <- read.table(file="05-3.bar_d3_diff_cell_type.txt",header = T)

colnames(d3) <- c("cell_type","distribution","Day3 : The distribution of SNPs")

d3$cell_type<-factor(d3$cell_type,
                       levels=c("Early_Spermatogonia","Late_Spermatogonia",
                                "Early_Spermatocyte","Late_Spermatocyte",
                                "Early_Spermatid","Late_Spermatid",
                                "Polar_body"),ordered = F)


p1 <- ggplot(d3,aes(x=distribution,y=`Day3 : The distribution of SNPs`,fill=cell_type))+ 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`Day3 : The distribution of SNPs`),size=3,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,250))+
  theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 90),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        axis.title = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12))

p1

p2 <- ggplot(d3,aes(x=distribution,y=`Day3 : The distribution of SNPs`,fill=cell_type))+ 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`Day3 : The distribution of SNPs`),size=3,
            position = position_dodge(width = 0.8),
            vjust=-0.3)+
  labs(x=NULL,y=NULL)+
  coord_cartesian(ylim = c(450,1250))+
  scale_y_continuous(breaks = c(450,1200,300))+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12))

p2

ggarrange(p2,p1,heights=c(1/5, 4/5),
          ncol = 1, nrow = 2,common.legend = TRUE,legend="right",align = "v")




d15 <- read.table(file="05-3.bar_d15_diff_cell_type.txt",header = T)
colnames(d15) <- c("cell_type","distribution","Day15 : The distribution of SNPs")

d15$cell_type<-factor(d15$cell_type,
                     levels=c("Early_Spermatogonia","Late_Spermatogonia",
                              "Early_Spermatocyte","Late_Spermatocyte",
                              "Early_Spermatid","Late_Spermatid",
                              "Polar_body"),ordered = F)


p3 <- ggplot(d15,aes(x=distribution,y=`Day15 : The distribution of SNPs`,fill=cell_type))+ 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`Day15 : The distribution of SNPs`),size=3,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,120))+
  theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 90),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        axis.title = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12))

p3







