cat Numbersonly.txt | cut -f 1,2 | sed -E 's/[0-9]+-//' | cut -f 1 | sort | uniq -c > totals_per_Month.txt

