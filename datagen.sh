#!/bin/bash

# Output CSV file
OUTFILE="students.txt"

# Write header row
echo "id,name,score" > $OUTFILE

# Generate 20 rows of sample data
for i in $(seq 1 20)
do
  NAME="Student$i"
  SCORE=$((RANDOM % 100))   # Random score between 0–99
  echo "$i,$NAME,$SCORE" >> $OUTFILE
done

echo "text file generated: $OUTFILE"
