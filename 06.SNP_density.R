library(vcfR)
library(dplyr)
library(sqldf)
library(CMplot)
library(tidyr)
library(VennDiagram)

vcf_15d <- read.vcfR("d15.vcf")
vcf_3d <- read.vcfR("d3.vcf")

d3 <- vcf_3d@fix
d15 <- vcf_15d@fix

d3 <- as.data.frame(d3)
d15 <- as.data.frame(d15)

d3_loci <- select(d3,CHROM,POS)
snp <- 1:2144
d3_loci[,3] = snp
colnames(d3_loci) = c("CHROM","POS","SNP")
d3_loci <- select(d3_loci,SNP,CHROM,POS)

CMplot(d3_loci,plot.type = "d",
       bin.size = 1e5,
       main="Amel_scRNAseq_Day3_0.1Mb",
       col=c("darkgreen","yellow", "red"),
       file="pdf",memo="d3_scRNA_snp",dpi=300)


d15_loci <- select(d15,CHROM,POS)
snp <- 1:219
d15_loci[,3] = snp
colnames(d15_loci) = c("CHROM","POS","SNP")
d15_loci <- select(d15_loci,SNP,CHROM,POS)

CMplot(d15_loci,plot.type = "d",
       bin.size = 1e5,
       main="Amel_scRNAseq_Day15_0.1Mb",
       col=c("darkgreen","yellow", "red"),
       file="pdf",memo="d15_scRNA_snp",dpi=300)


