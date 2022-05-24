#!/bin/bash
#SBATCH --job-name=GLDS_373_RSEM_Count
#SBATCH --output=GLDS_373_RSEM_Count_%a.log
#SBATCH --mem=40000
#SBATCH --ntasks=4
#SBATCH --partition=nodes
#SBATCH --array=15-26

start=$(date +%s)
echo "start time: $start"

echo "RSEM version: "
rsem-calculate-expression --version

rsem-calculate-expression --num-threads 6 \
--alignments \
--bam \
--paired-end \
--seed 12345 \
--estimate-rspd \
--no-bam-output \
--strandedness reverse \
"/home/nlien/GLDS-373/02-STAR_Alignment/Samp_"$SLURM_ARRAY_TASK_ID"Aligned.toTranscriptome.out.bam" \
/home/nlien/GLDS-373/RSEM_index/Drer \
"/home/nlien/GLDS-373/03-RSEM_Counts/Samp_"$SLURM_ARRAY_TASK_ID"_"

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