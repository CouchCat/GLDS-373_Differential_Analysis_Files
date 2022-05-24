#!/bin/bash
#SBATCH --job-name=nlien_GLDS_373_Trim_Eval
#SBATCH --output=nlien_GLDA_373_Trim_Eval.log
#SBATCH --mem=8000
#SBATCH --ntasks=2
#SBATCH --nodes=1

fastqc -o /home/nlien/GLDS-373/01-TG_Preproc/Fastq \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185415_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185415_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185416_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185416_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185417_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185417_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185418_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185418_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185419_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185419_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185420_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185420_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185421_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185421_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185422_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185422_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185423_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185423_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185424_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185424_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185425_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185425_2_val_2.fq.gz \
/home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185426_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185426_2_val_2.fq.gz

multiqc -n trim_multiqc -o /home/nlien/GLDS-373/01-TG_Preproc/Fastq/multiqc_report /home/nlien/GLDS-373/01-TG_Preproc/Fastq