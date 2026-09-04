#!/bin/bash
workdir=/home/davidc/em51_scratch/ChisangaD/NK_cells/
mkdir -p $workdir
cd $workdir

# Load necessary modules
module load nextflow
export NXF_SINGULARITY_CACHEDIR="/home/davidc/ws30_scratch2/Chisangad/singularity/"
export APPTAINER_CACHEDIR="/home/davidc/ws30_scratch2/Chisangad/.apptainer/"
samplesheet=/home/davidc/em51/ChisangaD/Short_Lab/NK_cells/data/Samplesheet.csv
profile_config=/home/davidc/ws30_scratch2/Chisangad/BioinfoTools/NFCore_profiles/NFCore_CutnRun.config

nextflow run nf-core/atacseq --input ${samplesheet} -c ${profile_config} \
-profile 'slurm,singularity' \
  --genome GRCh38 \
  --mito_name chrM \
  --macs_gsize 2913022398 \
  --outdir NFCore_ATACseq \
  -resume \
  --narrow_peak true \
  --blacklist /home/davidc/ws30_scratch2/Chisangad/genomes/blacklist/hg38-blacklist.v2.bed \
  -bg true
