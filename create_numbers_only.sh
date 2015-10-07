# use raw dataset from originaldataset.txt and select date, postcode, country
# row 1 is date AND time, row 2 is postcode, row 3 is city, row 4 is country

# vervang spatie voor tab en schrijf naar nieuw file
cat originaldataset.txt | sed 's/[ ]/	/g'  > TESTFILE1.txt

# delete time and country column, keep only date and postalcode. Delete letters from postalcode
cat TESTFILE1.txt | cut -f 1,3 | sed -E 's/[A-Z]//g' > Numbersonly.txt

cat Numbersonly.txt | cut -f 2 | sort | uniq -c > totals_per_code.txt
# GEEFT TOTAAL VERKOOP PER POSTCODE

cat totals_per_code.txt | sed 's/[ ]/	/g'  > tabseperatedtotals.txt
# Tab tussen totals en postcode (Herkent R helaas niet)


# count frequentie per postcode per maand (STILL TO BE DONE)

# create file for eacht timeperiod ? (STILL TO BE DONE)
