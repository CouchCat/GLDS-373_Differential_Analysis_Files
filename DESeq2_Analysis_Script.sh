#!/bin/bash
#
#SBATCH --job-name="GLDS-373_deseq2_normcounts_noERCC_DGE_vis_SJSU"
#SBATCH --output=DESeq2_Analysis.out
#SBATCH --mem=40000
#SBATCH --partition=nodes


start=$(date +%s)
echo "start time: $start"
echo $HOSTNAME

echo ""
echo "Path to R used: "
which R

Rscript --save /home/nlien/GLDS-373/04-DESeq2_NormCounts/DESeq2_Analysis.R

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