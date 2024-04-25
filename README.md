# getBLASTResults.sh
Simple BASH script to retrieve results for a certain query from BLAST output.

# Usage

In the directory with the BLAST results, start the script and paste the query into the terminal that you are looking for. All BLAST files with a *.out will be searched for the query and the results will be merged into one file
with the *_Results.fa suffix. This file can be opened directly with sequence alignment software such as AliView.

Note: The BLAST output must be in tabular output format 6 (https://www.metagenomics.wiki/tools/blast/blastn-output-format-6) with the following options:

OPTIONS="6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore sseq"
