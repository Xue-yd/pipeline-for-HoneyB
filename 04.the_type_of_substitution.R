library(RColorBrewer)


#the type of substitution of d3

d3 <- read.table("04.the_substitution_of_d3.txt",header = T)

d3_all_dis <- d3[order(d3$all_cell_types,decreasing = T),]

par(mfrow=c(2,2))
par(mar=c(1, 1, 1, 1))
par(oma=c(1,1,1,1))
pdf("the type of substitution.pdf")
percent <- round(d3_all_dis[,2]/sum(d3_all_dis[,2])*100, 1)
label <- paste(d3_all_dis[,1], "(", percent, "% )")
pie(d3_all_dis[,2],labels = label,
    main = "Day 3: all cell type ",
    border="white", col=brewer.pal(12, "Set3"))


d3_dis$type<-factor(d3$type,
                    levels=c("intron","upstream","downstream","intergenic",
                             "3UTR","synonymous","5UTR","missense",
                             "Splicing","ncRNA_exon"),ordered = F)

p1 <- ggplot(d3_dis,aes(x='',y=num,fill=type))+
    geom_bar(stat = 'identity',color="white")+
    coord_polar(theta = "y")+
    labs(x="",y="Day3")+
    theme(axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          panel.grid = element_blank())+
    scale_fill_discrete(breaks=d3_dis$type,labels=mylabel)

p1




d3_lateSTids_dis <- d3[order(d3$Late_Spermatid,decreasing = T),]
percent_2 <- round(d3_lateSTids_dis[,3]/sum(d3_lateSTids_dis[,3])*100, 1)
label_2 <- paste(d3_lateSTids_dis[,1], "(", percent_2, "% )")
pie(d3_lateSTids_dis[,3],labels = label_2,
    main = "Day 3: Late Spermatids",
    border="white", col=brewer.pal(12, "Set3"))


#the type of substitution of d15

d15 <- read.table("04.the_substitution_of_d15.txt",header = T)

d15_all_dis <- d15[order(d15$all_cell_types,decreasing = T),]

percent <- round(d15_all_dis[,2]/sum(d15_all_dis[,2])*100, 1)
label <- paste(d15_all_dis[,1], "(", percent, "% )")
pie(d15_all_dis[,2],labels = label,
    main = "Day 15: all cell type",
    border="white", col=brewer.pal(12, "Set3"))


d15_lateSTids_dis <- d15[order(d15$Late_Spermatid,decreasing = T),]
percent_2 <- round(d15_lateSTids_dis[,3]/sum(d15_lateSTids_dis[,3])*100, 1)
label_2 <- paste(d15_lateSTids_dis[,1], "(", percent_2, "% )")
pie(d15_lateSTids_dis[,3],labels = label_2,
    main = "Day 15: Late Spermatids",
    border="white", col=brewer.pal(12, "Set3"))







