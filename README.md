You can re-create the conda environments that was used for all these analyses with the following command:

conda create -n merck R=4.3.2
conda install --file requirements.txt


Here is the basic folder structure of this github repository:

├── mD_sandbox
│   └── analysis
├── pbmc_3k
│   └── analysis
├── pbmc_multimodal
│   ├── analysis
│   ├── analysis_02_scrna_workflow_output
│   └── analysis_03_seq_depth
├── pbmc_seurat
    └──analysis

Each of these folders refers to a different dataset:

1. `mD_sandbox` = PBMC cells sorted on celltype markers and then pooled together
2. `pbmc_3k` = PBMC [HBC dataset](https://hbctraining.github.io/scRNA-seq_online/schedule/) used to teach scRNA 
3. `pbmc_multimodal` = CITE-seq + RNA dataset from the [Seurat azimuth celltype atlas](https://app.azimuth.hubmapconsortium.org/app/human-pbmc). There are 3 folders of analyses for pbmc_multimodal dataset:

- analysis_01 = initial look at the data as we tested best practices for correlations
- analysis_02 = analysis of correlation outputs after running the [scrna_correlation_workflow](https://github.com/hbc/scrna_coexpression_workflow)
- analysis_03 = analysis looking at the effect of sequencing depth on the correlation results