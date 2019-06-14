for file in ~/results/alignment1/*.sorted.bam
do
#echo ${file}
#variant calling
bcftools mpileup -O b -o $(basename ${file} .sorted.bam).bcf -f ~/data/ref_genome/GCA_000017985.1_ASM1798v1_genomic.fna ${file}
bcftools call --ploidy 1 -m -v -o $(basename ${file} .sorted.bam)_variants.bcf $(basename ${file} .sorted.bam).bcf
vcfutils.pl varFilter $(basename ${file} .sorted.bam)_variants.bcf > $(basename ${file} .sorted.bam)_final_variants.vcf
done