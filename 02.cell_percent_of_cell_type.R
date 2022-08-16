library(ggplot2)
library(ggpubr)

ccc <- read.table(file="02.cell_percent_of_cell_type.txt",header = T)

colnames(ccc) <- c("Day","cell_type","Proportion of cells with SNPs")
ccc$cell_type<-factor(ccc$cell_type,
                       levels=c("Early_Spermatogonia","Late_Spermatogonia",
                                "Early_Spermatocyte","Late_Spermatocyte",
                                "Early_Spermatid","Late_Spermatid",
                                "Polar_body"),ordered = F)

p <- ggplot(ccc,aes(x=cell_type,y=`Proportion of cells with SNPs`,fill=Day))+
  scale_fill_manual(values = c("#00BA38","#F8766D"))+
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`Proportion of cells with SNPs`),size=3,
            position = position_dodge(width = 0.8), 
            vjust=-0.3)+
  labs(x=NULL)+
  theme(axis.text.x = element_text(colour = 'black',angle = 90,size = 14),
        axis.text = element_text(colour = 'black',size = 14),
        axis.text.y = element_text(colour = 'black',size = 14),
        axis.title.y = element_text(colour = 'black',size = 16),
        legend.title = element_text(colour = 'black',size = 16),
        legend.text = element_text(colour = 'black',size = 16),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        plot.title = element_text(hjust = 0.5,size = 16),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")

p

