#raw_data_folder=~/data/untrimmed_fastq

#fastqc data
#fastqc *fastq.gz

#fastqc *fastq.gz
#mkdir-p ~/results/fastqc_untrimmed
#mv ~/data/untrimmed_fastq/*html ~/results/fastqc_untrimmed/
#mv ~/data/untrimmed_fastq/*zip ~/results/fastqc_untrimmed/
  
  #check summary here
  
  #trim
  
  #bash ~/bash_scripts/trim_script_loop_general.sh ~/data/untrimmed_fastq/
  
#alignment
bash ~/bash_scripts/alignment.sh #note only does one file right now

#calling variants