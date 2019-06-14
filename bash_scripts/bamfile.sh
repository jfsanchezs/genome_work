#!/usr/bin/env bash
# variant calling



#Sam to BAM
for file in ~/results/alignment1/*.sam
do
#echo ${file}
samtools view -S -b ${file} > ~/results/alignment1/$(basename ${file} .sam).bam 
samtools sort -o ~/results/alignment1/$(basename ${file} .sam).sorted.bam ~/results/alignment1/$(basename ${file} .sam).bam 

done



#bcftools call --ploidy 1 -m -v -o ~results/SRR2584863_variants.bcf ~/results/SRR2584863.bcf
#vcfutils.pl varFilter ~/results/SRR258463_variants.bcf > results/SRR258463_final_variants.vcf