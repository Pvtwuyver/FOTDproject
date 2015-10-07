cat Numbersonly.txt | cut -f 2 | sort | uniq -c > totals_per_code.txt
# GEEFT TOTAAL VERKOOP PER POSTCODE

cat totals_per_code.txt | sed 's/[ ]/	/g'  > tabseperatedtotals.txt
# Tab tussen totals en postcode (Herkent R helaas niet)


