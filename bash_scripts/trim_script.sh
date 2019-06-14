#!usr/bin/env bash
#Script to trim fastq 1st fastq pair  w  trimmomatic
for R1 in *_R1_001.fastq
do
R2=${R1%%_R1_001.fastq}"_R2_001.fastq"
srr=$(basename $R1 _R1_001.fastq)

#echo ${R1}
#echo ${R2}
#echo ${srr}

trimmomatic PE \
$R1 $R2 \
~/genome_work/data/trimmed/${srr}_R1_001.trim.fastq  ~/genome_work/data/trimmed/${srr}_R1_001.untrim.fastq \
~/genome_work/data/trimmed/${srr}_R2_001.trim.fastq  ~/genome_work/data/trimmed/${srr}_R2_001.untrim.fastq \
SLIDINGWINDOW:4:20 MINLEN:25 ILLUMINACLIP:NexteraPE-PE.fa:2:40:15 
#ILLUMINACLIP:~/.miniconda3/pkgs/trimmomatic-0.38-0/share/trimmomatic-0.38-0/adapters/NexteraPE-PE.fa 

done