#!/bin/bash
#SBATCH --job-name=nlien_GLDS_373_Trim
#SBATCH --output=nlien_GLDA_373_trim.log
#SBATCH --ntasks=12
#SBATCH --nodes=1

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185415_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185415_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185416_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185416_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185417_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185417_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185418_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185418_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185419_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185419_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185420_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185420_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185421_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185421_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185422_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185422_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185423_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185423_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185424_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185424_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185425_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185425_2.fastq.gz

trim_galore --gzip --phred33 --illumina --output_dir /home/nlien/GLDS-373/01-TG_Preproc --paired /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185426_1.fastq.gz /home/nlien/GLDS-373/00-RawData/GLDS-373_rna-seq_SRR11185426_2.fastq.gz