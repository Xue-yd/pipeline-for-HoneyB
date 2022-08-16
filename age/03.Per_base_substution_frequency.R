library(ggplot2)
library(ggpubr) 

d3 <- read.table(file = "gene_group4.txt",header = T)

colnames(d3) <- c("cell_type","gene_group","Per base substitution frenquency")

d3$cell_type<-factor(d3$cell_type,
                      levels=c("Early_Spermatogonia","Late_Spermatogonia",
                               "Early_Spermatocyte","Late_Spermatocyte",
                               "Early_Spermatid","Late_Spermatid",
                               "Polar_body"),ordered = F)

d3$gene_group<- factor(d3$gene_group,
                       levels=c("pre_hymenoptera","hymenoptera",
                                "after_hymenoptera","Amel_novel"),ordered = F)

p1 <- ggplot(d3,aes(x=cell_type,y=`Per base substitution frenquency`,
                    fill=gene_group ))+ 
 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`Per base substitution frenquency`),size=2,
            position = position_dodge(width = 0.8),
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,5.0e-8))+
  theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 90),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        axis.title = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        plot.title = element_text(hjust = 0.5,size = 16),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")
p1



p2 <- ggplot(data = d3, mapping = aes(x = gene_group, 
                                y = `Per base substitution frenquency`,
                                group = cell_type,color=cell_type)) +
  geom_line(size=1.5) + 
  geom_point(size=3)+
  labs(x=NULL)+
  theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 60),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        axis.title = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=0.5,vjust = 0.5),
        plot.title = element_text(hjust = 0.5,size = 16),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "right")
p2


p3 <- ggplot(data = d3, mapping = aes(x = cell_type, 
                                      y = `Per base substitution frenquency`,
                                      group = gene_group,color=gene_group)) +
  geom_line(size=1.5) + 
  geom_point(size=3)+
  labs(x=NULL)+
  theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 60),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        axis.title = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12),
        panel.background = element_blank(),
        axis.line = element_line(size = 1,colour = "black"),
        axis.text.x.bottom = element_text(hjust=0.5,vjust = 0.5),
        plot.title = element_text(hjust = 0.5,size = 16),
        plot.margin=unit(rep(2,4),'lines'),
        legend.position = "top")

p3




# p2 <- ggplot(d3,aes(x=cell_type,y=`Per base substitution frenquency`,fill=cell_type))+ 
#   geom_bar(stat = 'identity',
#            position = 'dodge',
#            width = 0.8,
#            color='white')+
#   geom_text(aes(label=`Per base substitution frenquency`),size=4,
#             position = position_dodge(width = 0.8),
#             vjust=-0.3)+
#   labs(x=NULL,y=NULL)+
#   coord_cartesian(ylim = c(1.5e-6,2.0e-6))+
#   scale_y_continuous(breaks = c(1.5e-6,1.75e-6,2.0e-6))+
#   theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
#         axis.text = element_text(color = 'black',size = 12),
#         legend.title = element_text(colour = 'black',size = 12),
#         legend.text = element_text(colour = 'black',size = 12))
# p2
# 
# ggarrange(p2,p1,heights=c(1/4, 3/4),
#           ncol = 1, nrow = 2,common.legend = TRUE,legend="right",align = "v")

d15 <- read.table(file = "03.SNPs_cell_base_d15.txt",header = T)

colnames(d15) <- c("cell_type","Per base substitution frenquency")

d15$cell_type<-factor(d15$cell_type,
                     levels=c("Early_Spermatogonia","Late_Spermatogonia",
                              "Early_Spermatocyte","Late_Spermatocyte",
                              "Early_Spermatid","Late_Spermatid",
                              "Polar_body"),ordered = F)

p3 <- ggplot(d15,aes(x=cell_type,y=`Per base substitution frenquency`,fill=cell_type))+ 
  geom_bar(stat = 'identity',
           position = 'dodge',
           width = 0.8,
           color='white')+
  geom_text(aes(label=`Per base substitution frenquency`),size=4,
            position = position_dodge(width = 0.8),
            vjust=-0.3)+
  labs(x=NULL)+
  coord_cartesian(ylim = c(0,1.5e-8))+
  theme(axis.text.x = element_text(colour = 'black',size = 12,angle = 90),
        axis.text.y = element_text(colour = 'black'),
        axis.text = element_text(color = 'black',size = 12),
        axis.title = element_text(colour = 'black',size = 14),
        legend.title = element_text(colour = 'black',size = 12),
        legend.text = element_text(colour = 'black',size = 12))
p3

# p4 <- ggplot(d15,aes(x=cell_type,y=`Per base substitution frenquency`,fill=cell_type))+ 
#   geom_bar(stat = 'identity',
#            position = 'dodge',
#            width = 0.8,
#            color='white')+
#   geom_text(aes(label=`Per base substitution frenquency`),size=4,
#             position = position_dodge(width = 0.8),
#             vjust=-0.3)+
#   labs(x=NULL,y=NULL)+
#   coord_cartesian(ylim = c(1.5e-6,1.75e-6))+
#   scale_y_continuous(breaks = c(1.5e-6,1.7e-6))+
#   theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
#         axis.text = element_text(color = 'black',size = 12),
#         legend.title = element_text(colour = 'black',size = 12),
#         legend.text = element_text(colour = 'black',size = 12))
# p4

# ggarrange(p4,p3,heights=c(1/4, 3/4),
#           ncol = 1, nrow = 2,common.legend = TRUE,legend="right",align = "v")

