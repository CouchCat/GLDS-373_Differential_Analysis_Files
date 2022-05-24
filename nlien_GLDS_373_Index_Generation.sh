#!/bin/bash
#SBATCH --job-name=nlien_GLDS_373_Index_Generation
#SBATCH --output=nlien_GLDS_373_Index_Generation.log
#SBATCH --ntasks=2
#SBATCH --nodes=1

STAR --runThreadN 15 \
--runMode genomeGenerate \
--limitGenomeGenerateRAM 50000000000 \
--genomeSAindexNbases 14 \
--genomeDir /home/nlien/GLDS-373/STAR_index \
--genomeFastaFiles /home/nlien/GLDS-373/genome_gtf/Danio_rerio.GRCz11.dna_sm.primary_assembly.fa \
--sjdbGTFfile /home/nlien/GLDS-373/genome_gtf/Danio_rerio.GRCz11.105.gtf \
--sjdbOverhang 149

rsem-prepare-reference --gtf /home/nlien/GLDS-373/genome_gtf/Danio_rerio.GRCz11.105.gtf \
/home/nlien/GLDS-373/genome_gtf/Danio_rerio.GRCz11.dna_sm.primary_assembly.fa \
/home/nlien/GLDS-373/RSEM_index/Drer