You can re-create the conda environments that was used for all these analyses with the following command:

```
conda create -n merck R=4.3.2
conda install --file requirements.txt
```

Each of the folders within this repository refers to a different dataset that was used for this correlation analysis.

1. `mD_sandbox` = PBMC cells sorted on celltype markers and then pooled together
2. `pbmc_3k` = PBMC [HBC dataset](https://hbctraining.github.io/scRNA-seq_online/schedule/) used to teach scRNA 
3. `pbmc_multimodal` = CITE-seq + RNA dataset from the [Seurat azimuth celltype atlas](https://app.azimuth.hubmapconsortium.org/app/human-pbmc). There are 3 folders of analyses for pbmc_multimodal dataset:

    - analysis_01 = initial look at the data as we tested best practices for correlations
    - analysis_02 = analysis of correlation outputs after running the [scrna_correlation_workflow](https://github.com/hbc/scrna_coexpression_workflow)
    - analysis_03 = analysis looking at the effect of sequencing depth on the correlation results