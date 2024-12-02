library(Seurat)
library(tidyverse)
library(SeuratDisk)

path_seurat <- "../data/pbmc_multimodal.h5seurat"
seurat <- LoadH5Seurat(path_seurat)

# List of genes and proteins
adt <- Features(seurat[["ADT"]])
rna <- Features(seurat[["SCT"]])

genes <- adt[adt %in% rna]
gene_map <- data.frame(gene=genes, protein=genes)

# https://www.syngoportal.org/convert
adt_map <- readxl::read_excel("../idmap.xlsx") %>% subset(!is.na(MGI))
adt_map <- adt_map %>% subset(!(symbol %in% genes))
adt_map <- adt_map %>% select(query, symbol) %>%
                        rename("gene"="symbol", "protein"="query")

gene_map <- rbind(gene_map, adt_map)
write.csv(gene_map, "protein_gene_map.csv")
