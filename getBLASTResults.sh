#!/usr/bin/bash

echo "Target:"

read target

for file in *.out;do
	#print everything after last "_"
	GENOMEex="${file##*_}"
	# print everything before "."
	GENOME="${GENOMEex%%.*}"
	#echo $GENOME
	grep $target $file |\
	awk '{print ">'$GENOME'_" $2; print $13}' |\
	awk '/>/{ $0=$0 "_" ++seen [$0]}1' >> "$target"_Results.fa
done;
