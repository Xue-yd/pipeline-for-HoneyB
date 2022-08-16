library(RColorBrewer)
library(DescTools)
library(ggplot2)
library(ggpubr)

snps <- read.table(file = "01.snps_num_cell_type.txt",header = T)
colnames(snps) <- c("Day","cell_type","Total SNPs detected")

snps$cell_type<-factor(snps$cell_type,
                      levels=c("Early_Spermatgonia","Late_Spermatogonia",
             "Early_Spermatocyte","Late_Spermatocyte",
             "Early_Spermatid","Late_Spermatid",
             "Polar_body"),ordered = F)



p1 <- ggplot(snps,aes(x=cell_type,y=`Total SNPs detected`,fill=Day))+ 
  scale_fill_manual(values = c("#00BA38","#F8766D"))+
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.9,
           color='white')+
  geom_text(aes(label=`Total SNPs detected`),size=4,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,1000))+
  theme(axis.text.x = element_text(colour = 'black',angle = 90,size = 14),
                                   #angle = 60,size = 12,hjust=1, vjust=1),
        axis.text = element_text(colour = 'black',size = 14),
        axis.text.y = element_text(colour = 'black',size = 14),
        axis.title.y = element_text(colour = 'black',size = 16),
        legend.title = element_text(colour = 'black',size = 16),
        legend.text = element_text(colour = 'black',size = 16),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        plot.title = element_text(hjust = 0.5,size = 16),
        legend.position = "top")

p1


p2 <- ggplot(snps,aes(x=cell_type,y=`Total SNPs detected`,fill=Day))+
  scale_fill_manual(values = c("#00BA38","#F8766D"))+
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.9,
           color='white')+
  geom_text(aes(label=`Total SNPs detected`),size=4,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL,y=NULL)+
  coord_cartesian(ylim = c(1600,2250))+
  scale_y_continuous(breaks = c(1600,2200,300))+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
        axis.text.y = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 14),
        legend.text = element_text(colour = 'black',size = 16),
        panel.background = element_blank(),
        axis.line.y = element_line(size = 1,colour = "black"),
        plot.title = element_text(hjust = 0.5,size = 16),
        legend.position = "top")
p2


ggarrange(p2,p1,heights =c(1/5, 4/5),
          ncol = 1, nrow = 2,common.legend = TRUE,legend="top",align = "v")

