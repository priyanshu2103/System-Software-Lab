#! /bin/bash
#install gnumeric
ssconvert grades.xlsx grades.csv
ssconvert marks.xlsx marks.csv
awk 'BEGIN{FS=","}{print $3}' grades.csv | paste -d, marks.csv -> marksheet.csv
cut -d, -f1-3,7- marksheet.csv > marks.csv
ssconvert marks.csv final_marksheet.xlsx