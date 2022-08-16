library(ggplot2)
library(ggpubr)

data1 <- read.table(file = "syn.txt",header = T)

colnames(data1) <- c("cell type","Syn","gene group")

data1$`gene group` <- factor(data1$`gene group`,
                             levels=c("pre_Hymenoptera","Hymenoptera",
                                      "after_Hymenoptera"),ordered = F)
data1$`cell type`<-factor(data1$`cell type`,
                     levels=c("Early_Spermatogonia","Late_Spermatogonia",
                              "Early_Spermatocyte","Late_Spermatocyte",
                              "Early_Spermatid","Late_Spermatid",
                              "Polar_body"),ordered = F)

p1 <- ggplot(data = data1, mapping=aes(x = `gene group`, 
                                       y = Syn,
                                       group=`cell type`,
                                       color=`cell type`)) +
  geom_line(size=1.5) +
  geom_point(size=3)+
  labs(x= NULL)+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=0.5,vjust = 0.5),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "right")
p1



data2 <- read.table(file = "nonsyn.txt",header = T)

colnames(data2) <- c("cell type","Nonsyn","gene group")

data2$`gene group` <- factor(data2$`gene group`,
                             levels=c("pre_Hymenoptera",
                                      "after_Hymenoptera"),ordered = F)
data2$`cell type`<-factor(data2$`cell type`,
                          levels=c("Early_Spermatogonia","Late_Spermatogonia",
                                   "Early_Spermatocyte","Late_Spermatocyte",
                                   "Early_Spermatid","Late_Spermatid",
                                   "Polar_body"),ordered = F)




p2 <- ggplot(data = data2, mapping=aes(x = `gene group`, 
                                       y = Nonsyn,
                                       group=`cell type`,
                                       color=`cell type`)) +
  geom_line(size=1.5) + 
  geom_point(size=3)+
  labs(x= NULL)+
  theme(axis.text.x = element_text(colour = 'black',size = 10,angle = 60,
                                   vjust = 0.5,hjust = 2),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 10),
        axis.title = element_text(colour = 'black',size = 12),
        legend.title = element_text(colour = 'black',size = 10),
        legend.text = element_text(colour = 'black',size = 10),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=0.5,vjust = 0.5),
        plot.title = element_text(hjust = 0.5,size = 14),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "right")
p2

#ggarrange(p1,p2,ncol=2,widths =c(2/5, 3/5),nrow = 1)
