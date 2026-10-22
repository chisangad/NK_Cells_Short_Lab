# ATAC-seq analysis of NK cells in Obese v Healthy individuals


## Project Overview
This repository contains the analysis for 8 bulk ATAC-seq samples prepared from sorted human Natural Killer (NK) cells. The samples were sequenced at the Hudson Institute in August 2026. 

**Aim:** The primary objective of this analysis is to identify differentially accessible regions (DARs) between healthy controls and obese patients.

## Dataset (GEO accession:[GSE349935](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE349935))
*   **Total Samples:** 8 bulk ATAC-seq samples
*   **Condition 1 (Healthy Controls):** Samples 1, 2, 4
*   **Condition 2 (Obese Patients):** Samples 6, 7, 8, 9, 10
*   **Organism:** Human (aligned to the **GRCh38** reference genome)

## Pipeline and Pre-processing
Raw data processing was executed on the M3-Massive HPC cluster using the [nf-core/atacseq v2.1.2](https://nf-co.re/atacseq/2.1.2) pipeline. The workflow encompasses:
1.  **Quality Control:** FastQC and MultiQC to aggregate reports.
2.  **Adaptor Trimming:** Removing standard adaptor sequences.
3.  **Alignment:** Conducted using `bwa` against the GRCh38 genome.
4.  **Initial Peak Calling:** Calling narrow peaks per the nf-core pipeline standards.

## Quality Control Summary
Initial QC checks revealed the following key insights:
*   **Mapping Efficiency:** Overall mapping efficiency was excellent, with most samples aligning at a rate of over 90%.
*   **Duplication Rates:** The proportion of non-optical duplicates (PCR duplicates) was high in 5 out of the 8 samples, which suggests the libraries may have been slightly over-amplified during the PCR step. Optical duplicates remained low across all samples, indicating no significant technical artifacts from the sequencer itself.

## Repository Structure
This repository was built using the `workflowr` R package to ensure reproducibility.
*   `analysis/`: Contains all R Markdown (`.Rmd`) files detailing the steps of the analysis (e.g., preprocessing, peak calling, differential analysis).
*   `docs/`: Contains the rendered HTML pages to view the analysis on the web.
*   `code/`: Custom R scripts and global functions used throughout the project.
*   `output/`: Generated summary tables and MultiQC reports.

## Viewing the Analysis
The compiled reports and visual QC checks can be viewed at: [Analysis results](https://chisangad.github.io/NK_Cells_Short_Lab/)
