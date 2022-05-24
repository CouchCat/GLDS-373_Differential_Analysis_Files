#!/bin/bash
#SBATCH --job-name=nlien_GLDS_373_STAR_Alignment
#SBATCH --output=nlien_GLDS_373_STAR_Alignment_15.log
#SBATCH --mem=60000
#SBATCH --ntasks=4
#SBATCH --partition=nodes

start=$(date +%s)
echo "start time: $start"

echo "STAR version: "
STAR --version

call="STAR --twopassMode Basic \
	--limitBAMsortRAM 55000000000 \
	--genomeDir /home/nlien/GLDS-373/STAR_index \
	--outSAMunmapped Within \
	--outFilterType BySJout \
	--outSAMattributes NH HI AS NM MD MC \
	--outFilterMultimapNmax 20 \
	--outFilterMismatchNmax 999 \
	--outFilterMismatchNoverReadLmax 0.04 \
	--alignIntronMin 20 \
	--alignIntronMax 1000000 \
	--alignMatesGapMax 1000000 \
	--alignSJoverhangMin 8 \
	--alignSJDBoverhangMin 1 \
	--sjdbScore 1 \
	--readFilesCommand zcat \
	--runThreadN 15 \
	--outSAMtype BAM SortedByCoordinate \
	--quantMode TranscriptomeSAM \
	--outSAMheaderHD @HD VN:1.4 SO:coordinate \
	--outFileNamePrefix /home/nlien/GLDS-373/02-STAR_Alignment/Samp_15 \
	--readFilesIn /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185415_1_val_1.fq.gz /home/nlien/GLDS-373/01-TG_Preproc/GLDS-373_rna-seq_SRR11185415_2_val_2.fq.gz"

echo $call
eval $call

echo ""
end=$(date +%s)
echo "end time: $end"
runtime_s=$(echo $(( end - start )))
echo "total run time(s): $runtime_s"
sec_per_min=60
sec_per_hr=3600
runtime_m=$(echo "scale=2; $runtime_s / $sec_per_min;" | bc)
echo "total run time(m): $runtime_m"
runtime_h=$(echo "scale=2; $runtime_s / $sec_per_hr;" | bc)
echo "total run time(h): $runtime_h"